package com.itheima.core.service;

import com.itheima.core.po.ClassList;
import com.itheima.core.po.User;

import java.util.Date;

public interface UserService {
    public User findUser(String user_code,String user_password);
    public void updateUser(User user);

}
