package com.itheima.core.controller;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.itheima.common.utils.Page;
import com.itheima.core.po.ClassList;
import com.itheima.core.po.User;
import com.itheima.core.po.User_Class;
import com.itheima.core.service.ClassService;
import com.itheima.core.service.UserService;
import org.apache.ibatis.annotations.Param;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import static java.lang.System.*;

@Controller
public class ClassController {
    @Autowired
    ClassService classService;
    @Autowired
    UserService userService;
    @RequestMapping("/addClass")
    public String addClass(ClassList classList, Model model, HttpSession httpSession){
        User user = (User) httpSession.getAttribute("User");
        out.println(user);
        out.println(classList);
        out.println(classList);
        //ͼƬ
        String sqlPath = null;
        String localPath = "D:\\ASM\\";
        String imgName = null;
        if (!classList.getImg().isEmpty()) {
            String uuid = UUID.randomUUID().toString().replaceAll("-", "");
            String contentType = classList.getImg().getContentType();
            String suffixName = contentType.substring(contentType.indexOf("/") + 1);
            imgName = uuid + "." + suffixName;
            try {
                classList.getImg().transferTo(new File(localPath + imgName));
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        sqlPath = "/images/" + imgName;
        out.println(sqlPath);
        classList.setClass_img(sqlPath);
        out.println(classList);
        //����Class��
        Date date = new Date();
        classList.setCreate_user_id(user.getUser_id());
        classList.setCreate_user_name(user.getUser_name());
        classList.setCreate_time(date);
        int row = classService.addClass(classList);
        ClassList findClass = (ClassList) classService.findClassByDate(date);
        out.println(findClass);
        //����User_Class��
        User_Class user_class = new User_Class();
        user_class.setUser_id(user.getUser_id());
        user_class.setClass_id(findClass.getClass_id());
        user_class.setUser_class_type(user.getUser_type());
        out.println(user_class);
        classService.addUser_Class(user_class);

        List<ClassList> classLists=classService.selectAllClass(user.getUser_id());
        model.addAttribute("ClassList",classLists);
        httpSession.setAttribute("User",user);
        return "teacher";
    }

    @RequestMapping(value = "/classDetail" ,method = RequestMethod.POST)
    @ResponseBody
    public String toClassDetail(HttpServletRequest request,HttpSession session){
        String class_id=request.getParameter("class_id");
        System.out.println(class_id);
       int class_ids=Integer.valueOf(class_id);
        ClassList classList=classService.findClassById(class_ids);
        System.out.println(classList);
        session.setAttribute("ClassList",classList);
        return "/toClassDetail";
    }
    @RequestMapping("/toClassDetail")
    public String toClassDetail(Model model,HttpSession session,@RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "10") Integer rows,String user_code,String user_name, String user_cls){


        ClassList classList=(ClassList)session.getAttribute("ClassList");
        model.addAttribute("Class",classList);
        int linkClass=classList.getClass_id();
        Page<User> userPage=userService.selectAllStudent(page,rows,user_code,user_name,user_cls,linkClass);
        Page<User> notInClass=userService.selectNotInClassStudent(page,rows,user_code,user_name,user_cls,linkClass);
        model.addAttribute("Student",userPage);
        model.addAttribute("NotInClass",notInClass);
        return "Class/classDetail";
    }
    @RequestMapping("/addStudentToClass")
    @ResponseBody
    public String addStudentToClass(Integer id,HttpSession httpSession){
        out.println(id);
        User_Class user_class=new User_Class();
        user_class.setUser_id(id);
        ClassList classList=(ClassList)httpSession.getAttribute("ClassList");
        user_class.setClass_id(classList.getClass_id());
        int row=classService.addStudentToClass(user_class);
        if (row>0){
            return "OK";
        }else {
            return "False";
        }

    }
    @RequestMapping("addMoreStudentToClass")
    @ResponseBody
    public String addMoreStudentToClass(HttpServletRequest request, HttpSession httpSession){
     String studentList=request.getParameter("student");
     String[] s=null;
     s=studentList.split("-");
     for (int i=0;i<s.length;i++){
         System.out.println(s[i]);
     }
       ClassList classList= (ClassList) httpSession.getAttribute("ClassList");
     User_Class user_class=new User_Class();
     user_class.setClass_id(classList.getClass_id());
     int count=0;
     for (int i=0;i<s.length;i++){
         int g=Integer.valueOf(s[i]);
         User user=userService.findUserById(g);
         System.out.println(user.toString());
         user_class.setUser_id(user.getUser_id());
         user_class.setUser_class_type(user.getUser_type());
         System.out.println(user_class);
         count+=classService.addUser_Class(user_class);
     }
     if (count==s.length){
         return "OK";
     }else {
         return "False";
     }
    }
}