package com.tech.blog.dao;

import com.tech.blog.entity.User;
import java.sql.*;

public class UserDao {

    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }

    //method to insert user to data base:
    public boolean saveUser(User user) {
        boolean f = false;
        try {
            //user -->database

            String query = "insert into User(name,email,password,gender,about) values (?,?,?,?,?)";
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
    public User getUserByEmailAndPassword(String email, String password) {
        User user = null;

        try {

            String query = "select * from User where email =? and password=?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, email);
            pstmt.setString(2, password);
            
    
             
            ResultSet set = pstmt.executeQuery();

            if (set.next()) {
                user = new User();

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
                user.setCollegeName(set.getString("collegeName"));
                user.setUniversityName(set.getString("universityName"));
                user.setTotalProject(set.getString("totalProject"));
                user.setEnglishLevel(set.getString("englishLevel"));
                user.setAvailability(set.getString("availability"));
                user.setCourseName(set.getString("courseName"));

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }

    
    public boolean updateInfo(User user) {

        boolean f = false;
        try {

        	 String query = "update User set name=? , email=? , password=? , gender=? ,about=?, profile=?, collegeName= ?, universityName= ?, totalProject=?, englishLevel=?, availability=? where  id =?";
             PreparedStatement p = con.prepareStatement(query);
             p.setString(1, user.getName());
             p.setString(2, user.getEmail());
             p.setString(3, user.getPassword());
             p.setString(4, user.getGender());
             p.setString(5, user.getAbout());
             p.setString(6, user.getProfile());
             p.setString(7, user.getCollegeName());
             p.setString(8, user.getUniversityName());
             p.setString(9, user.getTotalProject());
             p.setString(10, user.getEnglishLevel());
             p.setString(11, user.getAvailability());
             p.setInt(12, user.getId());
            
            

            p.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
}
