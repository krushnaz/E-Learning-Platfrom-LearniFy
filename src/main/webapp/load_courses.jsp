<%@page import="com.learnify.business.entity.BUser"%>
<%@ page import="com.tech.blog.entity.*"%>
<%@page import="com.learnify.business.dao.*"%>

<%@page import="com.learnify.business.entity.Post"%>
<%@page import="java.util.List"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="com.learnify.business.dao.PostDao"%>


<div class="container bg-light">
	<div class="row my-4 ">
	
		<%
		User uuu = (User) session.getAttribute("currentUser");
		Thread.sleep(10);
		PostDao d = new PostDao(ConnectionProvider.getConnection());
		int cid = Integer.parseInt(request.getParameter("cid"));
		List<Post> posts = null;
		if (cid == 0) {
			posts = d.getAllPosts();
			%>
			<h2>All Courses</h2>
			<%
		} else {
			posts = d.getPostByCatId(cid);
			if(cid == 1){
				
			
			%>
			<h2>Business Related Courses</h2>
			<% 
			}
			if(cid == 2){
				
				
				%>
				<h2>Information Technology Courses</h2>
				<% 
				}
			if(cid == 3){
				
				
				%>
				<h2>Computer Science Courses</h2>
				<% 
				}
			if(cid == 4){
				
				
				%>
				<h2>Creativity Courses</h2>
				<% 
				}
			if(cid == 5){
				
				
				%>
				<h2>Personal Development Courses</h2>
				<% 
				}
			if(cid == 6){
				
				
				%>
				<h2>Health and Fitness Related Courses</h2>
				<% 
				}
			if(cid == 7){
				
				
				%>
				<h2>Language Related Courses</h2>
				<% 
				}
			if(cid == 8){
				
				
				%>
				<h2>Acadamic Related Courses</h2>
				<% 
				}
			
		}
		if (posts.size() == 0) {
			out.println("<h3 class='display-3 text-center'>No Courses in this category..</h3>");
			return;
		}
		int i = 0;
		for (Post p : posts) {
			if (i % 4 == 0) {
				out.println("</div><div class='row my-4'>");
			}
		%>

		<div class="card" style="width: 16rem;">
			<img class="card-img-top" src="businessPics/<%=p.getpPic()%>" alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title"><%=p.getpTitle()%></h5>
				<p class="card-text">Course offer by : <%=p.getpShortDescription()%></p>
			</div>
			<div class="card-footer primary-background text-center">
					 <a href="course_detail.jsp?post_id=<%=p.getPid()%>"
						class="btn btn-outline-light btn-sm">Explore Course</a> 
						
				</div>
		</div>




		<%
		i++;
		}
		%>
		
	
	</div>
</div>











































