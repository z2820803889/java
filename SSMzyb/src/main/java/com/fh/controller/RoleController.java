package com.fh.controller;

import com.fh.model.Permission;
import com.fh.model.Role;
import com.fh.service.IPermissionService;
import com.fh.service.IRoleService;
import com.fh.util.CommonUtil;
import com.fh.util.ExcelUtil;
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
import java.io.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;


@Controller
@RequestMapping("/role")
public class RoleController {
	@Autowired
	private IRoleService roleService;
	@Autowired
	private IPermissionService permissionService;

	/*将Excel存到硬盘 返回文件名及表明集合*/
	@RequestMapping("/importExcel")
	@ResponseBody
	public Map importExcel(MultipartFile file,HttpServletRequest request) throws IOException {
		List<String> sheetNameList = new ArrayList<String>();
		XSSFWorkbook workBook = new XSSFWorkbook(file.getInputStream());
		int numberOfSheets = workBook.getNumberOfSheets();
		for(int i=0;i<numberOfSheets;i++){
			XSSFSheet sheet = workBook.getSheetAt(i);
			sheetNameList.add(sheet.getSheetName());
		};
		Map<String,Object> resultMap = new HashMap<String,Object>();
		String realPath = request.getServletContext().getRealPath("/excel");
		String siffix = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
		String newFileName = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) + siffix;
		File f = new File(realPath);
		if(!f.exists()){
			f.mkdirs();
		};
		file.transferTo(new File(realPath + "/" + newFileName));
		resultMap.put("fileName",newFileName);
		resultMap.put("sheetName",sheetNameList);
		return resultMap;
	};



	/*接收要解析的Excel文件名和表名 解析已经上传的文件和对应的表 添加到数据库*/
	@RequestMapping("/importExcelAddRole")
	@ResponseBody
	public Map importExcelAddRole(String fileName,String[] sheetNames,HttpServletRequest request) throws Exception {
		Map<String,Object> resultMap = new HashMap<String,Object>();
		List<String> sheetNameList = new ArrayList<String>();
		for (String sheetName:sheetNames) {
			sheetNameList.add(sheetName);
		}
		String realPath  = request.getServletContext().getRealPath("/excel");
		File file = new File(realPath + "/"+ fileName);
		InputStream is = new FileInputStream(file);
		XSSFWorkbook workbook = new XSSFWorkbook(is);
		analysisExcel(sheetNameList,workbook,0,0);
		is.close();
		return resultMap;
	};

	public static String analysisExcel(List<String> sheetNameList,XSSFWorkbook workbook,int firstSheetNum,int firstRowNum) throws ParseException {
		int numberOfSheets = workbook.getNumberOfSheets();
		XSSFSheet sheet = null;
		Integer sheetNum = null;
		Integer rowNum  = null;
		for (int i=firstSheetNum;i<numberOfSheets;i++){
			sheet = workbook.getSheetAt(i);
			sheetNum = firstSheetNum;
			if(sheet==null){ continue;};
			for(int j = sheet.getFirstRowNum()+1;j<=sheet.getLastRowNum();j++){
				XSSFRow row = sheet.getRow(j);
				rowNum = j;
				XSSFCell roleNameCell = row.getCell(1);
				Role role = new Role();
				role.setName(roleNameCell.getStringCellValue());
				/*Role queryRole = roleService.queryRoleByRoleName(role);
				if(queryRole == null){
					XSSFCell createTime = row.getCell(2);
					role.setCreateTime(CommonUtil.parseDate(createTime.getStringCellValue()));
					XSSFCell updateTime = row.getCell(3);
					role.setUpdateTime(CommonUtil.parseDate(updateTime.getStringCellValue()));

				};*/

			};
		};
		return "";
	};

	/*根据接收的文件名删除文件*/
	@RequestMapping("/deleteExcel")
	@ResponseBody
	public String deleteExcel(String fileName,HttpServletRequest request){
		String realPath  = request.getServletContext().getRealPath("/excel");
		File file = new File(realPath + "/"+ fileName);
		if(file.exists()){
			file.delete();
		};
		return "";
	};

	@RequestMapping("/toTable")
	public String toTable(Model model){
		List<Role> list =roleService.queryRoleList();
		model.addAttribute("list",list);
		return "role/roleTable";
	};


	@RequestMapping("/toRolePermission")
	public String toRolePermission(Integer roleId,Model model){
		model.addAttribute("roleId",roleId);
		return "role/rolePermission";
	};


	@RequestMapping("/queryRolePermissionList")
	@ResponseBody
	public List queryRolePermissionList(Role role,Model model){
		//角色对应权限集合
		List<Permission> rolePermissionList = permissionService.queryPermissionListByRoleId(role);
		//角色对应权限Id集合
		Set<Integer> permisionIdSet = new HashSet<Integer>();
		for (Permission permission: rolePermissionList)
		{
			permisionIdSet.add(permission.getId());
		}
		//全部权限集合
		List<Permission> permissionList = permissionService.queryPermissionList();
		//返回树集合
		List<Map<String,Object>> threeList = new ArrayList<Map<String,Object>>();
		for (Permission permission:permissionList) {
			Map<String,Object> map = new HashMap<String,Object>();
			if(permisionIdSet.contains(permission.getId())){
				map.put("checked","true");
			};
			map.put("id",permission.getId());
			map.put("name",permission.getName());
			map.put("pid",permission.getPid());
			threeList.add(map);
		}

		return threeList;
	};

	//删除角色原有权限关联添加新权限关联
	@RequestMapping("/updateRolePermission")
	@ResponseBody
	public String updateRolePermission(Role role){
		roleService.updateRolePermission(role);
		return "";
	};



}
