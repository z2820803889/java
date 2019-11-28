package com.fh.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class UserQuery {
    private String userNameQuery;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date startCreateTime;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date endCreateTime;
    private String realNameQuery;

    public String getUserNameQuery() {
        return userNameQuery;
    }

    public void setUserNameQuery(String userNameQuery) {
        this.userNameQuery = userNameQuery;
    }

    public Date getStartCreateTime() {
        return startCreateTime;
    }

    public void setStartCreateTime(Date startCreateTime) {
        this.startCreateTime = startCreateTime;
    }

    public Date getEndCreateTime() {
        return endCreateTime;
    }

    public void setEndCreateTime(Date endCreateTime) {
        this.endCreateTime = endCreateTime;
    }

    public String getRealNameQuery() {
        return realNameQuery;
    }

    public void setRealNameQuery(String realNameQuery) {
        this.realNameQuery = realNameQuery;
    }
}
