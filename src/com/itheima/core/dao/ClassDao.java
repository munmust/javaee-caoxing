package com.itheima.core.dao;

import com.itheima.core.po.ClassList;
import com.itheima.core.po.User;
import com.itheima.core.po.User_Class;

import javax.swing.text.Style;
import java.util.Date;
import java.util.List;

public interface ClassDao {
    public List<ClassList> selectAllClass(int user_id);
    public int addClass(ClassList classList);
    public ClassList findClassByDate(Date create_time);
    public ClassList findClassById(int class_id);
    public int addUser_Class(User_Class user_class);
    public int addStudentToClass(User_Class user_class);
    public int deleteClass(User_Class user_class);
    public int deleteStudent(User_Class user_class);
}
