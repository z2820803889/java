package com.fh.dao;

import com.fh.model.Information;
import com.fh.model.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface InformationDao {

    void addInformation(Information information);
    List<Information> getInformationListByUserId(Integer userId);
    Information getInformationByIdAndUserId(@Param("information") Information information, @Param("user") User user);
    List<Information> getInformationListByPostUserId(Integer postUserId);
    Information getInformationById(Information information);
}
