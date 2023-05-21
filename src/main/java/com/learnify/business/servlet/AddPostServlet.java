package com.learnify.business.servlet;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import com.learnify.business.dao.*;
import com.learnify.business.entity.*;

import com.learnify.business.helper.*;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@MultipartConfig
public class AddPostServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            int cid = Integer.parseInt(request.getParameter("cid"));
            String pTitle = request.getParameter("pTitle");
            String pShortDescription = request.getParameter("pShortDescription");
            String pDescription = request.getParameter("pDescription");
            Part part = request.getPart("pic");
            String pAbout = request.getParameter("pSpecialization");
            String pInstructor = request.getParameter("pInstructor");
            String pNote = request.getParameter("pNote");
            
           
            Part courseVideo1 = request.getPart("courseVideo1");
            String video1 = courseVideo1.getSubmittedFileName();
//          
         
            Part courseVideo2 = request.getPart("courseVideo2");
            String video2 = courseVideo2.getSubmittedFileName();
            
            Part courseVideo3 = request.getPart("courseVideo3");
            String video3 = courseVideo1.getSubmittedFileName();
//          
         
            Part courseVideo4 = request.getPart("courseVideo4");
            String video4 = courseVideo4.getSubmittedFileName();
            
//            getting currentuser id
            HttpSession session = request.getSession();
            BUser user = (BUser) session.getAttribute("currentUser");
            
            Post p = new Post(pTitle, pShortDescription, pDescription, part.getSubmittedFileName(), null, cid,pAbout,pInstructor,pNote,video1,video2,video3,video4);
            PostDao dao = new PostDao(ConnectionProvider.getConnection());
            
            
            if (dao.savePost(p)) {
//             upload image
                String path = request.getRealPath("/") + "businessPics" + File.separator + part.getSubmittedFileName();
                Bhelper.saveFile(part.getInputStream(), path); 
                
             // Save the course video files to the server
                String video1Path = request.getRealPath("/") + "courseVideo" + File.separator + courseVideo1.getSubmittedFileName();
                Bhelper.saveFile(courseVideo1.getInputStream(), video1Path); 

                String video2Path = request.getRealPath("/") + "courseVideo" + File.separator + courseVideo2.getSubmittedFileName();
                Bhelper.saveFile(courseVideo2.getInputStream(), video2Path);
                
                String video3Path = request.getRealPath("/") + "courseVideo" + File.separator + courseVideo3.getSubmittedFileName();
                Bhelper.saveFile(courseVideo1.getInputStream(), video3Path); 

                String video4Path = request.getRealPath("/") + "courseVideo" + File.separator + courseVideo4.getSubmittedFileName();
                Bhelper.saveFile(courseVideo2.getInputStream(), video4Path);
                
                
                out.println("done");
            } else {
                out.println("error");
            }
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);   
        
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}