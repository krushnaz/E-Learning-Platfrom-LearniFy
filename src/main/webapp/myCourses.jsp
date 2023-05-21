<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="com.tech.blog.entity.User"%>
<%@page import="com.tech.blog.entity.Message"%>

<%
User user = (User) session.getAttribute("currentUser");
if (user == null) {
	response.sendRedirect("login_page.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Courses</title>
<!--  CSS  -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/style.css">
<style type="text/css">
.navbar-dark .navbar-nav .nav-link {
	color: #fff;
}

.navbar-dark .navbar-nav .nav-link:hover {
	color: #f8f9fa;
}

.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); /* add box shadow to card */
	transition: transform 0.3s; /* add transition effect */
}

.card:hover {
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
	/* change box shadow on hover */
	transform: scale(1.05); /* add scale effect on hover */
}
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
						<a class="dropdown-item list-group-item " href="myCourses.jsp">Business</a>
						<a class="dropdown-item list-group-item" href="profile_page.jsp">
							Information Technology</a> <a class="dropdown-item list-group-item"
							href="logoutServlet">Computer Science</a> <a
							class="dropdown-item list-group-item " href="myCourses.jsp">Creative</a>
						<a class="dropdown-item list-group-item" href="profile_page.jsp">
							Personal Development</a> <a class="dropdown-item list-group-item"
							href="logoutServlet">Health and Fitness</a> <a
							class="dropdown-item list-group-item " href="myCourses.jsp">Languages</a>
						<a class="dropdown-item list-group-item" href="profile_page.jsp">
							Acadamic</a>

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

	<div class="container-fluid m-0 p-0">
		<div class="jumbotron primary-background text-white banner-background">
			<div class="container">
				<h3 class="display-4">
					Hey,
					<%=user.getName()%>
					You have completed [X%] of the courses. lets finish remaining
					courses.
				</h3>

			</div>
		</div>
	</div>

<!-- ------------------------------------------------------------------------------------------------------------- -->
	<div class="container emp-profile border border-primary">
		
			<div class="row">
				<div class="col-md-6">
					<div class="profile-head">
						<ul class="nav nav-tabs" id="myTab" role="tablist">
							<li class="nav-item "><a class="nav-link active"
								id="home-tab" data-toggle="tab" href="#home" role="tab"
								aria-controls="home" aria-selected="true">About</a></li>
							<li class="nav-item"><a class="nav-link" id="profile-tab"
								data-toggle="tab" href="#profile" role="tab"
								aria-controls="profile" aria-selected="false">Education</a></li>

							<li class="nav-item"><a class="nav-link" id="course-tab"
								data-toggle="tab" href="#course" role="tab"
								aria-controls="course" aria-selected="false">My Course</a></li>

							<li class="nav-item"><a class="nav-link" id="completion-tab"
								data-toggle="tab" href="#completion" role="tab"
								aria-controls="completion" aria-selected="false">Completion
									Cirtificate</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-2">
				</div>
			</div>
			<br>
			
				<div class="col-md-8">
					<div class="tab-content profile-tab" id="myTabContent">
						<div class="tab-pane fade show active" id="home" role="tabpanel"
							aria-labelledby="home-tab">
							<div class="row">
								
							</div>
						</div>
						<div class="tab-pane fade" id="profile" role="tabpanel"
							aria-labelledby="profile-tab">
							<div class="row">
								
						</div>






						<div class="tab-pane fade" id="course" role="tabpanel"
							aria-labelledby="course-tab">
							<h5 class="card-title">Courses in Progress</h5>
							<p class="card-text">Here are the courses you're currently
								working on:</p>
							<ul class="list-group">
								<li class="list-group-item">Introduction to Programming</li>
								<li class="list-group-item">Data Science Fundamentals</li>
							</ul>
							<a href="#" class="btn btn-secondary mt-2">Continue Learning</a>
						</div>

						<div class="tab-pane fade" id="completion" role="tabpanel"
							aria-labelledby="completion-tab">
							<h5 class="card-title">Completed Courses</h5>
							<p class="card-text">Congratulations on completing these
								courses:</p>
							<ul class="list-group">
								<li class="list-group-item">Introduction to Python</li>
								<li class="list-group-item">Web Development Basics</li>
								<li class="list-group-item">Business Essentials</li>
							</ul>
							<a href="#" class="btn btn-success mt-2">View Certificates</a>
						</div>




</div>
					</div>
				</div>
			</div>

	
	
	
	
	
	
	
	
<!-- ---------------------------------------------------------------------------------------------------------------- -->
	<div class="container">
		<div class="row-1">
			<div class="container mt-5 mb-3 ">
				<div class="row">
					<div class="col-md-4">
						<div class="card p-3 mb-2">
							<div class="d-flex justify-content-between">

								<div class="d-flex flex-row align-items-center">
									<div class="icon">
										<i class="bx bxl-mailchimp"></i>
									</div>
									<div class="ms-2 c-details">
										<h6 class="mb-0">Mailchimp</h6>
										<span>1 days ago</span>
									</div>
								</div>
								<div class="badge">
									<span>Design</span>
								</div>
							</div>
							<div class="mt-5">
								<img src="https://via.placeholder.com/300x200"
									alt="Placeholder Image" class="card-img-top mb-4">
								<h3 class="heading">
									Senior Product<br>Designer-Singapore
								</h3>
								<div class="mt-5">
									<div class="progress">
										<div class="progress-bar" role="progressbar"
											style="width: 50%" aria-valuenow="50" aria-valuemin="0"
											aria-valuemax="100"></div>
									</div>
									<div class="mt-3">
										<span class="text1">32 Applied <span class="text2">of
												50 capacity</span></span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="card p-3 mb-2">
							<div class="d-flex justify-content-between">
								<div class="d-flex flex-row align-items-center">
									<div class="icon">
										<i class="bx bxl-dribbble"></i>
									</div>
									<div class="ms-2 c-details">
										<h6 class="mb-0">Dribbble</h6>
										<span>4 days ago</span>
									</div>
								</div>
								<div class="badge">
									<span>Product</span>
								</div>
							</div>
							<div class="mt-5">
								<img src="https://via.placeholder.com/300x200"
									alt="Placeholder Image" class="card-img-top mb-4">
								<h3 class="heading">
									Junior Product<br>Designer-Singapore
								</h3>
								<div class="mt-5">
									<div class="progress">
										<div class="progress-bar" role="progressbar"
											style="width: 50%" aria-valuenow="50" aria-valuemin="0"
											aria-valuemax="100"></div>
									</div>
									<div class="mt-3">
										<span class="text1">42 Applied <span class="text2">of
												70 capacity</span></span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="card p-3 mb-2">
							<div class="d-flex justify-content-between">
								<div class="d-flex flex-row align-items-center">
									<div class="icon">
										<i class="bx bxl-reddit"></i>
									</div>
									<div class="ms-2 c-details">
										<h6 class="mb-0">Reddit</h6>
										<span>2 days ago</span>
									</div>
								</div>
								<div class="badge">
									<span>Design</span>
								</div>
							</div>
							<div class="mt-5">
								<img src="https://via.placeholder.com/300x200"
									alt="Placeholder Image" class="card-img-top mb-4">
								<h3 class="heading">
									Software Architect <br>Java - USA
								</h3>
								<div class="mt-5">
									<div class="progress">
										<div class="progress-bar" role="progressbar"
											style="width: 50%" aria-valuenow="50" aria-valuemin="0"
											aria-valuemax="100"></div>
									</div>
									<div class="mt-3">
										<span class="text1">52 Applied <span class="text2">of
												100 capacity</span></span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- row 2 start here -->

		<div class="row-1">
			<div class="container mt-5 mb-3">
				<div class="row">
					<div class="col-md-4">
						<div class="card p-3 mb-2 ">
							<div class="d-flex justify-content-between">

								<div class="d-flex flex-row align-items-center">
									<div class="icon">
										<i class="bx bxl-mailchimp"></i>
									</div>
									<div class="ms-2 c-details">
										<h6 class="mb-0">Mailchimp</h6>
										<span>1 days ago</span>
									</div>
								</div>
								<div class="badge">
									<span>Design</span>
								</div>
							</div>
							<div class="mt-5">
								<img src="https://via.placeholder.com/300x200"
									alt="Placeholder Image" class="card-img-top mb-4">
								<h3 class="heading">
									Senior Product<br>Designer-Singapore
								</h3>
								<div class="mt-5">
									<div class="progress">
										<div class="progress-bar" role="progressbar"
											style="width: 50%" aria-valuenow="50" aria-valuemin="0"
											aria-valuemax="100"></div>
									</div>
									<div class="mt-3">
										<span class="text1">32 Applied <span class="text2">of
												50 capacity</span></span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="card p-3 mb-2">
							<div class="d-flex justify-content-between">
								<div class="d-flex flex-row align-items-center">
									<div class="icon">
										<i class="bx bxl-dribbble"></i>
									</div>
									<div class="ms-2 c-details">
										<h6 class="mb-0">Dribbble</h6>
										<span>4 days ago</span>
									</div>
								</div>
								<div class="badge">
									<span>Product</span>
								</div>
							</div>
							<div class="mt-5">
								<img src="https://via.placeholder.com/300x200"
									alt="Placeholder Image" class="card-img-top mb-4">
								<h3 class="heading">
									Junior Product<br>Designer-Singapore
								</h3>
								<div class="mt-5">
									<div class="progress">
										<div class="progress-bar" role="progressbar"
											style="width: 50%" aria-valuenow="50" aria-valuemin="0"
											aria-valuemax="100"></div>
									</div>
									<div class="mt-3">
										<span class="text1">42 Applied <span class="text2">of
												70 capacity</span></span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="card p-3 mb-2">
							<div class="d-flex justify-content-between">
								<div class="d-flex flex-row align-items-center">
									<div class="icon">
										<i class="bx bxl-reddit"></i>
									</div>
									<div class="ms-2 c-details">
										<h6 class="mb-0">Reddit</h6>
										<span>2 days ago</span>
									</div>
								</div>
								<div class="badge">
									<span>Design</span>
								</div>
							</div>
							<div class="mt-5">
								<img src="https://via.placeholder.com/300x200"
									alt="Placeholder Image" class="card-img-top mb-4">
								<h3 class="heading">
									Software Architect <br>Java - USA
								</h3>
								<div class="mt-5">
									<div class="progress">
										<div class="progress-bar" role="progressbar"
											style="width: 50%" aria-valuenow="50" aria-valuemin="0"
											aria-valuemax="100"></div>
									</div>
									<div class="mt-3">
										<span class="text1">52 Applied <span class="text2">of
												100 capacity</span></span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
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

	<script src="js/myjs.js" type="text/javascript"></script>





	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</html>

































