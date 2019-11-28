package com.fh.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Information {
    private Integer id;

    private Integer level;

    private Integer receipt;

    private Integer comment;

    private String title;

    private String content;

    private Integer postUserId;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date postTime;

    private Integer type;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date draftTime;

    private String asNames;

    private String asUrls;

    private String roleUserIds;

    private String postUserRealName;

    private Integer look;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getLevel() {
        if(level == null){
            level = 0;
        }
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    public Integer getReceipt() {
        if(receipt==null){
            receipt = 0;
        }
        return receipt;
    }

    public void setReceipt(Integer receipt) {
        this.receipt = receipt;
    }

    public Integer getComment() {
        if(comment == null){
            comment = 0;
        }
        return comment;
    }

    public void setComment(Integer comment) {
        this.comment = comment;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getPostUserId() {
        return postUserId;
    }

    public void setPostUserId(Integer postUserId) {
        this.postUserId = postUserId;
    }

    public Date getPostTime() {
        return postTime;
    }

    public void setPostTime(Date postTime) {
        this.postTime = postTime;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Date getDraftTime() {
        return draftTime;
    }

    public void setDraftTime(Date draftTime) {
        this.draftTime = draftTime;
    }

    public String getAsNames() {
        return asNames;
    }

    public void setAsNames(String asNames) {
        this.asNames = asNames;
    }

    public String getAsUrls() {
        return asUrls;
    }

    public void setAsUrls(String asUrls) {
        this.asUrls = asUrls;
    }

    public String getRoleUserIds() {
        return roleUserIds;
    }

    public void setRoleUserIds(String roleUserIds) {
        this.roleUserIds = roleUserIds;
    }

    public String getPostUserRealName() {
        return postUserRealName;
    }

    public void setPostUserRealName(String postUserRealName) {
        this.postUserRealName = postUserRealName;
    }

    public Integer getLook() {
        return look;
    }

    public void setLook(Integer look) {
        this.look = look;
    }
}
