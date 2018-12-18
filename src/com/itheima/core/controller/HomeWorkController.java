package com.itheima.core.controller;

import com.itheima.core.po.ClassList;
import com.itheima.core.po.Class_HomeWork;
import com.itheima.core.po.HomeWork;
import com.itheima.core.service.HomeWorkSercice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class HomeWorkController {
    @Autowired
    HomeWorkSercice homeWorkSercice;

    @RequestMapping("/toHomeWork")
    public String toHomeWork(Model model, HttpSession httpSession) {
        ClassList classList = (ClassList) httpSession.getAttribute("ClassList");
        model.addAttribute("Class", classList);
        System.out.println(classList);
        List<HomeWork> homeWorks = homeWorkSercice.findAllHomeWork(classList.getClass_id());
        System.out.println(homeWorks);
        System.out.println(classList.getClass_id());
        model.addAttribute("HomeWorkList", homeWorks);
        return "Class/HomeWork";
    }

    @RequestMapping("/addHomeWork")
    public String addHomeWork(String homework_name, String homework_des, String start_time, String endTime, Model model, HttpSession httpSession) throws ParseException {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date create_time = null;
        create_time = format.parse(start_time);
        Date end_time = null;
        end_time = format.parse(endTime);
        HomeWork homeWork = new HomeWork();
        homeWork.setCreate_time(create_time);
        homeWork.setEnd_time(end_time);
        homeWork.setHomework_des(homework_des);
        homeWork.setHomework_name(homework_name);
        int rows = homeWorkSercice.addHomeWork(homeWork);
        HomeWork homeWork1 = homeWorkSercice.findHomeWorkByName(homework_name);
        Class_HomeWork class_homeWork = new Class_HomeWork();
        ClassList classList;
        classList = (ClassList) httpSession.getAttribute("ClassList");
        class_homeWork.setClass_id(classList.getClass_id());
        class_homeWork.setHomework_id(homeWork1.getHomework_id());
        int rowss = homeWorkSercice.addClass_HomeWork(class_homeWork);
        if (rowss > 0) {
            return "redirect:toHomeWork";
        } else {
            return "redirect:toHomeWork";
        }
    }

    @RequestMapping("/updateHomeWorkType")
    @ResponseBody
    public String updateHomeWorkType(HttpServletRequest request, HttpSession httpSession) {
        String s = request.getParameter("homework_id");
        System.out.println(s);
        int homework_id = Integer.valueOf(s);
        System.out.println(homework_id);
        HomeWork homeWork = homeWorkSercice.findHomeWorkById(homework_id);

        System.out.println(homeWork.toString());
        homeWork.setHomework_type(1);
        System.out.println(homeWork.toString());
        int row = homeWorkSercice.updateHomeWorkType(homeWork);
        if (row > 0) {
            return "OK";
        } else {
            return "FALSE";
        }
    }

    @RequestMapping("/toUpdateHomeWork")
    @ResponseBody
    public Object toUpdateHomeWork(Model model, HttpServletRequest httpServletRequest, HttpSession httpSession) {
        String g = httpServletRequest.getParameter("homework_id");
        System.out.println(g);
        int homework_id = Integer.valueOf(g);
        System.out.println(homework_id);
        HomeWork NowHomeWork = homeWorkSercice.findHomeWorkById(homework_id);

        return NowHomeWork;
    }

    @RequestMapping("/updateHomeWork")
    public String updateHomeWork(String homework_name, String homework_des, String start_time, String endTime, Model model, HttpSession httpSession) throws ParseException {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date create_time = null;
        create_time = format.parse(start_time);
        Date end_time = null;
        end_time = format.parse(endTime);
        HomeWork homeWork = (HomeWork) httpSession.getAttribute("HomeWork");
        homeWork.setCreate_time(create_time);
        homeWork.setEnd_time(end_time);
        homeWork.setHomework_des(homework_des);
        homeWork.setHomework_name(homework_name);
        int rows=homeWorkSercice.updateHomeWorkType(homeWork);
        if (rows>0){
            return "redirect:toHomeWork";
        }else {
            return "redirect:toHomeWork";
        }
    }

    @RequestMapping("/delectHomeWork")
    @ResponseBody
    public String deleteHomeWork( HttpServletRequest httpServletRequest,HttpSession httpSession){
        String ss=httpServletRequest.getParameter("homework_id");
        int homework_id=Integer.valueOf(ss);
        ClassList classList= (ClassList) httpSession.getAttribute("ClassList");
        Class_HomeWork class_homeWork=new Class_HomeWork();
        class_homeWork.setClass_id(classList.getClass_id());
        class_homeWork.setHomework_id(homework_id);
        System.out.println(class_homeWork.toString());
        int s=homeWorkSercice.deleteClass_Home(class_homeWork);
        System.out.println(s);
        int sss=homeWorkSercice.deleteHomeWork(homework_id);
        System.out.println(sss);
        if (s>0&&sss>0){
            return "OK";
        }else {
            return "False";
        }
    }

}
