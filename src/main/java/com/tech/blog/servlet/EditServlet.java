package com.tech.blog.servlet;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.tech.blog.dao.UserDao;

import com.tech.blog.entity.User;
import com.tech.blog.helper.ConnectionProvider;
import com.tech.blog.entity.Message;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.tech.blog.helper.*;

@MultipartConfig
public class EditServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try (PrintWriter out = response.getWriter()) {

//            fetch all data
//			int userId = Integer.parseInt(request.getParameter("user_id"));
			String userName = request.getParameter("user_name");
			String userEmail = request.getParameter("user_email");
			String userPassword = request.getParameter("user_password");
			String userAbout = request.getParameter("user_about");
			String userGender = request.getParameter("user_gender");
//            String userProfile = request.getParameter("user_profile");
			String collegeName = request.getParameter("college_name");
			String universityName = request.getParameter("university_name");
			String totalProject = request.getParameter("total_project");
			String englishLevel = request.getParameter("english_level");
			String availabilty = request.getParameter("availability");
			
            Part part = request.getPart("user_profile");

            String imageName = part.getSubmittedFileName();
//        
		
			
			
			HttpSession s = request.getSession();
			User user = (User) s.getAttribute("currentUser");
//			user.setId(userId);
			user.setName(userName);
			user.setEmail(userEmail);
			user.setPassword(userPassword);
			user.setGender(userGender);
			user.setAbout(userAbout);
//            user.setProfile(userProfile);
			user.setCollegeName(collegeName);
			user.setUniversityName(universityName);
			user.setTotalProject(totalProject);
			user.setEnglishLevel(englishLevel);
			user.setAvailability(availabilty);

			
			String oldFile = user.getProfile();
			   user.setProfile(imageName);
//            user.setProfile(imageName);

			// update database....
			UserDao userDao = new UserDao(ConnectionProvider.getConnection());

			
			
			
            boolean ans = userDao.updateInfo(user);
            
            if (ans) {

                String path = request.getRealPath("/") + "pics" + File.separator + user.getProfile();
System.out.println(path);
                //start of photo work
                //delete code
                String pathOldFile = request.getRealPath("/") + "pics" + File.separator + oldFile;

                if (!oldFile.equals("default.png")) {
                    helper.deleteFile(pathOldFile);
                }

                if (helper.saveFile(part.getInputStream(), path)) {
                    out.println("Profile updated...");
                    Message msg = new Message("Profile details updated...", "success", "alert-success");
                    s.setAttribute("msg", msg);
                   
                   
                } else {
                    //////////////
                    Message msg = new Message("Something went wrong..", "error", "alert-danger");
                    s.setAttribute("msg", msg);
                }

                //end of phots work
            } else {
                out.println("not updated..");
                Message msg = new Message("Something went wrong..", "error", "alert-danger");
                s.setAttribute("msg", msg);
            }
            response.sendRedirect("profile_page.jsp"); 
		}
	
}
}
