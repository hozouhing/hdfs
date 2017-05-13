package com.jeff.controller;

import com.jeff.common.ResultMap;
import com.jeff.qo.OpLogQo;
import com.jeff.qo.PageQo;
import com.jeff.service.OpLogService;
import com.jeff.vo.PageVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by he on 2017/4/27.
 */
@Controller
@RequestMapping("/oplog")
public class OpLogController {

    @Autowired
    private OpLogService opLogService;

    @RequestMapping("/page")
    @ResponseBody
    public ResultMap reg(OpLogQo opLogQo, PageQo pageQo) {
        ResultMap resultMap = new ResultMap();
        try {
            PageVo pageVo = new PageVo(opLogService.selectByPage(opLogQo, pageQo));
            resultMap.success().data(pageVo).msg("查询成功！");
        } catch (Exception e) {
            e.printStackTrace();
            resultMap.fail().msg("报异常了！");
        }
        return resultMap;
    }

}
