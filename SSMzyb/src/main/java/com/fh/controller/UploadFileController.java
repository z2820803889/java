package com.fh.controller;


import com.fh.util.FtpUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller()
@RequestMapping("/upload")
public class UploadFileController {

    @RequestMapping("/uploadFile")
    @ResponseBody
    public Map uploadFile(MultipartFile file, HttpServletRequest request){
        Map<String,Object> map = new HashMap<String,Object>();
        if(file != null){
            String fileName = file.getOriginalFilename();
            String siffix = fileName.substring(fileName.lastIndexOf("."));
            String newFileName = UUID.randomUUID().toString() + siffix;
            String dirPath= request.getServletContext().getRealPath("/headPhoto/");
            System.out.println(dirPath);
            File file2 = new File(dirPath);
            if(!file2.exists()){
                file2.mkdirs();
            };
            try {
                file.transferTo(new File(dirPath + "/" + newFileName));
                map.put("filePath","/image/" + newFileName);
            } catch (IOException e) {
                e.printStackTrace();
            }

        };

        return map;
    };


    @RequestMapping("/uploadExcel")
    @ResponseBody
    public String uploadExcel(MultipartFile file) throws Exception {
        InputStream in =file.getInputStream();
     /*   List<List<Object>> listob = new ExcelUtil().getBankListByExcel(in,file.getOriginalFilename());*/
        in.close();
        return "11";
    };

    @RequestMapping("/downLoad")
    public void downLoad(HttpServletRequest request, HttpServletResponse response){
        String realPath = request.getServletContext().getRealPath("/headPhoto");
        new FtpUtil().downloadFile("","61361378.gif",realPath);
        File file = new File(realPath + "/"+ "61361378.gif");
        FtpUtil.downLoad2("8888.jpg",file,request,response);
        file.delete();
    };

    @RequestMapping("/nginxUploadFile")
    @ResponseBody
    public Map nginxUploadFile(MultipartFile file,HttpServletRequest request) throws IOException {
        Map<String,Object> result = new HashMap<String,Object>();
        if(file != null){
            String newFileName = new SimpleDateFormat("yyyyMMddHHssmm").format(new Date()) + file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
            boolean b = new FtpUtil().uploadFile("", newFileName, file.getInputStream());
            if(b){
                result.put("status",newFileName);
            }else{
                result.put("status","上传失败!");
            };

        };


        return result;
    };
}
