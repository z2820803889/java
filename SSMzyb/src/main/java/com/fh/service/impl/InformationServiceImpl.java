package com.fh.service.impl;


import com.fh.dao.InformationDao;
import com.fh.dao.ReceiptDao;
import com.fh.model.Information;
import com.fh.model.Receipt;
import com.fh.model.User;
import com.fh.service.IInformationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Set;

@Service
public class InformationServiceImpl implements IInformationService {
    @Autowired
    private InformationDao informationDao;
    @Autowired
    private ReceiptDao receiptDao;

    @Override
    @Transactional
    public void addInformation(Information information, Set<Integer> userIdList) {

        informationDao.addInformation(information);
        Receipt receipt = new Receipt();
        receipt.setPostUserId(information.getPostUserId());
        receipt.setLook(0);
        receipt.setInformationId(information.getId());
        for(Integer uId : userIdList){
            receipt.setUserId(uId);
            receiptDao.addReceipt(receipt);
        };

    }

    @Override
    public List<Information> getInformationListByUserId(Integer userId) {
        return informationDao.getInformationListByUserId(userId);
    }

    @Override
    public Information getInformationByIdAndUserId(Information information, User user) {
        return informationDao.getInformationByIdAndUserId(information,user);
    }

    @Override
    public List<Information> getInformationListByPostUserId(Integer postUserId) {
        return informationDao.getInformationListByPostUserId(postUserId);
    }

    @Override
    public Information getInformationById(Information information) {
        return informationDao.getInformationById(information);
    }


}
