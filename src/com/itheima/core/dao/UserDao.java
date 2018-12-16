package com.itheima.core.dao;

import com.itheima.core.po.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDao {
    public User findUser(@Param("user_code") String user_code,@Param("user_password") String user_password);
    public User findUserById(int user_id);
    public User finUserByCode(String user_code);
    public void updateUser(User user);
    public List<User> selectAllStudent(User user);
    public Integer selectStudentListCount(User user);
    public List<User> selectNotInClassStudent(User user);
    public Integer selectNotInClassStudentCount(User user);
}
