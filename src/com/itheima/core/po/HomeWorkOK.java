package com.itheima.core.po;

public class HomeWorkOK {
    private int class_id;
    private int user_id;
    private int homework_id;
    private int homeworkok;
    @Override
    public String toString() {
        return "HomeWorkOK{" +
                "class_id=" + class_id +
                ", user_id=" + user_id +
                ", homework_id=" + homework_id +
                ", homeworkok=" + homeworkok +
                '}';
    }

    public int getClass_id() {
        return class_id;
    }

    public void setClass_id(int class_id) {
        this.class_id = class_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getHomework_id() {
        return homework_id;
    }

    public void setHomework_id(int homework_id) {
        this.homework_id = homework_id;
    }

    public int getHomeworkok() {
        return homeworkok;
    }

    public void setHomeworkok(int homeworkok) {
        this.homeworkok = homeworkok;
    }
}
