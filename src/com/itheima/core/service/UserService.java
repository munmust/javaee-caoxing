package com.itheima.core.service;

import com.itheima.core.po.User;

public interface UserService {
    public User findUser(String user_code,String user_password);
    public void updateUser(User user);
}
