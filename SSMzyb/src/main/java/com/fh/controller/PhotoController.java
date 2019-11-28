package com.fh.controller;

import com.fh.model.Photo;
import com.fh.model.Photograph;
import com.fh.service.IPhotoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/photo")
public class PhotoController {
    @Autowired
    private IPhotoService photoService;

    @RequestMapping("queryPhotoListByUserId")
    public String queryPhotoListByUserId(Photo photo, Model model){
        photo = photoService.queryPhotoListByUserId(photo);
        model.addAttribute("pageBean",photo);
        return "photo/photoTable";
    };

    @RequestMapping("toList")
    public String toList(){
        return "photo/photoList";
    };

    @RequestMapping("queryPhotoListById")
    @ResponseBody
    public Map queryPhotoListById(Photo photo){
        photo = photoService.queryPhotoListById(photo);
        Map<String,Object> resultMap = new HashMap<String,Object>();
        resultMap.put("password",photo.getPassword());
        return  resultMap;
    };


    @RequestMapping("updateCover")
    @ResponseBody
    public Map setCover(Photograph photograph){
        Map map = new HashMap();
        photoService.updateCover(photograph);
        map.put("status","修改成功!");
        return map;
    };

}
