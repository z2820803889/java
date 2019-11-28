package com.fh.dao;

import com.fh.model.Class;
import com.fh.model.ClassQuery;
import com.fh.model.Staff;
import com.fh.model.StaffQuery;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StaffDao {
	int queryStaffCount(StaffQuery staffQuery);
	List<Staff> queryStaffList(@Param("staff")Staff staff,@Param("staffQuery") StaffQuery staffQuery);
	void updateWageById(Staff staff);
	void addStaff(Staff staff);
}
