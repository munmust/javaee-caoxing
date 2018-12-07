package com.itheima.core.controller;

import com.itheima.core.po.User;
import com.itheima.core.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import javax.xml.ws.Action;

@Controller
public class UserController {
    @Autowired
    UserService userService;
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(String user_code, String user_password, Model model, HttpSession httpSession){
        User user=userService.findUser(user_code,user_password);
        if (user==null){
            return "login";
        }else if (user.getUser_type()==1){
            httpSession.setAttribute("User",user);
            return "student";
        }
        httpSession.setAttribute("User",user);
        return "teacher";
    }
}
