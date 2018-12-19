package com.itheima.core.service;

import com.itheima.common.utils.Page;
import com.itheima.core.po.HomeWorkOK;
import com.itheima.core.po.HomeWork_Topic;
import com.itheima.core.po.TopicList;

import java.util.List;

public interface TopicService {
    public List<TopicList>  findAllTopic(int homework_id);
    public List<TopicList> findAllTopicChoice(int homework_id );
    public List<TopicList> findAllTopicText(int homework_id);
    public List<TopicList> findAllTopicDoc(int homework_id);
    public TopicList findTopicByObject(TopicList topicList);
    public TopicList findTopicById(int topic_id);
    public int addTopic(TopicList topicList);
    public int addHomeWork_Topic(HomeWork_Topic homeWork_topic);
    public int deleteTopicWithHomeWork(HomeWork_Topic homeWork_topic);
    public Page<TopicList> selectAllTopic(Integer page,Integer rows,
                                       String topic_name,String topic_des,int linkHomeWork);
    public int homeworkOK(HomeWorkOK homeWorkOK);

}
