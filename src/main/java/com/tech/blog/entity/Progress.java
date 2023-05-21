package com.tech.blog.entity;

public class Progress {
      private int User_id;
      private String course_name;
      private String progress_percentage;
      
      public Progress( int User_id, String course_name, String progress_percentage) {
		this.User_id = User_id;
		this.course_name = course_name;
		this.progress_percentage = progress_percentage;
	}
      
      public Progress( String course_name, String progress_percentage) {
  	
  		this.course_name = course_name;
  		this.progress_percentage = progress_percentage;
  	}
      
      public String getCourse_name() {
		return course_name;
	}
      public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}
      
      public String getProgress_percentage() {
		return progress_percentage;
	}
      public void setProgress_percentage(String progress_percentage) {
		this.progress_percentage = progress_percentage;
	}
      public int getUser_id() {
		return User_id;
	}
      public void setUser_id(int user_id) {
		User_id = user_id;
	}
}
