package com.tech.blog.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tech.blog.dao.UserDao;
import com.tech.blog.dao.progressDao;
import com.tech.blog.entity.Progress;
import com.tech.blog.entity.User;
import com.tech.blog.helper.ConnectionProvider;

public class SaveProgressServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	   response.setContentType("text/html");
    	   PrintWriter out = response.getWriter();
    	   List<Progress> progressList = new ArrayList<>();
    	   
    	   
    	   Progress progress = null;
    	String userId =request.getParameter("userId") ;
    	String courseName = request.getParameter("courseName");
        String progressPercent = request.getParameter("progressPercent");
        
        System.out.println(userId);
        System.out.println(courseName);
        System.out.println(progressPercent);
        if (userId != null) {
            int userIdstr = Integer.parseInt(userId);
            // Rest of the code...
         progress = new Progress(userIdstr,courseName,progressPercent);
        } else {
            // Handle the case when the userId parameter is null
          	progressDao dao = new progressDao(ConnectionProvider.getConnection());
     	   
    	   	if(dao.SaveProgress(progress)) {
    	   		out.print("done");
    	   	}else {
    	   		out.print("error");
    	   	}
    	   	progressList.add(progress);
    	    request.setAttribute("progressList", progressList);
            request.getRequestDispatcher("courseProgress.jsp").forward(request, response);
        }
      
		
		   
	 
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
