package com.itheima.core.dao;

import com.itheima.core.po.User;
import org.apache.ibatis.annotations.Param;

public interface UserDao {
    public User findUser(@Param("user_code") String user_code,@Param("user_password") String user_password);
    public void updateUser(User user);
}
