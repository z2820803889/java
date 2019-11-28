package com.fh.service.impl;

import com.fh.dao.ReceiptDao;
import com.fh.model.Information;
import com.fh.model.Receipt;
import com.fh.model.User;
import com.fh.service.IReceiptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ReceiptServiceImpl implements IReceiptService {
    @Autowired
    private ReceiptDao receiptDao;

    @Override
    public void addReceipt(Receipt receipt) {
        receiptDao.addReceipt(receipt);
    }

    @Override
    public List<User> getReceiveUserNameListByInformationId(Information information) {
        return receiptDao.getReceiveUserNameListByInformationId(information);
    }

    @Override
    @Transactional
    public void updateLookByInformationIdAndUserId(Integer informationId, Integer userId, Integer look) {
        receiptDao.updateLookByInformationIdAndUserId(informationId,userId,look);
    }
}
