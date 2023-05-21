package com.tech.blog.servlet;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entity.*;
import com.tech.blog.helper.ConnectionProvider;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



//@WebServlet("/RegisterServlet")
@MultipartConfig
public class RegisterServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   response.setContentType("text/html");
	   PrintWriter out = response.getWriter();
	   
	   String check = request.getParameter("check");
	   System.out.println(check);
	   if(check == null) {
		   out.print("Box is Empty!!");
	   }else {
		   String name = request.getParameter("user_name");
		   String email = request.getParameter("user_email");
		   String password = request.getParameter("user_password");
		   String gender = request.getParameter("gender");
		   String about = request.getParameter("user_about");
		   System.out.println(about);
		   User user = new User(name, email, password, gender, about);
		
		   
		   	UserDao dao = new UserDao(ConnectionProvider.getConnection());
		   	System.out.println(user.getName());
		   	if(dao.saveUser(user)) {
		   		out.print("done");
		   	}else {
		   		out.print("error");
		   	}
	   }
	}

}
