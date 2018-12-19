package com.itheima.core.service.impl;

import com.itheima.core.dao.HomeWorkDao;
import com.itheima.core.po.*;
import com.itheima.core.service.HomeWorkSercice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class HomeWorkServiceImpl implements HomeWorkSercice {
    @Autowired
    HomeWorkDao homeWorkDao;
    @Override
    public List<HomeWork> findAllHomeWork(int class_id) {
        return homeWorkDao.findAllHomeWork(class_id);
    }

    @Override
    public List<HomeWork> findOpenHomeWork(int class_id) {
        return homeWorkDao.findOpenHomeWork(class_id);
    }

    @Override
    public int addHomeWork(HomeWork homeWork) {
        return homeWorkDao.addHomeWork(homeWork);
    }

    @Override
    public int updateHomeWorkType(HomeWork homeWork) {
        return homeWorkDao.updateHomeWorkType(homeWork);
    }

    @Override
    public HomeWork findHomeWorkById(int homework_id) {
        return homeWorkDao.findHomeWorkById(homework_id);
    }

    @Override
    public HomeWork findHomeWorkByName(String homework_name) {
        return homeWorkDao.findHomeWorkByName(homework_name);
    }

    @Override
    public int addClass_HomeWork(Class_HomeWork class_homeWork) {
        return homeWorkDao.addClass_HomeWork(class_homeWork);
    }

    @Override
    public int deleteHomeWork(int homework_id) {
        return homeWorkDao.deleteHomeWork(homework_id);
    }

    @Override
    public int deleteClass_Home(Class_HomeWork class_homeWork) {
        return homeWorkDao.deleteClass_Home(class_homeWork);
    }

    @Override
    public int AllStudentCount(int class_id) {
        return homeWorkDao.AllStudentCount(class_id);
    }

    @Override
    public int HomeWorkOk(HomeWorkOK homeWorkOK) {
        return homeWorkDao.HomeWorkOk(homeWorkOK);
    }


}
