package com.jeff.controller;

import com.jeff.common.ResultMap;
import com.jeff.po.User;
import com.jeff.qo.PageQo;
import com.jeff.qo.UserQo;
import com.jeff.service.HdfsService;
import com.jeff.service.OpLogService;
import com.jeff.service.UserService;
import com.jeff.vo.PageVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.UUID;

/**
 * Created by he on 2017/4/27.
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService  userService;

    @Autowired
    private HdfsService  hdfsService;

    @Autowired
    private OpLogService opLogService;

    @RequestMapping("/reg")
    @ResponseBody
    public ResultMap reg(String username, String password, String nickname) {
        ResultMap resultMap = new ResultMap();
        try {
            User user = new User();
            user.setUsername(username);
            if (userService.select(user).size() > 0) {
                resultMap.fail().msg("用户名已存在！");
            } else {
                user = new User();
                user.setUsername(username);
                user.setNickname(nickname);
                user.setPassword(password);
                user.setId(UUID.randomUUID().toString());
                user.setRegDate(new Date());
                user.setStatus("正常");
                userService.insert(user);
                hdfsService.mkdir("/" + user.getUsername());
                resultMap.success().msg("恭喜，注册成功！");
            }
        } catch (Exception e) {
            e.printStackTrace();
            resultMap.fail().msg("报异常了！");
        }
        return resultMap;
    }

    @RequestMapping("/login")
    @ResponseBody
    public ResultMap login(User user, HttpSession session) {
        ResultMap resultMap = new ResultMap();
        try {
            user = userService.selectOne(user);
            if (user == null) {
                resultMap.fail().msg("用户名或密码错误！");
            } else {
                user.setLastLoginDate(new Date());
                userService.updateByPrimaryKeySelective(user);
                session.setAttribute("user", user);
                //session.setAttribute("curPath", "/" + user.getUsername());
                resultMap.success().data(user).msg("登录成功！");
            }
        } catch (Exception e) {
            e.printStackTrace();
            resultMap.fail().msg("报异常了！");
        }
        return resultMap;
    }

    @RequestMapping("/status")
    @ResponseBody
    public ResultMap status(HttpSession session) {
        ResultMap resultMap = new ResultMap();
        try {
            User user = (User) session.getAttribute("user");
            if (user == null) {
                resultMap.fail();
            } else {
                resultMap.success().data(user);
            }
        } catch (Exception e) {
            e.printStackTrace();
            resultMap.fail().msg("报异常了！");
        }
        return resultMap;
    }

    @RequestMapping("/page")
    @ResponseBody
    public ResultMap reg(UserQo userQo, PageQo pageQo) {
        ResultMap resultMap = new ResultMap();
        try {
            PageVo pageVo = new PageVo(userService.selectByPage(userQo, pageQo));
            resultMap.success().msg("查询成功！").data(pageVo);
        } catch (Exception e) {
            e.printStackTrace();
            resultMap.fail().msg("报异常了！");
        }
        return resultMap;
    }

}
