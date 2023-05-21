package com.learnify.business.servlet;


import com.learnify.business.dao.BUserDao;
import com.learnify.business.entity.*;
import com.learnify.business.helper.*;



import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Durgesh
 */

@MultipartConfig

public class businessRegisterServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

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
			   BUser user = new BUser(name, email, password, gender, about);
			
			   
			   	BUserDao dao = new BUserDao(ConnectionProvider.getConnection());
			   	System.out.println(user.getName());
			   	if(dao.saveUser(user)) {
			   		out.print("done");
			   	}else {
			   		out.print("error");
			   	}
		   }
		}


}