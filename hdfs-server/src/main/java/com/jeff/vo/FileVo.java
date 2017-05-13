package com.jeff.vo;

import org.apache.hadoop.fs.FileStatus;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.fs.permission.FsPermission;

import java.io.Serializable;

/**
 * Created by he on 2017/4/27.
 */
public class FileVo implements Serializable {

    private Path         path;
    private long         length;
    private boolean      isdir;
    private short        block_replication;
    private long         blocksize;
    private long         modification_time;
    private long         access_time;
    private FsPermission permission;
    private String       owner;
    private String       group;
    //private Path         symlink;

    private String       fileType;

    public FileVo() {

    }

    public FileVo(FileStatus fileStatus) {
        this.path = fileStatus.getPath();
        this.length = fileStatus.getLen();
        this.isdir = fileStatus.isDirectory();
        this.block_replication = fileStatus.getReplication();
        this.blocksize = fileStatus.getBlockSize();
        this.modification_time = fileStatus.getModificationTime();
        this.access_time = fileStatus.getAccessTime();
        this.permission = fileStatus.getPermission();
        this.owner = fileStatus.getOwner();
        this.group = fileStatus.getGroup();
        //this.symlink = fileStatus.getSymlink();
        if (!isdir) {
            String fileName = this.path.getName();
            int index = fileName.lastIndexOf(".");
            this.fileType = fileName.substring(index+1);
            if(fileType.equals("xml")){
                fileType = "html";
            }
        }
    }

    public Path getPath() {
        return path;
    }

    public void setPath(Path path) {
        this.path = path;
    }

    public long getLength() {
        return length;
    }

    public void setLength(long length) {
        this.length = length;
    }

    public boolean isIsdir() {
        return isdir;
    }

    public void setIsdir(boolean isdir) {
        this.isdir = isdir;
    }

    public short getBlock_replication() {
        return block_replication;
    }

    public void setBlock_replication(short block_replication) {
        this.block_replication = block_replication;
    }

    public long getBlocksize() {
        return blocksize;
    }

    public void setBlocksize(long blocksize) {
        this.blocksize = blocksize;
    }

    public long getModification_time() {
        return modification_time;
    }

    public void setModification_time(long modification_time) {
        this.modification_time = modification_time;
    }

    public long getAccess_time() {
        return access_time;
    }

    public void setAccess_time(long access_time) {
        this.access_time = access_time;
    }

    public FsPermission getPermission() {
        return permission;
    }

    public void setPermission(FsPermission permission) {
        this.permission = permission;
    }

    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }

    public String getGroup() {
        return group;
    }

    public void setGroup(String group) {
        this.group = group;
    }

    public String getFileType() {
        return fileType;
    }

    public void setFileType(String fileType) {
        this.fileType = fileType;
    }
}
