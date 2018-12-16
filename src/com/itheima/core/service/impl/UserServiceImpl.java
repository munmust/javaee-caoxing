package com.itheima.core.service.impl;

import com.itheima.common.utils.Page;
import com.itheima.core.dao.UserDao;
import com.itheima.core.po.User;
import com.itheima.core.service.UserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserDao userDao;

    @Override
    public User findUser(String user_code, String user_password) {
        User user=userDao.findUser(user_code,user_password);
        return user;
    }

    @Override
    public User finUserByCode(String user_code) {
        return userDao.finUserByCode(user_code);
    }

    @Override
    public User findUserById(int user_id) {
        return userDao.findUserById(user_id);
    }

    @Override
    public void updateUser(User user) {
        userDao.updateUser(user);
    }

    @Override
  public Page<User> selectAllStudent(Integer page, Integer rows,
                                     String user_code, String user_name,
                                     String user_cls,int linkClass) {
        User user=new User();
        if (StringUtils.isNotBlank(user_code)){
            user.setUser_code(user_code);
        }
        if (StringUtils.isNotBlank(user_name)){
            user.setUser_name(user_name);
        }
        if (StringUtils.isNotBlank(user_cls)){
            user.setUser_cls(user_cls);
        }
        user.setStart((page-1)*rows);
        user.setRows(rows);
        user.setLinkClass(linkClass);
        List<User> users=userDao.selectAllStudent(user);
        System.out.println(users);
        Integer count=userDao.selectStudentListCount(user);
        System.out.println(count);
        Page<User> result=new Page<>();
        result.setPage(page);
        result.setRows(users);
        result.setSize(rows);
        result.setTotal(count);
        return result;
    }

    @Override
    public Page<User> selectNotInClassStudent(Integer page, Integer rows, String user_code, String user_name, String user_cls, int linkClass) {
        User user=new User();
        if (StringUtils.isNotBlank(user_code)){
            user.setUser_code(user_code);
        }
        if (StringUtils.isNotBlank(user_name)){
            user.setUser_name(user_name);
        }
        if (StringUtils.isNotBlank(user_cls)){
            user.setUser_cls(user_cls);
        }
        user.setStart((page-1)*rows);
        user.setRows(rows);
        user.setLinkClass(linkClass);
        List<User> users=userDao.selectNotInClassStudent(user);
        System.out.println("NotInClass"+users);
        Integer count=userDao.selectNotInClassStudentCount(user);
        System.out.println(count);
        Page<User> result=new Page<>();
        result.setPage(page);
        result.setRows(users);
        result.setSize(rows);
        result.setTotal(count);
        return result;
    }


}
