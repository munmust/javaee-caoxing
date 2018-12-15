package com.itheima.core.service;

import com.itheima.common.utils.Page;
import com.itheima.core.po.ClassList;
import com.itheima.core.po.User;
import com.itheima.core.po.User_Class;

import java.util.Date;
import java.util.List;

public interface UserService {
    public User findUser(String user_code,String user_password);
    public User finUserByCode(String user_code);
    public void updateUser(User user);
    public Page<User> selectAllStudent(Integer page,Integer rows,
                                       String user_code,String user_name,
                                       String user_cls,int linkClass);
    public Page<User> selectNotInClassStudent(Integer page,Integer rows,
                                              String user_code,String user_name,
                                              String user_cls,int linkClass);

}
