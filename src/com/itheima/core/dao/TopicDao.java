package com.itheima.core.dao;

import com.itheima.core.po.HomeWorkOK;
import com.itheima.core.po.HomeWork_Topic;
import com.itheima.core.po.TopicList;

import java.util.List;

public interface TopicDao {
    public List<TopicList> findAllTopic(int homework_id);
    public List<TopicList> findAllTopicChoice(int homework_id);
    public List<TopicList> findAllTopicText(int homework_id);
    public List<TopicList> findAllTopicDoc(int homework_id);
    public TopicList findTopicByObject(TopicList topicList);
    public TopicList findTopicById(int id);
    public int addTopic(TopicList topicList);
    public int deleteTopicWithHomeWork(HomeWork_Topic homeWork_topic);
    public int addHomeWork_Topic(HomeWork_Topic homeWork_topic);
    public List<TopicList> selectAllTopic(TopicList topicList);
    public Integer selectAllTopicCount(TopicList topicList);
    public int homeworkOK(HomeWorkOK homeWorkOK);
}
