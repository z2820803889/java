package com.fh.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class StaffQuery {
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date startCreateTime;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date endCreateTime;

    private Integer startWage;
    private Integer endWage;

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

    public Integer getStartWage() {
        return startWage;
    }

    public void setStartWage(Integer startWage) {
        this.startWage = startWage;
    }

    public Integer getEndWage() {
        return endWage;
    }

    public void setEndWage(Integer endWage) {
        this.endWage = endWage;
    }
}
