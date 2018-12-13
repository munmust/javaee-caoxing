package com.itheima.core.controller;

import com.itheima.core.po.ClassList;
import com.itheima.core.po.User;
import com.itheima.core.service.ClassService;
import com.itheima.core.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class UserController {
    @Autowired
    UserService userService;
    @Autowired
    ClassService classService;
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(String user_code,String user_password,Model model,HttpSession httpSession){
        User user=userService.findUser(user_code,user_password);
        List<ClassList> classLists=classService.selectAllClass(user.getUser_id());
        System.out.println(classLists);
        if (user==null){
            model.addAttribute("error","账号或密码错误");
            return "login";
        }else if (user.getUser_type()==1){
            httpSession.setAttribute("User",user);
            return "student";
        }
        model.addAttribute("ClassList",classLists);
        httpSession.setAttribute("User",user);
        return "teacher";
    }
    @RequestMapping("toUpdateUser")
    public String toUpdataUser(){
        return "updateUser/updateUser";
    }
    @RequestMapping(value = "updateUser",method = RequestMethod.POST)
    public String updateUser(String user_code,String user_password,String user_new_password,Model model,HttpSession session){
        User user=userService.findUser(user_code,user_password);
        if(user==null){
            model.addAttribute("error","账号或旧密码错误");
            return "updateUser/updateUser";
        }
        System.out.println(user_code+","+user_password+","+user_new_password);
        user.setUser_password(user_new_password);
        System.out.println(user.toString());
        userService.updateUser(user);
        return "success";
    }
}
