package com.fh.controller;


import com.fh.model.Role;
import com.fh.model.User;
import com.fh.model.UserQuery;
import com.fh.service.IRoleService;
import com.fh.service.IUserService;
import com.fh.util.CommonUtil;
import com.fh.util.ExcelUtil;
import org.apache.ibatis.annotations.Param;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.*;


@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private IUserService userService;
	@Autowired
	private IRoleService roleService;



	@RequestMapping("/toIndex")
	public String toIndex(){
		return "user/userIndex";
	};
	
	
	@RequestMapping("/queryUserList")
	public String queryUserList(User user, UserQuery userQuery, Model model){
		user = userService.queryUserList(user, userQuery);
		model.addAttribute("pageBean",user);
		return "user/userTable";
	};

	//导入Excel
	@RequestMapping("/importExcel")
	public void importExcel(MultipartFile file) throws Exception {
		InputStream is = file.getInputStream();
		/*List<List<Object>> list = new ExcelUtil().getBankListByExcel(is, file.getOriginalFilename());*/
		is.close();
	};



	//导出Excel
	@RequestMapping("/exportExcel")
	public void exportExcel(HttpServletResponse response, HttpServletRequest request){
		List<User> list = userService.queryAllUserList();
		XSSFWorkbook workbook =new XSSFWorkbook();
		XSSFSheet sheet=workbook.createSheet("oaUser");
		XSSFRow row=sheet.createRow(0);

		String[] areaArr = {"id","用户名","密码","手机号码","状态","最后登录时间","登录次数","创建时间","修改时间","生日","真实姓名"};
		for (int i = 0; i < areaArr.length; i++) {
			row.createCell(i).setCellValue(areaArr[i]);
		}
		int count  = 0;
		for (User user:list) {
			XSSFRow newRow=sheet.createRow(count+1);
			newRow.createCell(0).setCellValue(user.getId()+"");
			newRow.createCell(1).setCellValue(user.getUserName());
			newRow.createCell(2).setCellValue(user.getPassword());
			newRow.createCell(3).setCellValue(user.getNumber());
			newRow.createCell(4).setCellValue(user.getStatus()==1?"启用":"禁用");
			newRow.createCell(5).setCellValue(CommonUtil.formatDate(user.getLoginTime()));
			newRow.createCell(6).setCellValue(user.getLoginCount()==null?"0":user.getLoginCount() + "");
			newRow.createCell(7).setCellValue(CommonUtil.formatDate(user.getCreateTime()));
			newRow.createCell(8).setCellValue(CommonUtil.formatDate(user.getUpdateTime()));
			newRow.createCell(9).setCellValue(CommonUtil.getDateNYR(user.getBirthday()));
			newRow.createCell(10).setCellValue(user.getRealName());
			count ++;
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		ExcelUtil.excelDownload(workbook,response,request,sdf.format(new Date()) + ".xlsx");
	};

	@RequestMapping("/toUserRole")
	public String toUserRole(User user, Model model){
		List<Role> list = roleService.queryRoleByUserId(user);
		model.addAttribute("list",list);
		model.addAttribute("userId",user.getId());
		return "user/userRole";
	};

	@RequestMapping("/updateUserRole")
	public String updateUserRole(User user){
		userService.updateUserRole(user);
		return "redirect:toIndex.do";
	};


	

}
