package com.itheima.core.service;

import com.itheima.core.po.ClassList;
import com.itheima.core.po.User_Class;

import java.util.Date;
import java.util.List;

public interface ClassService {
    public List<ClassList> selectAllClass(int user_id);
    public int addClass(ClassList classList);
    public ClassList findClassByDate(Date create_time);
    public int addUser_Class(User_Class user_class);

    public ClassList findClassById(int class_id);

    public int addStudentToClass(User_Class user_class);
    public int deleteClass(User_Class user_class);
    public int deleteStudent(User_Class user_class);
}
