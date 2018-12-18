package com.itheima.core.po;

public class TopicList {
    private int topic_id;
    private String topic_name;
    private String topic_des;
    private int topic_type;
    private String topic_A;
    private String topic_B;
    private String topic_C;
    private String topic_D;
    private String topic_text;
    private String topic_answer;
    private Integer start;
    private Integer rows;

    public int getLinkHomeWork() {
        return linkHomeWork;
    }

    public void setLinkHomeWork(int linkHomeWork) {
        this.linkHomeWork = linkHomeWork;
    }

    private int linkHomeWork;
    public Integer getStart() {
        return start;
    }

    public void setStart(Integer start) {
        this.start = start;
    }

    public Integer getRows() {
        return rows;
    }

    public void setRows(Integer rows) {
        this.rows = rows;
    }

    public int getTopic_id() {
        return topic_id;
    }

    public void setTopic_id(int topic_id) {
        this.topic_id = topic_id;
    }

    public String getTopic_name() {
        return topic_name;
    }

    public void setTopic_name(String topic_name) {
        this.topic_name = topic_name;
    }

    public String getTopic_des() {
        return topic_des;
    }

    public void setTopic_des(String topic_des) {
        this.topic_des = topic_des;
    }


    public String getTopic_A() {
        return topic_A;
    }

    public void setTopic_A(String topic_A) {
        this.topic_A = topic_A;
    }

    public String getTopic_C() {
        return topic_C;
    }

    public void setTopic_C(String topic_C) {
        this.topic_C = topic_C;
    }

    public String getTopic_D() {
        return topic_D;
    }

    public void setTopic_D(String topic_D) {
        this.topic_D = topic_D;
    }

    public String getTopic_text() {
        return topic_text;
    }

    public void setTopic_text(String topic_text) {
        this.topic_text = topic_text;
    }

    public String getTopic_answer() {
        return topic_answer;
    }

    public void setTopic_answer(String topic_answer) {
        this.topic_answer = topic_answer;
    }

    public int getTopic_type() {
        return topic_type;
    }

    public void setTopic_type(int topic_type) {
        this.topic_type = topic_type;
    }

    public String getTopic_B() {
        return topic_B;
    }

    public void setTopic_B(String topic_B) {
        this.topic_B = topic_B;
    }

    @Override
    public String toString() {
        return "TopicList{" +
                "topic_id=" + topic_id +
                ", topic_name='" + topic_name + '\'' +
                ", topic_des='" + topic_des + '\'' +
                ", topic_type=" + topic_type +
                ", topic_A='" + topic_A + '\'' +
                ", topic_B='" + topic_B + '\'' +
                ", topic_C='" + topic_C + '\'' +
                ", topic_D='" + topic_D + '\'' +
                ", topic_text='" + topic_text + '\'' +
                ", topic_answer='" + topic_answer + '\'' +
                '}';
    }
}
