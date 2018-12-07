package com.itheima.core.service.impl;

import com.itheima.core.dao.UserDao;
import com.itheima.core.po.User;
import com.itheima.core.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserDao userDao;

    @Override
    public User findUser(String user_code, String user_password) {
        User user=userDao.findUser(user_code,user_password);
        return user;
    }
}
