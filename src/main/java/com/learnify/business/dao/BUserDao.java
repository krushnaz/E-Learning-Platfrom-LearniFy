package com.learnify.business.dao;


import com.learnify.business.entity.*;

import java.sql.*;

public class BUserDao {

    private Connection con;

    public BUserDao(Connection con) {
        this.con = con;
    }

    //method to insert user to data base:
    public boolean saveUser(BUser user) {
        boolean f = false;
        try {
            //user -->database

            String query = "insert into businessAccount(name,email,password,gender,about) values (?,?,?,?,?)";
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setString(1, user.getName());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getPassword());
            pstmt.setString(4, user.getGender());
            pstmt.setString(5, user.getAbout());

            pstmt.executeUpdate();
            f = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;

    }

    //get user by useremail and userpassword:
    public BUser getUserByEmailAndPassword(String email, String password) {
        BUser user = null;
System.out.println(email+"      "+password);
        try {

            String query = "select * from businessAccount where email =? and password=?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, email);
            pstmt.setString(2, password);

            ResultSet set = pstmt.executeQuery();

            if (set.next()) {
                user = new BUser();

//             data from db
                String name = set.getString("name");
//             set to user object
                user.setName(name);

                user.setId(set.getInt("id"));
                user.setEmail(set.getString("email"));
                user.setPassword(set.getString("password"));
                user.setGender(set.getString("gender"));
                user.setAbout(set.getString("about"));
                user.setDateTime(set.getTimestamp("rdate"));
                user.setProfile(set.getString("profile"));

               
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }

    public boolean updateUser(BUser user) {

        boolean f = false;
        try {

            String query = "update businessAccount set name=? , email=? , password=? , gender=? ,about=? , profile=? where  id =?";
            PreparedStatement p = con.prepareStatement(query);
            p.setString(1, user.getName());
            p.setString(2, user.getEmail());
            p.setString(3, user.getPassword());
            p.setString(4, user.getGender());
            p.setString(5, user.getAbout());
            p.setString(6, user.getProfile());
            p.setInt(7, user.getId());

            p.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

//    public BUser getUserByUserId(int userId) {
//        BUser user = null;
//        try {
//            String q = "select * from businessAccount where id=?";
//            PreparedStatement ps = this.con.prepareStatement(q);
//            ps.setInt(1, userId);
//            ResultSet set = ps.executeQuery();
//            if (set.next()) {
//                user = new BUser();
//
////             data from db
//                String name = set.getString("name");
////             set to user object
//                user.setName(name);
//
//                user.setId(set.getInt("id"));
//                user.setEmail(set.getString("email"));
//                user.setPassword(set.getString("password"));
//                user.setGender(set.getString("gender"));
//                user.setAbout(set.getString("about"));
//                user.setDateTime(set.getTimestamp("rdate"));
//                user.setProfile(set.getString("profile"));
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//
//        return user;
//    }
}		
