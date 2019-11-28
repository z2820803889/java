package com.fh.controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.fh.model.Class;
import com.fh.model.Permission;
import com.fh.service.IClassService;
import com.fh.service.IPermissionService;
import com.fh.service.IStudentService;


@Controller
@RequestMapping("/permission")
public class PermissionController{
	@Autowired
	private IPermissionService permisisonService;
	
	
	@RequestMapping("/queryPermissionList")
	@ResponseBody
	public List queryPermissionList(){
		List<Permission> list = permisisonService.queryPermissionList();
		return list;
	};
	
	
	
}
