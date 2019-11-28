package com.fh.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fh.model.User;
import com.fh.service.IUserService;


@Controller
@RequestMapping("/auth")
public class AuthController {
	@Autowired
	private IUserService userService;
	
	@RequestMapping("/checkLogin")
	@ResponseBody
	private Map checkLogin(User user,HttpServletRequest request){
		Map<String,Object> map = new HashMap<String,Object>();
		User queryUser = userService.getByUserName(user);
		if(queryUser != null){
			if(user.getPassword().equals(queryUser.getPassword())){
				HttpSession session = request.getSession();
				session.setAttribute("loginUser", queryUser);
				map.put("status",2);
			}else{
				map.put("status",3);
			};
		}else{
			map.put("status",1);
		};
		return map;
	};
}
