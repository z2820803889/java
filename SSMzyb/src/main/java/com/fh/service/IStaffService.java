package com.fh.service;


import com.fh.model.Staff;
import com.fh.model.StaffQuery;

public interface IStaffService {
	Staff queryStaffList(Staff staff, StaffQuery staffQuery);
	void updateWageById(Staff staff);
	void addStaff(Staff staff);
}
