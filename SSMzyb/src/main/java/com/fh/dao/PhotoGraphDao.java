package com.fh.dao;

import com.fh.model.Photo;
import com.fh.model.Photograph;

import java.util.List;

public interface PhotoGraphDao {
    List<Photograph> queryphotoGraphListByPhotoId(Photograph photograph);
    int queryPhotoGraphCount(Photograph photograph);
    void addPhotoGraph(Photograph photograph);
    List<Photograph> queryAllByUserId(Photo photo);
}
