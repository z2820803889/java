package com.fh.service.impl;

import com.fh.dao.PhotoDao;
import com.fh.model.Photo;
import com.fh.model.Photograph;
import com.fh.service.IPhotoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class PhotoServiceImpl implements IPhotoService {
    @Autowired
    private PhotoDao photoDao;




    @Override
    public Photo queryPhotoListByUserId(Photo photo) {
        photo.setTotal(photoDao.queryPhotoCount(photo));
        List<Photo> list = photoDao.queryPhotoListByUserId(photo);
        photo.setList(list);
        return photo;
    }

    @Override
    public Photo queryPhotoListById(Photo photo) {
        return photoDao.queryPhotoListById(photo);
    }

    @Override
    public void updateCover(Photograph photograph) {
        photoDao.updateCover(photograph);
    }
}
