package com.fh.service;

import com.fh.model.Photo;
import com.fh.model.Photograph;

import java.util.List;


public interface IPhotoGraphService {
    Photograph queryphotoGraphListByPhotoId(Photograph photograph);
    void addPhotoGraph(Photograph photograph);
    List<Photograph> queryAllByUserId(Photo photo);
}
