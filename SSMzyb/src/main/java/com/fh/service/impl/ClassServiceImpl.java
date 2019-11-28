package com.fh.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fh.dao.ClassDao;
import com.fh.model.Class;
import com.fh.model.ClassQuery;
import com.fh.service.IClassService;
@Service
public class ClassServiceImpl implements IClassService{
	@Autowired
	private ClassDao classDao;
	


	@Override
	public Class queryById(Class classModel) {
		// TODO Auto-generated method stub
		return classDao.queryById(classModel);
	}
	
	@Transactional
	@Override
	public void updateClass(Class classModel) {
		// TODO Auto-generated method stub
		classDao.updateClass(classModel);
	}
	
	@Transactional
	@Override
	public void deleteClass(Class classModel) {
		// TODO Auto-generated method stub
		classDao.deleteClass(classModel);
	}


	@Override
	@Transactional
	public void addClass(Class classModel) {
		// TODO Auto-generated method stub
		classDao.addClass(classModel);
	}
	@Override
	public List<Class> queryClassList() {
		// TODO Auto-generated method stub
		return classDao.queryClassList();
	}

	@Override
	@Transactional
	public void UpdateClassName(Class classModel) {
		// TODO Auto-generated method stub
		classDao.UpdateClassName(classModel);
	}

	@Override
	public Class queryAll(Class classModel, ClassQuery clsQuery) {
		int count = classDao.queryCount(clsQuery);
		classModel.setTotal(count);
		List<Class> list = classDao.queryAll(classModel, clsQuery);
		classModel.setList(list);
		return classModel;
	}

	


	




}
