package com.iacontent.iacontentfo.service;

import com.iacontent.iacontentfo.dao.HibernateDao;
import com.iacontent.iacontentfo.model.Contents;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ContentsService {
    @Autowired
    private HibernateDao hibernateDao;

    public List<Contents> findAll() {
        return hibernateDao.findAll(Contents.class);
    }

    public Contents findById(Integer id) {
        return hibernateDao.findById(Contents.class, id);
    }
}
