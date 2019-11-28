package com.fh.service.impl;

import com.fh.dao.StaffDao;
import com.fh.model.Staff;
import com.fh.model.StaffQuery;
import com.fh.service.IStaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
public class StaffServiceImpl implements IStaffService {
    @Autowired
    private StaffDao staffDao;


    @Override
    public Staff queryStaffList(Staff staff, StaffQuery staffQuery) {
        int count = staffDao.queryStaffCount(staffQuery);
        staff.setTotal(count);
        List<Staff> list = staffDao.queryStaffList(staff, staffQuery);
        staff.setList(list);
        return staff;
    }

    @Override
    @Transactional
    public void updateWageById(Staff staff) {
        staffDao.updateWageById(staff);
    }

    @Override
    public void addStaff(Staff staff) {
        staffDao.addStaff(staff);
    }
}
