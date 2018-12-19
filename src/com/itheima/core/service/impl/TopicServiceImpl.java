package com.itheima.core.service.impl;

import com.itheima.common.utils.Page;
import com.itheima.core.dao.TopicDao;
import com.itheima.core.po.HomeWorkOK;
import com.itheima.core.po.HomeWork_Topic;
import com.itheima.core.po.TopicList;
import com.itheima.core.service.TopicService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class TopicServiceImpl implements TopicService {
    @Autowired
    TopicDao topicDao;
    @Override
    public List<TopicList> findAllTopic(int homework_id) {
        return topicDao.findAllTopic(homework_id);
    }

    @Override
    public List<TopicList> findAllTopicChoice(int homework_id) {
        return topicDao.findAllTopicChoice(homework_id);
    }

    @Override
    public List<TopicList> findAllTopicText(int homework_id) {
        return topicDao.findAllTopicText(homework_id);
    }

    @Override
    public List<TopicList> findAllTopicDoc(int homework_id) {
        return topicDao.findAllTopicDoc(homework_id);
    }

    @Override
    public TopicList findTopicByObject(TopicList topicList) {
        return topicDao.findTopicByObject(topicList);
    }

    @Override
    public TopicList findTopicById(int topic_id) {
        return topicDao.findTopicById(topic_id);
    }

    @Override
    public int addTopic(TopicList topicList) {
        return topicDao.addTopic(topicList);
    }

    @Override
    public int addHomeWork_Topic(HomeWork_Topic homeWork_topic) {
        return topicDao.addHomeWork_Topic(homeWork_topic);
    }

    @Override
    public int deleteTopicWithHomeWork(HomeWork_Topic homeWork_topic) {
        return topicDao.deleteTopicWithHomeWork(homeWork_topic);
    }

    @Override
    public Page<TopicList> selectAllTopic(Integer page, Integer rows, String topic_name, String topic_des ,int linkHomeWork) {
        TopicList topicList=new TopicList();
        if (StringUtils.isNotBlank(topic_name)){
            topicList.setTopic_name(topic_name);
        }
        if (StringUtils.isNotBlank(topic_des)){
            topicList.setTopic_des(topic_des);
        }
        topicList.setLinkHomeWork(linkHomeWork);
        topicList.setStart((page-1)*rows);
        topicList.setRows(rows);
        List<TopicList> topicListList=topicDao.selectAllTopic(topicList);
        System.out.println(topicListList);
        Integer count=topicDao.selectAllTopicCount(topicList);
        System.out.println(count);
        Page<TopicList> result=new Page<>();
        result.setPage(page);
        result.setRows(topicListList);
        result.setSize(rows);
        result.setTotal(count);
        return result;
    }

    @Override
    public int homeworkOK(HomeWorkOK homeWorkOK) {
        return topicDao.homeworkOK(homeWorkOK);
    }


}
