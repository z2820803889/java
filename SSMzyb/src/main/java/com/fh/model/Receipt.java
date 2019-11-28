package com.fh.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Receipt {

    private Integer id;

    private Integer informationId;

    private Integer postUserId;

    private Integer userId;

    private Integer look;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date lookTime;

    private Integer collect;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getInformationId() {
        return informationId;
    }

    public void setInformationId(Integer informationId) {
        this.informationId = informationId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getLook() {
        return look;
    }

    public void setLook(Integer look) {
        this.look = look;
    }

    public Date getLookTime() {
        return lookTime;
    }

    public void setLookTime(Date lookTime) {
        this.lookTime = lookTime;
    }

    public Integer getCollect() {
        return collect;
    }

    public void setCollect(Integer collect) {
        this.collect = collect;
    }

    public Integer getPostUserId() {
        return postUserId;
    }

    public void setPostUserId(Integer postUserId) {
        this.postUserId = postUserId;
    }
}
