package com.itheima.core.po;

public class User {
    private int user_id;
    private String user_code;
    private String user_password;
    private String user_name;
    private String user_cls;
    private Integer start;
    private Integer rows;
    private Integer linkClass;

    public Integer getLinkClass() {
        return linkClass;
    }

    public void setLinkClass(Integer linkClass) {
        this.linkClass = linkClass;
    }

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

    public String getUser_cls() {
        return user_cls;
    }

    public void setUser_cls(String user_cls) {
        this.user_cls = user_cls;
    }

    private int user_type;

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUser_code() {
        return user_code;
    }

    public void setUser_code(String user_code) {
        this.user_code = user_code;
    }

    public String getUser_password() {
        return user_password;
    }

    public void setUser_password(String user_password) {
        this.user_password = user_password;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public int getUser_type() {
        return user_type;
    }

    public void setUser_type(int user_type) {
        this.user_type = user_type;
    }

    @Override
    public String toString() {
        return "User{" +
                "user_id=" + user_id +
                ", user_code='" + user_code + '\'' +
                ", user_password='" + user_password + '\'' +
                ", user_name='" + user_name + '\'' +
                ", user_cls='" + user_cls + '\'' +
                ", user_type=" + user_type +
                '}';
    }
}
