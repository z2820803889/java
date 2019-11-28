package com.fh.dao;

import com.fh.model.Information;
import com.fh.model.Receipt;
import com.fh.model.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ReceiptDao {
    void addReceipt(Receipt receipt);
    List<User> getReceiveUserNameListByInformationId(Information information);
    void updateLookByInformationIdAndUserId(@Param("informationId") Integer informationId, @Param("userId") Integer userId, @Param("look") Integer look);
}
