package com.fh.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fh.dao.StudentDao;
import com.fh.model.Class;
import com.fh.model.Student;
import com.fh.service.IStudentService;
@Service
public class StudentServiceImpl implements IStudentService{
	@Autowired
	private StudentDao studentDao;
	


	@Override
	public Student queryById(Student sutdent) {
		// TODO Auto-generated method stub
		return studentDao.queryById(sutdent);
	}
	
	@Transactional
	@Override
	public void updateStudent(Student sutdent) {
		// TODO Auto-generated method stub
		studentDao.updateStudent(sutdent);
	}
	
	@Transactional
	@Override
	public void deleteStudent(Student sutdent) {
		// TODO Auto-generated method stub
		studentDao.deleteStudent(sutdent);
	}

	@Transactional
	@Override
	public void addStudent(Student sutdent) {
		// TODO Auto-generated method stub
		studentDao.addStudent(sutdent);
	}

	@Override
	public Student queryAll(Student sutdent) {
		int count = studentDao.queryCount(sutdent);
		sutdent.setTotal(count);
		Integer startIndex = sutdent.getStartIndex();
		List<Student> list = studentDao.queryAll(sutdent);
		sutdent.setList(list);
		return sutdent;
	}

	@Override
	public List<Student> queryStuByClaId(Class classModel) {
		// TODO Auto-generated method stub
		return studentDao.queryStuByClaId(classModel);
	}

	@Transactional
	@Override
	public void deleteByClsId(Class classModel) {
		// TODO Auto-generated method stub
		studentDao.deleteByClsId(classModel);
	}


	




}
