package com.po;
//用户类
public class User {
    private String username;
    private String userPwd;

    public User() {
        username = "";
        userPwd = "";
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserPwd() {
        return userPwd;
    }

    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd;
    }
}
