package com.fh.controller;

import com.fh.model.Staff;
import com.fh.model.StaffQuery;
import com.fh.service.IStaffService;
import com.fh.util.CommonUtil;
import com.fh.util.ExcelUtil;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/staff")
public class StaffController {
    @Autowired
    private IStaffService staffService;

    @RequestMapping("toList")
    public String toList(){
        return "staff/staffList";
    };

    @RequestMapping("queryStaffList")
    public String queryStaffList(Staff staff, StaffQuery staffQuery, Model model){
        staff = staffService.queryStaffList(staff, staffQuery);
        model.addAttribute("pageBean",staff);
        return "staff/staffTable";
    };


    @RequestMapping("updateWage")
    @ResponseBody
    public Map updateWage(Staff staff){
       Map map = new HashMap();
       staffService.updateWageById(staff);
       return map;
    };

    @RequestMapping("importExcel")
    @ResponseBody
    public Map importExcel(MultipartFile file) throws Exception {
        Map map = new HashMap();
        try {
            List<String> sheetName = new ArrayList<String>();
            XSSFWorkbook workbook = new XSSFWorkbook(file.getInputStream());
            int numberOfSheets = workbook.getNumberOfSheets();
            for(int i=0;i<numberOfSheets;i++){
                sheetName.add(workbook.getSheetName(i));
            };
            List<List<Object>> list = new ExcelUtil().getBankListByExcel(file.getInputStream(), file.getOriginalFilename(), sheetName);
                int count = 0;
                for (List<Object> l:list) {
                    Staff staff = new Staff();
                    staff.setName(l.get(0) + "");
                    staff.setDepartment(l.get(1) + "");
                    staff.setWage(Integer.valueOf(l.get(2) + ""));
                    staff.setSex((l.get(3) + "").equals("男")?1:0);
                    staff.setCreateTime(CommonUtil.parseDate2(l.get(4)+ ""));
                    staffService.addStaff(staff);
                    count ++;
                }
                map.put("status", count==0?"没有可上传的数据!":"恭喜您成功上传了" + count + "条数据!");
        }catch (Exception e) {
            map.put("status", "Excel文件上传过程中发生异常，请检查Excel文件是否符合格式!");
        }

        return map;
    };
}
