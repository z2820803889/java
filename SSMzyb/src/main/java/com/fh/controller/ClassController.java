package com.fh.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fh.model.Class;
import com.fh.model.ClassQuery;
import com.fh.service.IClassService;
import com.fh.service.IStudentService;


@Controller
@RequestMapping("/class")
public class ClassController{
	@Autowired
	private IClassService classService;
	@Autowired
	private IStudentService studentService;
	
	@RequestMapping("/toIndex")
	public String toIndex(){
		return "class/classIndex";
	};
	
	
	@RequestMapping("/queryAll")
	public ModelAndView queryAll(Class classModel,ClassQuery clsQuery){
		ModelAndView mv =new ModelAndView();
		classModel = classService.queryAll(classModel,clsQuery);
		mv.addObject("pageBean", classModel);
		mv.setViewName("class/classTable");
		return mv;
	};
	

	
	@RequestMapping("/updateClsName")
	@ResponseBody
	public String updateClsName(Class classModel){
		classService.UpdateClassName(classModel);
		return "";
	};
	
	
	
	
/*	@RequestMapping("/getClsById")
	@ResponseBody
	public String  getClsById(Class classModel){
		classModel = classService.queryById(classModel);
		Map<String,Object> map = new HashMap<String,Object>();
		SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd");
		map.put("id", classModel.getId());
		map.put("name", classModel.getName());
		map.put("time", sim.format(classModel.getTime()));
		String jsonStr = JSON.toJSONString(map,SerializerFeature.WriteMapNullValue);
		return jsonStr;
	};*/

	@RequestMapping("/add")
	public String add(Class classModel){
		classService.addClass(classModel);
		int id = classModel.getId();
		return "redirect:/class/toIndex.do";
	};
	
	
	@RequestMapping("/toAdd")
	public String toAdd(){
		return "class/classAdd";
	};
	
	@RequestMapping("/toUpdate")
	public ModelAndView toUpdate(Class classModel){
		ModelAndView mv =new ModelAndView();
		Class queryById = classService.queryById(classModel);
		mv.addObject("classModel", queryById);
		mv.setViewName("class/classUpdate");
		return mv;
	};
	
	@RequestMapping("/updateClass")
	public String update(Class classModel){
		classService.updateClass(classModel);
		return "redirect:/class/toIndex.do";
	};
	
	@RequestMapping("/deleteClass")
	public String deleteModel(Class classModel){
		studentService.deleteByClsId(classModel);
		classService.deleteClass(classModel);
		return "redirect:/class/toIndex.do";
	};
}
