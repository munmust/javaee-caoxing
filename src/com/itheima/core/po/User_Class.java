package com.itheima.core.po;

public class User_Class {
    private int user_id;
    private int class_id;
    private int user_class_type;

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getClass_id() {
        return class_id;
    }

    public void setClass_id(int class_id) {
        this.class_id = class_id;
    }

    public int getUser_class_type() {
        return user_class_type;
    }

    public void setUser_class_type(int user_class_type) {
        this.user_class_type = user_class_type;
    }

    @Override
    public String toString() {
        return "User_Class{" +
                "user_id=" + user_id +
                ", class_id=" + class_id +
                ", user_class_type=" + user_class_type +
                '}';
    }
}
