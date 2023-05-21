package com.tech.blog.dao;

import com.tech.blog.entity.Progress;
import com.tech.blog.servlet.SaveProgressServlet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class progressDao {
	private Connection con;

	public progressDao(Connection con) {
		this.con = con;
	}
	
	public boolean SaveProgress(Progress progress) {
		  boolean f = false;
	        try {
	            //user -->database
                
	            String query = "insert into progress(user_id,course_name,progress_percent) values (?,?,?)";
	            PreparedStatement pstmt = this.con.prepareStatement(query);
	            pstmt.setInt(1,progress.getUser_id());
	            pstmt.setString(2, progress.getCourse_name());
	            pstmt.setString(3, progress.getProgress_percentage());
	          

	            pstmt.executeUpdate();
	            f = true;
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return f;

	}
	
	public boolean getProgress(Progress progress) throws SQLException {
		  boolean f = false;
		String q = "SELECT * FROM progress WHERE user_id = ? AND course_name = ?";
		 PreparedStatement ps = this.con.prepareStatement(q);
		 ps.setInt(1, 1); // Replace with actual user ID
         ps.setString(2, "Course Name"); // Replace with actual course name
         ResultSet rs = ps.executeQuery();
       
         while (rs.next()) {
            progress.setCourse_name(rs.getString("course_name"));
            progress.setProgress_percentage(rs.getString("progress_percent"));
            
            
            
         }
         f= true;
         con.close();
		 
         return f;
	}
	
}
