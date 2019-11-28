package com.fh.controller;

import com.fh.model.Photo;
import com.fh.model.Photograph;
import com.fh.service.IPhotoGraphService;
import com.fh.service.IPhotoService;
import com.fh.util.FtpUtil;
import com.fh.util.ZipUtil;
import org.apache.commons.lang.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;


@Controller
@RequestMapping("/photoGraph")
public class PhotoGraphController {
    @Autowired
    private IPhotoService photoService;
    @Autowired
    private IPhotoGraphService photoGraphService;
    @Autowired
    private FtpUtil ftpUtil;


    @RequestMapping("tophotoGraphList")
    public String tophotoGraphList(Photograph photograph, Model model, HttpServletRequest request){
        Photo photo = new Photo();
        photo.setId(photograph.getPhotoId());
        Photo queryphoto = photoService.queryPhotoListById(photo);
        HttpSession session =request.getSession();
        if(queryphoto.getPassword() == null || queryphoto.equals("")){
            model.addAttribute("photoId",photograph.getPhotoId());
            return "photograph/photographList";

        }else if(queryphoto.getPassword().equals(photograph.getPhotoPassword())){
            session.setAttribute(queryphoto.getId()+"",queryphoto.getPassword());
            model.addAttribute("photoId",photograph.getPhotoId());
            return "photograph/photographList";

        };

        return "photo/photoList";
    };


    @RequestMapping("queryphotoGraphListByPhotoId")
    public String queryphotoGraphListByPhotoId(Photograph photograph,Model model,HttpServletRequest request){
        String password = (String)request.getSession().getAttribute(photograph.getPhotoId()+ "");
        Photo photo = new Photo();
        photo.setId(photograph.getPhotoId());
        Photo queryphoto = photoService.queryPhotoListById(photo);
        if(queryphoto.getPassword() == null || queryphoto.getPassword().equals("")){
            photograph = photoGraphService.queryphotoGraphListByPhotoId(photograph);
            model.addAttribute("pageBean",photograph);
            return "photograph/photographTable";
        }else if(queryphoto.getPassword().equals(password)){
            photograph = photoGraphService.queryphotoGraphListByPhotoId(photograph);
            model.addAttribute("pageBean",photograph);
            return "photograph/photographTable";
        };

        return "error/error";
    };

    @RequestMapping("uploadImg")
    @ResponseBody
    public Map uploadImg(MultipartFile file,Photograph photograph) throws IOException {
        Map map = new HashMap();
        if(file != null){
            String siffix = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
            String newFileName = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) + RandomStringUtils.randomNumeric(1) + siffix;
            ftpUtil.uploadFile("",newFileName,file.getInputStream());
            photograph.setUrl(newFileName);
            photograph.setFileName(file.getOriginalFilename());
            photoGraphService.addPhotoGraph(photograph);
            map.put("status","上传成功!");
        };
        return map;
    };

    @RequestMapping("downLoadImgZip")
    public void downLoadImgZip(Photo photo, HttpServletRequest request, HttpServletResponse response){
        List<Photograph> list = photoGraphService.queryAllByUserId(photo);
        String realPath = request.getServletContext().getRealPath("/FTPimages");
        File f = new File(realPath);
        if(!f.exists()){
            f.mkdirs();
        };
        List<String> srcFiles = new ArrayList<String>();
        List<String> fileNames = new ArrayList<String>();
        for (Photograph ph:list) {
            ftpUtil.downloadFile("",ph.getUrl(),realPath);
            srcFiles.add(realPath + "/" + ph.getUrl());
            fileNames.add(ph.getFileName());
        }
        ZipUtil.ZipFiles(request,response,srcFiles,fileNames,"images.zip");
        for (String path:srcFiles) {
            File file = new File(path);
            if(file.exists()){
                file.delete();
            };
        }
    };


}
