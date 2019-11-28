package com.fh.model;

import java.util.List;

public class PageBean{
	String strIndex;
	Integer pageIndex = 1;
	Integer pageSize = 5;
	Integer Total;
	Integer pageTotal;
	Integer startIndex;
	List list;
	

	public String getStrIndex() {
		return strIndex;
	}

	public void setStrIndex(String strIndex) {
		try {
			this.pageIndex = Integer.valueOf(strIndex);
		} catch (Exception e) {
			// TODO: handle exception
			this.pageIndex = 1;
		}
	}

	


	


	public Integer getPageIndex() {
		return pageIndex;
	}


	public void setPageIndex(Integer pageIndex) {
		this.pageIndex = pageIndex;
	}


	public Integer getPageSize() {
		return pageSize;
	}


	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getTotal() {
		return Total;
	}
	public void setTotal(Integer total) {
		if(total%pageSize==0){
			this.pageTotal = total/pageSize;
		}else{
			this.pageTotal = total/pageSize + 1;
		};
		Total = total;
	}
	public Integer getPageTotal() {
		return pageTotal;
	}
	public void setPageTotal(Integer pageTotal) {
		this.pageTotal = pageTotal;
	}
	
	public Integer getStartIndex() {
			if(pageIndex < 1 ){
				pageIndex = 1;
			};
			if(pageIndex > getPageTotal() && getPageTotal() > 0){
				pageIndex = getPageTotal();
			}
		startIndex = (pageIndex - 1 ) * pageSize;
		return startIndex;
	}
	
	public void setStartIndex(Integer startIndex) {
		this.startIndex = startIndex;
	}
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}

	public PageBean() {
		super();
		// TODO Auto-generated constructor stub
	}



	public PageBean(Integer pageIndex, Integer pageSize, Integer total, Integer pageTotal, Integer startIndex,
			List list) {
		super();
		this.pageIndex = pageIndex;
		this.pageSize = pageSize;
		Total = total;
		this.pageTotal = pageTotal;
		this.startIndex = startIndex;
		this.list = list;
	}
	

	
	
	
	
}
