package com.fh.service;

import com.fh.model.Photo;
import com.fh.model.Photograph;

import java.util.List;

public interface IPhotoService {
    Photo queryPhotoListByUserId(Photo photo);
    Photo queryPhotoListById(Photo photo);
    void updateCover(Photograph photograph);
}
