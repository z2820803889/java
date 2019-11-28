package com.fh.dao;

import com.fh.model.Photo;
import com.fh.model.Photograph;

import java.util.List;

public interface PhotoDao {
    List<Photo> queryPhotoListByUserId(Photo photo);
    int queryPhotoCount(Photo photo);
    Photo queryPhotoListById(Photo photo);
    void updateCover(Photograph photograph);
}
