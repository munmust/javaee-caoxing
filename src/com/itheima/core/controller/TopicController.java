package com.itheima.core.controller;

import com.itheima.common.utils.Page;
import com.itheima.core.po.HomeWork;
import com.itheima.core.po.HomeWork_Topic;
import com.itheima.core.po.TopicList;
import com.itheima.core.po.User;
import com.itheima.core.service.HomeWorkSercice;
import com.itheima.core.service.TopicService;
import org.apache.tools.ant.util.LeadPipeInputStream;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class TopicController {
@Autowired
    HomeWorkSercice homeWorkSercice;
@Autowired
    TopicService topicService;
    @RequestMapping("ToTopic")
    @ResponseBody
    public String toTopic(HttpServletRequest httpServletRequest,HttpSession httpSession){
       String s=httpServletRequest.getParameter("homework_id");
       int homework_id=Integer.valueOf(s);
       HomeWork homeWork=homeWorkSercice.findHomeWorkById(homework_id);
       httpSession.setAttribute("NowHomeWork",homeWork);
        return "ShowTopic";
    }
    @RequestMapping("ShowTopic")
    public String showTopic(Model model, HttpSession httpSession,@RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "10") Integer rows, String topic_name, String topic_des){
        HomeWork homeWork= (HomeWork) httpSession.getAttribute("NowHomeWork");
        int linkHomeWork=homeWork.getHomework_id();
        User user= (User) httpSession.getAttribute("User");
        List<TopicList> topicLists=topicService.findAllTopic(homeWork.getHomework_id());
        System.out.println(topicLists);
        List<TopicList> Choice=topicService.findAllTopicChoice(homeWork.getHomework_id());
        model.addAttribute("Choice",Choice);
        List<TopicList> Text=topicService.findAllTopicText(homeWork.getHomework_id());
        model.addAttribute("Text",Text);
        List<TopicList> Doc=topicService.findAllTopicDoc(homeWork.getHomework_id());
        model.addAttribute("Doc",Doc);
        Page<TopicList>  allTopic=topicService.selectAllTopic(page,rows,topic_name,topic_des,linkHomeWork);
        model.addAttribute("AllTopic",allTopic);
        return "Class/Topic";
    }

    @RequestMapping("/addTopic")
    public String addTopic(TopicList topicList,HttpSession httpSession,HttpServletRequest httpServletRequest) {
        HomeWork homeWork= (HomeWork) httpSession.getAttribute("NowHomeWork");
        System.out.println(topicList);
        System.out.println(homeWork.toString());
        HomeWork_Topic homeWork_topic=new HomeWork_Topic();
        homeWork_topic.setHomework_id(homeWork.getHomework_id());

        int rows = topicService.addTopic(topicList);
        TopicList topicList1=topicService.findTopicByObject(topicList);
        homeWork_topic.setTopic_id(topicList1.getTopic_id());
      int rowss=topicService.addHomeWork_Topic(homeWork_topic);
        if (rows > 0&& rowss>0) {
            return "redirect:ShowTopic";
        } else {
            return "redirect:toHomeWork";
        }
    }

    @RequestMapping("/addTopicToHomeWork")
    @ResponseBody
    public String addTopicToHomeWork(HttpServletRequest httpServletRequest,HttpSession httpSession){
       String s= httpServletRequest.getParameter("id");
       int topic_id=Integer.valueOf(s);
       HomeWork homeWork= (HomeWork) httpSession.getAttribute("NowHomeWork");
       HomeWork_Topic homeWork_topic=new HomeWork_Topic();
       homeWork_topic.setTopic_id(topic_id);
       homeWork_topic.setHomework_id(homeWork.getHomework_id());
       int row=topicService.addHomeWork_Topic(homeWork_topic);
       if (row>0){
           return "OK";
       }else {
           return "False";
       }
    }


    @RequestMapping("/addMoreTopicToHomeWork")
    @ResponseBody
    public String addMoreTopicToHomeWork(HttpSession httpSession,HttpServletRequest httpServletRequest){
        String topic_id=httpServletRequest.getParameter("topic");
        String[] s=null;
        s=topic_id.split("-");
        HomeWork homeWork= (HomeWork) httpSession.getAttribute("NowHomeWork");
        HomeWork_Topic homeWork_topic=new HomeWork_Topic();
        int count=0;
        for (int i=0;i<s.length;i++){
         int g=Integer.valueOf(s[i]);
            homeWork_topic.setHomework_id(homeWork.getHomework_id());
            homeWork_topic.setTopic_id(g);
            count+=topicService.addHomeWork_Topic(homeWork_topic);
        }
        if (count==s.length){
            return "OK";
        }
       else {
           return "False";
        }
    }


    @RequestMapping("/deleteTopicWithHomeWork")
    @ResponseBody
    public String deleteTopicWithHomeWork(HttpServletRequest httpServletRequest,HttpSession httpSession){
        String s=httpServletRequest.getParameter("id");
        int topic_id=Integer.valueOf(s);
        HomeWork homeWork= (HomeWork) httpSession.getAttribute("NowHomeWork");
        HomeWork_Topic homeWork_topic=new HomeWork_Topic();
        homeWork_topic.setTopic_id(topic_id);
        homeWork_topic.setHomework_id(homeWork.getHomework_id());
        int row=topicService.deleteTopicWithHomeWork(homeWork_topic);
        if (row>0){
            return "OK";
        }else {
            return "False";
        }
    }

}
