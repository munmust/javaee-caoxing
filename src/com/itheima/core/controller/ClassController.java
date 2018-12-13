package com.itheima.core.controller;

import com.itheima.core.po.ClassList;
import com.itheima.core.po.User;
import com.itheima.core.po.User_Class;
import com.itheima.core.service.ClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.Date;

@Controller
public class ClassController {
    @Autowired
    ClassService classService;
    @RequestMapping("/addClass")
    @ResponseBody
    public String addClass(ClassList classList, HttpSession httpSession){
        User user=(User) httpSession.getAttribute("User");
        System.out.println(user);
        //插入Class表
        Date date=new Date();
        classList.setCreate_user_id(user.getUser_id());
        classList.setCreate_user_name(user.getUser_name());
        classList.setCreate_time(date);
        int row=classService.addClass(classList);
        ClassList findClass=(ClassList)classService.findClassByDate(date);
        //插入User_Class表
        User_Class user_class=new User_Class();
        user_class.setUser_id(user.getUser_id());
        user_class.setClass_id(findClass.getClass_id());
        user_class.setUser_class_type(user.getUser_type());
        System.out.println(user_class);
        classService.addUser_Class(user_class);
        if (row>0){
            return "OK";
        }else {
            return "False";
        }
    }
}
