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
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class ClassController {
    @Autowired
    ClassService classService;
    @ResponseBody
    @RequestMapping("/addClass")
    public String addClass(ClassList classList, HttpSession session){
        User user=(User)session.getAttribute("User");
        System.out.println(user.toString());
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        classList.setCreate_user_id(user.getUser_id());
        classList.setCreate_user_name(user.getUser_name());
        Date date=new Date();
        classList.setCreate_time(date);
        System.out.println(classList.toString());
        int row=classService.addClass(classList);
        ClassList classs =classService.getClassByName(classList.getClass_name());
        System.out.println(classs);
        User_Class user_class=new User_Class();
        user_class.setUser_id(user.getUser_id());
        user_class.setClass_id(classs.getClass_id());
        user_class.setUser_class_type(user.getUser_type());
        System.out.println(user_class.toString());
       classService.addUser_Class(user_class);
      if (row>0){
          return "OK";
       }else {
           return "False";
      }
   }
}
