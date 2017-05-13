package com.jeff.service.impl;

import com.jeff.mapper.UserMapper;
import com.jeff.po.User;
import com.jeff.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by he on 2017/4/27.
 */
@Service("com.jeff.service.UserService")
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    public void setBaseMapper() {
        super.setBaseMapper(this.userMapper);
    }

}
