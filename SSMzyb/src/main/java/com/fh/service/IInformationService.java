package com.fh.service;

import com.fh.model.Information;
import com.fh.model.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Set;

public interface IInformationService {

    void addInformation(Information information, Set<Integer> userIdList);
    List<Information> getInformationListByUserId(Integer userId);
    Information getInformationByIdAndUserId(@Param("information") Information information, @Param("user") User user);
    List<Information> getInformationListByPostUserId(Integer postUserId);
    Information getInformationById(Information information);
}
