package com.itheima.core.po;

import org.springframework.web.multipart.MultipartFile;

import java.util.Date;

public class ClassList {
private int class_id;
private String class_name;
private String Class_des;
private int create_user_id;
private String create_user_name;
private Date create_time;
private String class_img;
private MultipartFile img;

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
        return Class_des;
    }

    public void setClass_des(String class_des) {
        Class_des = class_des;
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

    public String getClass_img() {
        return class_img;
    }

    public void setClass_img(String class_img) {
        this.class_img = class_img;
    }

    public MultipartFile getImg() {
        return img;
    }

    public void setImg(MultipartFile img) {
        this.img = img;
    }

    @Override
    public String toString() {
        return "ClassList{" +
                "class_id=" + class_id +
                ", class_name='" + class_name + '\'' +
                ", Class_des='" + Class_des + '\'' +
                ", create_user_id=" + create_user_id +
                ", create_user_name='" + create_user_name + '\'' +
                ", create_time=" + create_time +
                ", class_img='" + class_img + '\'' +
                '}';
    }
}
