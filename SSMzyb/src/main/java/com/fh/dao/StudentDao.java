package com.fh.dao;

import java.util.List;
import com.fh.model.Class;
import com.fh.model.Student;

public interface StudentDao {
	int queryCount(Student student);
	List<Student> queryAll(Student student);
	void addStudent(Student student);
	Student queryById(Student student);
	void updateStudent(Student student);
	void deleteStudent(Student student);
	List<Student> queryStuByClaId(Class classModel);
	void deleteByClsId(Class classModel);
}
