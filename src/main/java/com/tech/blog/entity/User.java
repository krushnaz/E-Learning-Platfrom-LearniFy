package com.tech.blog.entity;

import java.sql.*;

public class User {

    private int id;
    private String name;
    private String email;
    private String password;
    private String gender;
    private Timestamp dateTime;
    private String about;
    private String profile;
    
    // educational info
    
    private String collegeName;
    private String universityName;
    private String totalProject;
    private String englishLevel;
    private String availability;
    
    //course info
    private String courseName;

    public User(int id, String name, String email, String password, String gender, Timestamp dateTime, String about, String collegeName, String universityName,String totalProject,String englishLevel, String availability, String courseName) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.gender = gender;
        this.dateTime = dateTime;
        this.about = about;
        this.collegeName = collegeName;
        this.universityName = universityName;
        this.totalProject = totalProject;
        this.englishLevel = englishLevel;
        this.courseName = collegeName;
    }

    public User() {
    }
    public User(String name, String email, String password, String gender,  String about) {
    	   this.name = name;
           this.email = email;
           this.password = password;
           this.gender = gender;       
           this.about = about;
    }


    public User(String name, String email, String password, String gender,  String about, String collegeName, String universityName,String totalProject,String englishLevel, String availability,String courseName) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.gender = gender;       
        this.about = about;
        this.collegeName = collegeName;
        this.universityName = universityName;
        this.totalProject = totalProject;
        this.englishLevel = englishLevel;
        this.courseName = courseName;
        System.out.println("this is from user = "+email);

    }
    
    
    
    // education 
//    public User(int id, String name, String email, String password, String gender, String about , String collegeName, String universityName,String totalProject,String englishLevel, String availability ) {
//        this.id = id;
//        this.name = name;
//        this.email = email;
//        this.password = password;
//        this.gender = gender;
//        this.about = about;
//
//    }
    
//    getters and setters

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
    
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
        System.out.println("this is from user = "+password);
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Timestamp getDateTime() {
        return dateTime;
    }

    public void setDateTime(Timestamp dateTime) {
        this.dateTime = dateTime;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }
    
    public String getCollegeName() {
		return collegeName;
	}
    public void setCollegeName(String collegeName) {
		this.collegeName = collegeName;
	}
    
    public String getUniversityName() {
		return universityName;
	}
    public void setUniversityName(String universityName) {
		this.universityName = universityName;
	}
    
    public String getTotalProject() {
		return totalProject;
	}
    public void setTotalProject(String totalProject) {
		this.totalProject = totalProject;
	}
    
    public String getEnglishLevel() {
		return englishLevel;
	}
    public void setEnglishLevel(String englishLevel) {
		this.englishLevel = englishLevel;
	}
    
    public String getAvailability() {
		return availability;
	}
    public void setAvailability(String availability) {
		this.availability = availability;
	}
    
    public String getCourseName() {
		return courseName;
	}
    public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
    
    
    
    

}