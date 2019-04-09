package com.dao;

import com.po.User;

public class UserDAO {
    public boolean userLogin(User user) {
        return user.getUsername().equals("heythere") &&
                user.getUserPwd().equals("123456");
    }
}
