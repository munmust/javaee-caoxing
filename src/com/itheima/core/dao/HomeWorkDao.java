package com.itheima.core.dao;

import com.itheima.core.po.Class_HomeWork;
import com.itheima.core.po.HomeWork;

import java.util.List;

public interface HomeWorkDao {
    public List<HomeWork> findAllHomeWork(int class_id);
    public HomeWork findHomeWorkByName(String homework_name);
    public int updateHomeWorkType(HomeWork homeWork);
    public HomeWork findHomeWorkById(int homework_id);
    public int addHomeWork(HomeWork homeWork);
    public int addClass_HomeWork(Class_HomeWork class_homeWork);
    public int deleteHomeWork(int homework_id);
    public int deleteClass_Home(Class_HomeWork class_homeWork);
}
