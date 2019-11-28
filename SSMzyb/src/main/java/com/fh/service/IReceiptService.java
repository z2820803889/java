package com.fh.service;

import com.fh.model.Information;
import com.fh.model.Receipt;
import com.fh.model.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IReceiptService {

    void addReceipt(Receipt receipt);
    List<User> getReceiveUserNameListByInformationId(Information information);
    void updateLookByInformationIdAndUserId(Integer informationId,Integer userId,Integer look);
}
