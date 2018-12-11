package com.itheima.core.service;

import com.itheima.core.po.ClassList;
import com.itheima.core.po.User_Class;

import java.util.List;

public interface ClassService {
    public List<ClassList> selectAllClass();
    public ClassList getClassByName(String name);
    public int addClass(ClassList clas);
    public int addUser_Class(User_Class user_class);
}
