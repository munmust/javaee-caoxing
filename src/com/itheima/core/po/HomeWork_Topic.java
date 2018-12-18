package com.itheima.core.po;

public class HomeWork_Topic {
    private int homework_id;
    private int topic_id;

    public int getHomework_id() {
        return homework_id;
    }

    public void setHomework_id(int homework_id) {
        this.homework_id = homework_id;
    }

    public int getTopic_id() {
        return topic_id;
    }

    public void setTopic_id(int topic_id) {
        this.topic_id = topic_id;
    }

    @Override
    public String toString() {
        return "HomeWork_Topic{" +
                "homework_id=" + homework_id +
                ", topic_id=" + topic_id +
                '}';
    }
}
