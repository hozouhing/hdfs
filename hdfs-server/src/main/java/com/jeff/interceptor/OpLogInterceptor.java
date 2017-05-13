package com.jeff.interceptor;

import com.jeff.po.OpLog;
import com.jeff.po.User;
import com.jeff.service.OpLogService;
import com.jeff.util.OpLoging;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.UUID;

/**
 * Created by he on 2017/5/1.
 */
public class OpLogInterceptor implements HandlerInterceptor {

    @Autowired
    private OpLogService opLogService;

    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest,
                             HttpServletResponse httpServletResponse, Object o) throws Exception {
        String path = httpServletRequest.getParameter("path");
        //System.out.println(path);
        HttpSession session = httpServletRequest.getSession();
        if (session.getAttribute("user") == null) {
            User user = new User();
            user.setId(UUID.randomUUID().toString());
            user.setUsername("hozouhing");
            user.setNickname("hozouhing");
            user.setPassword("hozouhing");
            user.setStatus("正常");
            //user.setRole("普通用户");
            user.setRole("管理员");
            user.setRegDate(new Date());
            user.setLastLoginDate(new Date());
            session.setAttribute("user", user);
        }
        User user = (User) session.getAttribute("user");
        if (user == null) {
            return false;
        }
        if (user.getRole().equals("普通用户") && !path.startsWith("/" + user.getUsername())) {
            return false;
        }
        HandlerMethod targetMethod = (HandlerMethod) o;
        OpLoging opLoging = targetMethod.getMethodAnnotation(OpLoging.class);
        String value = opLoging.value();
        String type = opLoging.type();
        OpLog opLog = new OpLog();
        opLog.setId(UUID.randomUUID().toString());
        opLog.setOpTime(new Date());
        opLog.setOpPath(path);
        opLog.setOpType(type);
        opLog.setUsername(user.getUsername());
        opLog.setUserId(user.getId());
        opLog.setOpResult("成功");
        opLogService.insert(opLog);
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest,
                           HttpServletResponse httpServletResponse, Object o,
                           ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest,
                                HttpServletResponse httpServletResponse, Object o,
                                Exception e) throws Exception {

    }
}
