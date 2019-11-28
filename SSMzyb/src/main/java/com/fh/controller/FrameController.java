package com.fh.controller;



import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fh.model.Permission;
import com.fh.model.User;
import com.fh.service.IUserService;


@Controller
@RequestMapping("/frame")
public class FrameController{
	@Autowired
	private IUserService userService;
	
	@RequestMapping("/toMain")
	public String deleteModel(){
		return "frame/main";
	};
	
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request){
		HttpSession session = request.getSession();
		session.invalidate();
		return "frame/toLogin";
	};
	
	@RequestMapping("/toLeft")
	public String toLeft(Model model,HttpSession session){
		User user = (User)session.getAttribute("loginUser");
		List<Permission> list = userService.getPermissionTreeByUserId(user);
		model.addAttribute("list", list);
		return "frame/left";
	};
	
	
	
	@RequestMapping("/toTop")
	public String toTop(Model model,HttpServletRequest request){
		HttpSession session = request.getSession();
		Object user = session.getAttribute("loginUser");
		model.addAttribute("user", user);
		return "frame/top";
	};
	
	@RequestMapping("/toBottom")
	public String deleteMtoBottomodel(){
		return "frame/bottom";
	};
	
	@RequestMapping("/toRight")
	public String toRight(){
		return "frame/right";
	};
	
	
}
