<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="com.tech.blog.entity.User"%>
<%@page import="com.tech.blog.entity.Message"%>
<%@ page import="com.learnify.business.dao.*" %>
<%@ page import="com.learnify.business.entity.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>


<%
User user = (User) session.getAttribute("currentUser");
if (user == null) {
	response.sendRedirect("login_page.jsp");
}
%>

<%    int postId = Integer.parseInt(request.getParameter("post_id"));
    PostDao d = new PostDao(ConnectionProvider.getConnection());
    Post p = d.getPostByPostId(postId);
%>

<!DOCTYPE html>
<html>
<head>
<title><%= p.getpTitle() %></title>
<!-- Bootstrap CSS -->
<link
	href="https://fonts.googleapis.com/css2?family=Font+Name&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/style.css">



<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-OgVRvuATP1z7JjHLkuOU0Xh3GBy9KtQzcb8iLyOoBjEbxEm+6tF0Dbt8I8jyJ3e3"
	crossorigin="anonymous">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
	integrity="sha384-AfOIYwGP7kRBjWlRT8pzv2Q+0ZUO9c/6/VRx7ZYQ0D1yU6e4U6p4UAd34hU6+oZf"
	crossorigin="anonymous">
<!-- Custom CSS -->
<style type="text/css">
.bg-color{
background-color: #e3f2fd;
}
/* Custom styles go here */
</style>
</head>
<body>
	<!--navbar  -->
	<nav id="nav"
		class="navbar navbar-expand-lg navbar-dark primary-background btn-lg sticky-top">
		<a class="btn btn-outline-light my-2 my-sm-0 btn-lg"
			href="Main_page.jsp" type="submit"><img src="img/lek.png"
			width="30" height="30" class="d-inline-block align-top"
			alt="learnify"> LearniFy</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse text-white"
			id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item dropdown text-white"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <span class="fa fa-check-square-o"></span>
						categories
				</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">

						<a class="dropdown-item list-group-item " href="#">Business</a> <a
							class="dropdown-item list-group-item"
							href="#carouselExampleControls1">Information Technology</a> <a
							class="dropdown-item list-group-item"
							href="#carouselExampleControls2">Computer Science</a> <a
							class="dropdown-item list-group-item "
							href="#carouselExampleControls3">Creative</a> <a
							class="dropdown-item list-group-item"
							href="#carouselExampleControls4"> Personal Development</a> <a
							class="dropdown-item list-group-item"
							href="#carouselExampleControls5">Health and Fitness</a> <a
							class="dropdown-item list-group-item "
							href="#carouselExampleControls6">Languages</a> <a
							class="dropdown-item list-group-item"
							href="#carouselExampleControls7">Acadamic</a>
					</div></li>


				<li class="nav-item"><a class="nav-link" href="#"> <span
						class="fa fa-address-card-o"></span> contact
				</a></li>



				<li class="nav-item">
					<div class="justify-content-md-center">
						<form class="form-inline my-2 my-lg-0 my-lg-0">
							<input class="form-control mr-sm-2" type="text"
								placeholder="Search Courses Here..." aria-label="Search"
								style="width: 900px;">

							<button class="btn btn-outline-light my-2 my-sm-0 " type="submit">Search</button>
						</form>
					</div>
				</li>


			</ul>

			<ul class="navbar-nav mr-right">
				<li class="nav-item dropdown"><button
						class="btn btn-outline-light my-2 my-sm-0 dropdown-toggle"
						type="button" id="dropdownMenu2" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">
						<span class="fa fa-user-circle"></span>
						<%=user.getName()%>
					</button>

					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item list-group-item " href="myCourses.jsp">My
							Courses</a> <a class="dropdown-item list-group-item"
							href="profile_page.jsp">Profile</a> <a
							class="dropdown-item list-group-item" href="logoutServlet">Log
							Out</a>
					</div></li>
			</ul>
		</div>
	</nav>
	<!-- navbar end -->




	<div class="jumbotron primary-background banner-background text-white">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<h1><%= p.getpTitle() %></h1>

					<div class="d-flex align-items-center">
						<div class="mr-3">
							<i class="fa fa-star text-warning"></i> <i
								class="fa fa-star text-warning"></i> <i
								class="fa fa-star text-warning"></i> <i
								class="fa fa-star text-warning"></i> <i
								class="fa fa-star-half text-warning"></i>
						</div>
						<div>
							<span class="">Rating:</span> <span>4.5 out of 5.0</span>
						</div>
					</div>
					<br>
					<p><%= p.getpDescription()%></p>
					<div>
						<a href="watchTutorial.jsp?post_id=<%=p.getPid()%>" class="btn btn-warning text-dark btn-lg font-weight-bold">Enroll
							Now</a>
					</div>
				</div>
				<div class="col-md-6 d-none d-md-block">
					<p class="text-center">Offered by</p>
					<img src="businessPics/<%=p.getpPic()%>" alt="Banner Image"
						class="rounded float-right" width="200" height="200">
				</div>
			</div>
		</div>
	</div>



	<div class="text-center">
		<h2>Feature of Course</h2>
	</div>
	<div class="container emp-profile border border-primary bg-light">

		<form method="post">
			<div class="row">
				<div class="col-md-6">

					<div class="profile-img">
						<div class="card" style="width: 22rem;">
							<div class="card-body border border-primary">
								<span class="fa fa-certificate"></span>
								<h3 class="card-text">shareable certificates</h3>

								<hr>
								<h3 class="card-text">100% online courses</h3>
								<hr>
								<h3 class="card-text">LearniFy Lab</h3>
								<hr>
								<h3 class="card-text">Flexible Schedule</h3>
								<hr>
								<h3 class="card-text">English</h3>
								<hr>

							</div>
						</div>
					</div>


				</div>
				<div class="col-md-6">
					<div class="profile-head">
						<ul class="nav nav-tabs" id="myTab" role="tablist">
							<li class="nav-item "><a class="nav-link active"
								id="home-tab" data-toggle="tab" href="#home" role="tab"
								aria-controls="home" aria-selected="true">About</a></li>
							<li class="nav-item"><a class="nav-link" id="profile-tab"
								data-toggle="tab" href="#profile" role="tab"
								aria-controls="profile" aria-selected="false">Course Details</a></li>

							<li class="nav-item"><a class="nav-link" id="course-tab"
								data-toggle="tab" href="#course" role="tab"
								aria-controls="course" aria-selected="false">Instructor
									Deatails </a></li>

							<li class="nav-item"><a class="nav-link" id="completion-tab"
								data-toggle="tab" href="#completion" role="tab"
								aria-controls="completion" aria-selected="false">FAQ </a></li>
						</ul>
					</div>

					<div class="col-md-16">
						<div class="tab-content profile-tab" id="myTabContent">
							<div class="tab-pane fade show active" id="home" role="tabpanel"
								aria-labelledby="home-tab">
								<div class="row">
									<h3>About this Specialization</h3>
									<br>
									<%= p.getpAbout() %>

								</div>
							</div>



							<div class="tab-pane fade" id="profile" role="tabpanel"
								aria-labelledby="profile-tab">
								<div class="row">
									<h5><%= p.getpAbout() %></h5>
								</div>

							</div>

							<div class="tab-pane fade" id="course" role="tabpanel"
								aria-labelledby="profile-tab">
								<div class="row">

									<table class="table align-middle mb-0 bg-white">
										<thead class="bg-light">
											<tr>
												<th>Name</th>
												<th>Title</th>

											</tr>
										</thead>
										<tbody>
											<tr>
												<td>
													<div class="d-flex align-items-center">
														<img src="https://mdbootstrap.com/img/new/avatars/8.jpg"
															alt="" style="width: 45px; height: 45px"
															class="rounded-circle" />
														<div class="ms-3">
															<p class="fw-bold mb-1"><%= p.getpInstructor() %></p>
															<p class="text-muted mb-0">john.doe@gmail.com</p>
															
														</div>
													</div>
												</td>
												<td>
													<p class="fw-normal mb-1">Software engineer</p>
													<p class="text-muted mb-0">IT department</p>
												</td>

											</tr>
									
										</tbody>
									</table>

								</div>

							</div>


							<div class="tab-pane fade" id="completion" role="tabpanel"
								aria-labelledby="profile-tab">
								<div class="row">Java Enterprise Edition is a
									comprehensive course that teaches students how to use Java
									technologies to develop scalable and secure enterprise
									applications. The course covers JSP,</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>








	<div class="text-center">

	</div>
	<div class="bg-color">
		<div class="container ">

			<hr>

			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<div class="row">
							<div class="col-md-4">
								<img src="img/author-image3.jpg" class="d-block w-100"
									alt="Photo">
							</div>
							<div class="col-md-8 ">
								<div class="card-body">
									<p class="card-text">"Lorem ipsum dolor sit amet,
										consectetur adipiscing elit. Sed eget velit sed libero
										bibendum placerat. Ut condimentum, mauris eu ullamcorper
										posuere, urna odio commodo ipsum, nec gravida enim quam eu
										nulla."</p>
									<p class="card-text">
										<small class="text-muted">- John Doe</small>
									</p>
								</div>
							</div>
						</div>
					</div>
					<div class="carousel-item">
						<div class="row">
							<div class="col-md-4">
								<img src="img/author-image1.jpg" class="d-block w-100"
									alt="Photo">
							</div>
							<div class="col-md-8">
								<div class="card-body">
									<p class="card-text">"Lorem ipsum dolor sit amet,
										consectetur adipiscing elit. Sed eget velit sed libero
										bibendum placerat. Ut condimentum, mauris eu ullamcorper
										posuere, urna odio commodo ipsum, nec gravida enim quam eu
										nulla."</p>
									<p class="card-text">
										<small class="text-muted">- Jane Doe</small>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<a class="carousel-control-prev" href="#myCarousel" role="button"
					data-slide="prev"> <span class="carousel-control-prev-icon"
					aria-hidden="true"></span> <span class="sr-only">Previous</span>
				</a> <a class="carousel-control-next " href="#myCarousel" role="button"
					data-slide="next"> <span class="carousel-control-next-icon "
					aria-hidden="true"></span> <span class="sr-only">Next</span>
				</a>
			</div>

			<hr>
		</div>

	</div>






	<div class="text-center">
		<h2>About Certificate</h2>
	</div>

	<div class="container bg-light">
		<hr>
		<div class="row">
			<div class="col-md-6">
				<h3>Start Learning today</h3>
				<br>
				<h5>
					<span class="fa fa-check text-primary">Shareable
						Specialization and Course Certificates</span>
				</h5>
				<h5>
					<span class="fa fa-check text-primary">Self-Paced Learning
						Option</span>
				</h5>
				<h5>
					<span class="fa fa-check text-primary">Course Videos &
						Readings</span>
				</h5>
				<h5>
					<span class="fa fa-check text-primary">Practice Quizzes</span>
				</h5>
				<h5>
					<span class="fa fa-check text-primary">Graded Assignments
						with Peer Feedback</span>
				</h5>
				<h5>
					<span class="fa fa-check text-primary">Graded Programming
						Assignments</span> <br>
				</h5>
				<br> <a href="watchTutorial.jsp?post_id=<%=p.getPid()%>"
					class="btn primary-background text-white btn-lg">Enroll Now</a>
			</div>
			<div class="col-md-6">
				<h3>
					Shareable on <b style="color: #0A66C2;">Linked<img
						src="img/linkedin.png" width="30" height="30"
						class="d-inline-block align-top" alt="linkedlin"></b>
				</h3>

				<img src="img/tp244-certificate-13.jpg" class="img-fluid"
					alt="Dummy Certificate"> <br>
				<p>You can share your Course Certificates in the Certifications
					section of your LinkedIn profile, on printed resumes, CVs, or other
					documents.</p>
			</div>
		</div>
	</div>




	<%@ include file="footer.jsp"%>

	<script src="https://code.jquery.com/jquery-3.6.4.slim.min.js"
		integrity="sha256-a2yjHM4jnF9f54xUQakjZGaqYs/V1CYvWpoqZzC2/Bw="
		crossorigin="anonymous"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>


	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script src="js/myjs.js" type="text/javascript"></script>

</body>
</html>