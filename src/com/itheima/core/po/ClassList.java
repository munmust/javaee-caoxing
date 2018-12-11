package com.itheima.core.po;

import java.util.Date;

public class ClassList {
    private int class_id;
    private String class_name;
    private String class_des;
    private User user;
    private int create_user_id;
    private String create_user_name;
    private Date create_time;
    private Date end_time;

    public int getClass_id() {
        return class_id;
    }

    public void setClass_id(int class_id) {
        this.class_id = class_id;
    }

    public String getClass_name() {
        return class_name;
    }

    public void setClass_name(String class_name) {
        this.class_name = class_name;
    }

    public String getClass_des() {
        return class_des;
    }

    public void setClass_des(String class_des) {
        this.class_des = class_des;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public int getCreate_user_id() {
        return create_user_id;
    }

    public void setCreate_user_id(int create_user_id) {
        this.create_user_id = create_user_id;
    }

    public String getCreate_user_name() {
        return create_user_name;
    }

    public void setCreate_user_name(String create_user_name) {
        this.create_user_name = create_user_name;
    }

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    public Date getEnd_time() {
        return end_time;
    }

    public void setEnd_time(Date end_time) {
        this.end_time = end_time;
    }

    @Override
    public String toString() {
        return "ClassList{" +
                "class_id=" + class_id +
                ", class_name='" + class_name + '\'' +
                ", class_des='" + class_des + '\'' +
                ", create_user_id=" + create_user_id +
                ", create_user_nam='" + create_user_name + '\'' +
                ", create_time=" + create_time +
                ", end_time=" + end_time +
                '}';
    }
}
