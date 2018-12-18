package com.itheima.core.service;

import com.itheima.core.po.Class_HomeWork;
import com.itheima.core.po.HomeWork;

import java.util.List;

public interface HomeWorkSercice {
    public List<HomeWork> findAllHomeWork(int class_id);
    public int addHomeWork(HomeWork homeWork);
    public int updateHomeWorkType(HomeWork homeWork);
    public HomeWork findHomeWorkById(int homework_id);
    public HomeWork findHomeWorkByName(String homework_name);
    public int addClass_HomeWork(Class_HomeWork class_homeWork);
    public int deleteHomeWork(int homework_id);
    public int deleteClass_Home(Class_HomeWork class_homeWork);
}
