package com.itheima.core.dao;

import com.itheima.core.po.ClassList;
import com.itheima.core.po.User_Class;

import java.util.Date;
import java.util.List;

public interface ClassDao {
    public List<ClassList> selectAllClass(int user_id);
    public int addClass(ClassList classList);
    public ClassList findClassByDate(Date create_time);
    public int addUser_Class(User_Class user_class);
}
