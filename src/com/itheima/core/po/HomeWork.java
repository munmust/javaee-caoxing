package com.itheima.core.po;

import java.util.Date;

public class HomeWork {
    private int homework_id;
    private String homework_name;
    private String homework_des;
    private Date create_time;
    private Date end_time;
    private int homework_type;
    private int allstudent;
    private int homeworkok;

    public int getAllstudent() {
        return allstudent;
    }

    public void setAllstudent(int allstudent) {
        this.allstudent = allstudent;
    }

    public int getHomeworkok() {
        return homeworkok;
    }

    public void setHomeworkok(int homeworkok) {
        this.homeworkok = homeworkok;
    }

    public int getHomework_type() {
        return homework_type;
    }

    public void setHomework_type(int homework_type) {
        this.homework_type = homework_type;
    }

    public int getHomework_id() {
        return homework_id;
    }

    public void setHomework_id(int homework_id) {
        this.homework_id = homework_id;
    }

    public String getHomework_name() {
        return homework_name;
    }

    public void setHomework_name(String homework_name) {
        this.homework_name = homework_name;
    }

    public String getHomework_des() {
        return homework_des;
    }

    public void setHomework_des(String homework_des) {
        this.homework_des = homework_des;
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
        return "HomeWork{" +
                "homework_id=" + homework_id +
                ", homework_name='" + homework_name + '\'' +
                ", homework_des='" + homework_des + '\'' +
                ", create_time=" + create_time +
                ", end_time=" + end_time +
                ", homework_type=" + homework_type +
                '}';
    }
}
