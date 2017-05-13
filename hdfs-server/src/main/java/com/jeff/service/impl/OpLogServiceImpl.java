package com.jeff.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jeff.mapper.OpLogMapper;
import com.jeff.po.OpLog;
import com.jeff.service.OpLogService;

/**
 * Created by he on 2017/4/27.
 */
@Service("com.jeff.service.OpLogService")
public class OpLogServiceImpl extends BaseServiceImpl<OpLog> implements OpLogService {

    @Autowired
    private OpLogMapper opLogMapper;

    @Autowired
    public void setBaseMapper() {
        super.setBaseMapper(this.opLogMapper);
    }

}
