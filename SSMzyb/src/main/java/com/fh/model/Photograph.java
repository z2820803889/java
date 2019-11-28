package com.fh.model;

public class Photograph extends  PageBean{
    private Integer id;
    private String url;
    private Integer photoId;
    private String photoPassword;
    private String fileName;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Integer getPhotoId() {
        return photoId;
    }

    public void setPhotoId(Integer photoId) {
        this.photoId = photoId;
    }

    public String getPhotoPassword() {
        return photoPassword;
    }

    public void setPhotoPassword(String photoPassword) {
        this.photoPassword = photoPassword;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }
}
