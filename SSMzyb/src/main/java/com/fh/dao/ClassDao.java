package com.fh.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.fh.model.Class;
import com.fh.model.ClassQuery;

public interface ClassDao {
	int queryCount(ClassQuery clsQuery);
	List<Class> queryAll(@Param("classModel")Class classModel,@Param("clsQuery")ClassQuery clsQuery);
	List<Class> queryClassList();
	void addClass(Class classModel);
	Class queryById(Class classModel);
	void updateClass(Class classModel);
	void deleteClass(Class classModel);
	void UpdateClassName(Class classModel);
}
