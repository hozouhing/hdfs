package com.jeff.mapper.test;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FSDataOutputStream;
import org.apache.hadoop.fs.FileStatus;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.io.IOUtils;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;

/**
 * Created by he on 2017/4/8.
 */
public class HdfsTester {
    public static void main(String[] args) throws Exception {

    }

    @Test
    public void test1() {
        try {
            String uri = "hdfs://192.168.80.11:9001/";
            Configuration config = new Configuration();
            config.set("fs.defaultFS", uri);
            FileSystem fs = FileSystem.get(config);

            // 列出hdfs上/目录下的所有文件和目录
            FileStatus[] statuses = fs.listStatus(new Path("/"));
            for (FileStatus status : statuses) {
                System.out.println(status);
            }

            // 在hdfs的/目录下创建一个文件，并写入一行文本
            FSDataOutputStream os = fs.create(new Path("/test2.log"));
            os.write("Hello World!".getBytes());
            os.flush();
            os.close();

            // 显示在hdfs的/下指定文件的内容
            InputStream is = fs.open(new Path("/test2.log"));
            IOUtils.copyBytes(is, System.out, 1024, true);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    public void test2() {
        Configuration conf = new Configuration();
        conf.set("fs.defaultFS", "hdfs://ns1");//指定hdfs的nameservice为ns1,是NameNode的URI
        conf.set("dfs.nameservices", "ns1");//指定hdfs的nameservice为ns1
        conf.set("dfs.ha.namenodes.ns1", "nn1,nn2");//ns1下面有两个NameNode，分别是nn1，nn2
        conf.set("dfs.namenode.rpc-address.ns1.nn1", "172.17.10.1:9000");//nn1的RPC通信地址
        conf.set("dfs.namenode.rpc-address.ns1.nn2", "172.17.10.2:9000");//nn2的RPC通信地址
        conf.set("dfs.client.failover.proxy.provider.ns1",
            "org.apache.hadoop.hdfs.server.namenode.ha.ConfiguredFailoverProxyProvider");//配置失败自动切换实现方式
        conf.set("dfs.socket.timeout", "180000");
        FileSystem fs = null;
        try {
            fs = FileSystem.get(conf);//获取文件对象
            FileStatus[] list = fs.listStatus(new Path("/hozouhing"));//文件状态集合
            for (FileStatus file : list) {
                System.out.println(file.getPath().getName());//打印目录名
            }

            FSDataOutputStream os = fs.create(new Path("/test1.log"));
            os.write("Hello World!".getBytes());
            os.flush();
            os.close();

            // 显示在hdfs的/下指定文件的内容
            InputStream is = fs.open(new Path("/test1.log"));
            IOUtils.copyBytes(is, System.out, 1024, true);
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (fs != null) {
                    fs.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
