package com.jeff.po;

import com.fasterxml.jackson.annotation.JsonFormat;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Table(name = "op_log")
public class OpLog {
    @Id
    private String id;

    private String username;

    @Column(name = "user_id")
    private String userId;

    @Column(name = "op_type")
    private String opType;

    @Column(name = "op_path")
    private String opPath;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @Column(name = "op_time")
    private Date opTime;

    @Column(name = "op_result")
    private String opResult;

    /**
     * @return id
     */
    public String getId() {
        return id;
    }

    /**
     * @param id
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * @return username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return user_id
     */
    public String getUserId() {
        return userId;
    }

    /**
     * @param userId
     */
    public void setUserId(String userId) {
        this.userId = userId;
    }

    /**
     * @return op_type
     */
    public String getOpType() {
        return opType;
    }

    /**
     * @param opType
     */
    public void setOpType(String opType) {
        this.opType = opType;
    }

    /**
     * @return op_path
     */
    public String getOpPath() {
        return opPath;
    }

    /**
     * @param opPath
     */
    public void setOpPath(String opPath) {
        this.opPath = opPath;
    }

    /**
     * @return op_time
     */
    public Date getOpTime() {
        return opTime;
    }

    /**
     * @param opTime
     */
    public void setOpTime(Date opTime) {
        this.opTime = opTime;
    }

    /**
     * @return op_result
     */
    public String getOpResult() {
        return opResult;
    }

    /**
     * @param opResult
     */
    public void setOpResult(String opResult) {
        this.opResult = opResult;
    }
}