package com.itheima.core.service.impl;

import com.itheima.core.dao.ClassDao;
import com.itheima.core.po.ClassList;
import com.itheima.core.po.User_Class;
import com.itheima.core.service.ClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
@Service
public class ClassServiceImpl implements ClassService {
    @Autowired
    ClassDao classDao;

    @Override
    public List<ClassList> selectAllClass(int user_id) {
        return classDao.selectAllClass(user_id);
    }

    @Override
    public int addClass(ClassList classList) {
        return classDao.addClass(classList);
    }

    @Override
    public ClassList findClassByDate(Date create_time) {
        return classDao.findClassByDate(create_time);
    }

    @Override
    public int addUser_Class(User_Class user_class) {
       return classDao.addUser_Class(user_class);
    }

    @Override
    public ClassList findClassById(int class_id) {
        return classDao.findClassById(class_id);
    }

    @Override
    public int addStudentToClass(User_Class user_class) {
        return classDao.addStudentToClass(user_class);
    }

    @Override
    public int deleteClass(User_Class user_class) {
        return classDao.deleteClass(user_class);
    }

    @Override
    public int deleteStudent(User_Class user_class) {
        return classDao.deleteStudent(user_class);
    }
}
