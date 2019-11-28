package com.fh.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fh.model.Class;
import com.fh.model.Student;
import com.fh.service.IClassService;
import com.fh.service.IStudentService;


@Controller
@RequestMapping("/student")
public class StudentController {
	@Autowired
	private IStudentService studentService;
	
	@Autowired
	private IClassService classService;
	

	
	@RequestMapping("/queryAll")
	public ModelAndView queryAll(Student student){
		ModelAndView mv =new ModelAndView();
		student = studentService.queryAll(student);
		Class classModel = new Class();
		classModel.setId(student.getClassId());
		classModel = classService.queryById(classModel);
		mv.addObject("pageBean", student);
		mv.addObject("classModel", classModel);
		mv.setViewName("student/studentTable");
		return mv;
	};
	
	@RequestMapping("/toIndex")
	public ModelAndView toIndex(Student student){
		ModelAndView mv =new ModelAndView();
		mv.addObject("classId", student.getClassId());
		mv.setViewName("student/studentIndex");
		return mv;
	};

	@RequestMapping("/add")
	public String add(Student student){
		studentService.addStudent(student);
		return "redirect:toIndex.do?classId=" + student.getClassId();
	};
	
	@RequestMapping("/toAdd")
	public String toAdd(Student student,Model model){
		model.addAttribute("clsId", student.getClassId());
		return "student/studentAdd";
	};
	
	@RequestMapping("/toUpdate")
	public ModelAndView toUpdate(Student student){
		ModelAndView mv =new ModelAndView();
		Student queryById = studentService.queryById(student);
		mv.addObject("student", queryById);
		mv.setViewName("student/studentUpdate");
		return mv;
	};
	
	@RequestMapping("/updateStudent")
	public String update(Student student){
		studentService.updateStudent(student);
		return "redirect:toIndex.do?classId=" + student.getClassId();
	};
	
	@RequestMapping("/deleteStudent")
	public String deleteModel(Student student){
		studentService.deleteStudent(student);
		return "redirect:toIndex.do?classId=" + student.getClassId();
	};
}
