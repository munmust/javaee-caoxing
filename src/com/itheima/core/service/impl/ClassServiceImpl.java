package com.itheima.core.service.impl;

import com.itheima.core.dao.ClassDao;
import com.itheima.core.po.ClassList;
import com.itheima.core.po.User_Class;
import com.itheima.core.service.ClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ClassServiceImpl implements ClassService {
    @Autowired
    ClassDao classDao;
    @Override
    public List<ClassList> selectAllClass() {
        return classDao.selectAllClass();
     }

    @Override
    public ClassList getClassByName(String name) {
        return classDao.getClassByName(name);
    }

    @Override
    public int addClass(ClassList clas) {
        return classDao.addClass(clas);
    }

    @Override
    public int addUser_Class(User_Class user_class) {
        return classDao.addUser_Class(user_class);
    }

}
