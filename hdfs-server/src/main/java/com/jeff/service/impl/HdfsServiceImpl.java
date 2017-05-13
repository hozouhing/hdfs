package com.jeff.service.impl;

import com.jeff.service.HdfsService;
import com.jeff.vo.FileVo;
import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FSDataInputStream;
import org.apache.hadoop.fs.FileStatus;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.io.IOUtils;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by he on 2017/4/27.
 */
@Service("com.jeff.service.HdfsService")
public class HdfsServiceImpl implements HdfsService {

    private Configuration configuration;

    public Configuration getConfiguration() {
        if (this.configuration == null) {
            this.configuration = new Configuration();
            configuration.set("fs.defaultFS", "hdfs://ns1");//指定hdfs的nameservice为ns1,是NameNode的URI
            configuration.set("dfs.nameservices", "ns1");//指定hdfs的nameservice为ns1
            configuration.set("dfs.ha.namenodes.ns1", "nn1,nn2");//ns1下面有两个NameNode，分别是nn1，nn2
            configuration.set("dfs.namenode.rpc-address.ns1.nn1", "172.17.10.1:9000");//nn1的RPC通信地址
            configuration.set("dfs.namenode.rpc-address.ns1.nn2", "172.17.10.2:9000");//nn2的RPC通信地址
            configuration.set("dfs.client.failover.proxy.provider.ns1",
                "org.apache.hadoop.hdfs.server.namenode.ha.ConfiguredFailoverProxyProvider");//配置失败自动切换实现方式
            configuration.set("dfs.socket.timeout", "180000");
        }
        return this.configuration;
    }

    public FileSystem getFileSystem() {
        try {
            FileSystem fs = FileSystem.get(this.getConfiguration());
            return fs;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean mkdir(String path) {
        FileSystem fs = this.getFileSystem();
        try {
            this.getFileSystem().mkdirs(new Path(path));
            fs.close();
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    public boolean upload(InputStream in, String path) {
        FileSystem fs = this.getFileSystem();
        Path p = new Path(path);
        try {
            if (fs.exists(p)) {
                return false;
            }
            OutputStream out = fs.create(p);
            IOUtils.copyBytes(in, out, 4096, true);//4096是4k字节
            in.close();
            fs.close();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    public boolean delete(String path) {
        FileSystem fs = this.getFileSystem();
        try {
            fs.delete(new Path(path), true);
            fs.close();
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    public FSDataInputStream download(String path) {
        FileSystem fs = this.getFileSystem();
        try {
            FSDataInputStream in = fs.open(new Path(path));
            return in;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public List<FileVo> list(String path) {
        try {
            FileSystem fs = this.getFileSystem();
            List<FileVo> fileVos = new ArrayList<FileVo>();
            if (!fs.exists(new Path(path))) {
                this.mkdir(path);
                return null;
            }
            FileStatus[] fileStatus = fs.listStatus(new Path(path));
            for (FileStatus status : fileStatus) {
                fileVos.add(new FileVo(status));
            }
            fs.close();
            return fileVos;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }

    }
}
