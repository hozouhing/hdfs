package com.jeff.controller;

import com.jeff.common.ResultMap;
import com.jeff.service.HdfsService;
import com.jeff.util.OpLoging;
import com.jeff.vo.FileVo;
import org.apache.hadoop.fs.FSDataInputStream;
import org.apache.hadoop.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

/**
 * Created by he on 2017/4/27.
 */
@Controller
@RequestMapping("/hdfs")
public class HdfsController {

    @Autowired
    private HdfsService hdfsService;

    @OpLoging(value = "/list", type = "查询文件列表")
    @RequestMapping("/list")
    @ResponseBody
    public ResultMap list(String path) {
        ResultMap resultMap = new ResultMap();
        try {
            List<FileVo> fileVos = hdfsService.list(path);
            resultMap.success().data(fileVos);
        } catch (Exception e) {
            e.printStackTrace();
            resultMap.fail().msg("报异常了！");
        }
        return resultMap;
    }

    @OpLoging(value = "/mkdir", type = "新建文件夹")
    @RequestMapping("/mkdir")
    @ResponseBody
    public ResultMap mkdir(String path) {
        ResultMap resultMap = new ResultMap();
        try {
            boolean result = hdfsService.mkdir(path);
            if (result) {
                resultMap.success().msg("新建文件夹成功！");
            } else {
                resultMap.fail().msg("新建文件夹失败！");
            }
        } catch (Exception e) {
            e.printStackTrace();
            resultMap.fail().msg("报异常了！");
        }
        return resultMap;
    }

    @OpLoging(value = "/rm", type = "删除文件")
    @RequestMapping("/delete")
    @ResponseBody
    public ResultMap delete(String path) {
        ResultMap resultMap = new ResultMap();
        try {
            boolean result = hdfsService.delete(path);
            if (result) {
                resultMap.success().msg("删除成功！");
            } else {
                resultMap.fail().msg("删除失败！");
            }
        } catch (Exception e) {
            e.printStackTrace();
            resultMap.fail().msg("报异常了！");
        }
        return resultMap;
    }

    @OpLoging(value = "/put", type = "上传文件")
    @RequestMapping(value = "/upload")
    @ResponseBody
    public ResultMap upload(@RequestParam("file") MultipartFile file, String path) {
        ResultMap resultMap = new ResultMap();
        try {
            System.out.println();
            String fileName = file.getOriginalFilename();
            path = path + "/" + fileName;
            boolean result = hdfsService.upload(file.getInputStream(), path);
            if (result) {
                resultMap.success().msg("上传成功！");
            } else {
                resultMap.fail().msg("上传失败！");
            }
        } catch (Exception e) {
            resultMap.fail().msg("报异常了！");
        }
        return resultMap;
    }

    @OpLoging(value = "/get", type = "下载文件")
    @RequestMapping("/download")
    public void download(String path, HttpServletResponse response) throws IOException {
        path = new String(path.getBytes("ISO-8859-1"), "UTF-8");
        FSDataInputStream in = hdfsService.download(path);
        String fileName = path.substring(path.lastIndexOf("/") + 1);
        response.setContentType("application/force-download");// 设置强制下载不打开
        response.addHeader("Content-Disposition", "attachment;fileName=" + fileName);// 设置文件名
        OutputStream out = response.getOutputStream();
        IOUtils.copyBytes(in, out, 1024, true);
        out.flush();
        out.close();
    }

    @OpLoging(value = "/get", type = "预览图片文件")
    @RequestMapping("/previewImage")
    public void previewImage(String path, HttpServletResponse response) throws IOException {
        path = new String(path.getBytes("ISO-8859-1"), "UTF-8");
        FSDataInputStream in = hdfsService.download(path);
        response.setContentType("image/png");
        OutputStream out = response.getOutputStream();
        IOUtils.copyBytes(in, out, 1024, true);
        out.flush();
        out.close();
    }

    @OpLoging(value = "/get", type = "预览文本文件")
    @RequestMapping("/previewText")
    public void previewText(String path, HttpServletResponse response) throws IOException {
        FSDataInputStream in = hdfsService.download(path);
        response.setContentType("type=text/html;charset=UTF-8");
        OutputStream out = response.getOutputStream();
        IOUtils.copyBytes(in, out, 1024, true);
        out.flush();
        out.close();
    }

    @OpLoging(value = "/get", type = "预览PDF文件")
    @RequestMapping("/previewPdf")
    public void previewPdf(String path, HttpServletResponse response) throws IOException {
        FSDataInputStream in = hdfsService.download(path);
        response.setContentType("application/pdf");
        OutputStream out = response.getOutputStream();
        IOUtils.copyBytes(in, out, 1024, true);
        out.flush();
        out.close();
    }

}
