package com.fh.service.impl;

import com.fh.dao.PhotoGraphDao;
import com.fh.model.Photo;
import com.fh.model.Photograph;
import com.fh.service.IPhotoGraphService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
public class PhotoGraphServiceImpl implements IPhotoGraphService {
    @Autowired
    private PhotoGraphDao photoGraphDao;

    @Override
    public Photograph queryphotoGraphListByPhotoId(Photograph photograph) {
        photograph.setTotal(photoGraphDao.queryPhotoGraphCount(photograph));
        List<Photograph> list = photoGraphDao.queryphotoGraphListByPhotoId(photograph);
        photograph.setList(list);
        return photograph;
    }

    @Override
    @Transactional
    public void addPhotoGraph(Photograph photograph) {
        photoGraphDao.addPhotoGraph(photograph);
    }

    @Override
    public List<Photograph> queryAllByUserId(Photo photo) {
        return photoGraphDao.queryAllByUserId(photo);
    }


}
