package com.fh.service;



import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.fh.model.Class;
import com.fh.model.ClassQuery;

public interface IClassService {
	List<Class> queryClassList();
	Class queryAll(Class classModel,ClassQuery clsQuery);
	void addClass(Class classModel);
	Class queryById(Class classModel);
	void updateClass(Class classModel);
	void deleteClass(Class classModel);
	void UpdateClassName(Class classModel);
}
