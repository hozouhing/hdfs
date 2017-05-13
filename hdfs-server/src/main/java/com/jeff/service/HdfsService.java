package com.jeff.service;

import com.jeff.vo.FileVo;
import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FSDataInputStream;
import org.apache.hadoop.fs.FileSystem;

import java.io.InputStream;
import java.util.List;

/**
 * Created by he on 2017/4/27.
 */
public interface HdfsService {

    Configuration getConfiguration();

    FileSystem getFileSystem();

    boolean mkdir(String path);

    boolean upload(InputStream in,String path);

    boolean delete(String path);

    FSDataInputStream download(String path);

    List<FileVo> list(String path);
}
