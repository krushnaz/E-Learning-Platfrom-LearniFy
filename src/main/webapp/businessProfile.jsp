<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.learnify.business.entity.Category"%>
<%@ page import="com.learnify.business.dao.PostDao"%>
<%@ page import="com.learnify.business.entity.BMessage"%>
<%@ page import="com.learnify.business.entity.BUser"%>
<%@ page import="com.learnify.business.helper.ConnectionProvider"%>
<%@ page import="java.util.ArrayList"%>

<%
BMessage m = (BMessage) session.getAttribute("msg");
if (m != null) {
%>
<div class="alert <%=m.getCssClass()%>" role="alert">
	<%=m.getContent()%>
</div>


<%
session.removeAttribute("msg");
}
%>



<%
BUser user = (BUser) session.getAttribute("currentUser");
if (user == null) {
	response.sendRedirect("login_page.jsp");
}
%>

<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>My E-Learning Platform</title>
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
	integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">
</head>
<body>

	<nav
		class="navbar navbar-expand-lg navbar-dark primary-background btn-lg sticky-top">
		<a class="btn btn-outline-light my-2 my-sm-0 btn-lg"
			href="businessIndex.jsp" type="submit"><img src="img/lek.png"
			width="30" height="30" class="d-inline-block align-top"
			alt="learnify"> LearniFy Business</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse " id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">



				<li class="nav-item"><a class="nav-link" href="#"> <span
						class="fa fa-address-card-o"></span> Why LearniFy
				</a></li>
				<li class="nav-item "><a class="nav-link" href=""> <span
						class="fa fa-user-circle"></span> Solutions
				</a></li>
				<li class="nav-item"><a class="nav-link" href=""> <span
						class="fa fa-user-plus"></span> Resources
				</a></li>
				<li class="nav-item"><a class="nav-link" href=""> <span
						class="fa fa-user-plus"></span> For Teams
				</a></li>

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
						<a class="dropdown-item list-group-item " href="">My Courses</a> <a
							class="dropdown-item list-group-item" href="logoutServlet">Log
							Out</a>
					</div></li>
			</ul>
		</div>
	</nav>


	<div class="jumbotron primary-background text-white">
		<div class="container ">


			<h1 class="display-4 mb-3">
				Welcome
				<%=user.getName()%>!
				<h3>Connect with a Global Audience: Publish Your Courses on
					LearniFy</h3>
			</h1>


		</div>

		<!-- <img src="img/slider-image2.jpg" alt="Banner Image"
						class="img-fluid">-->

	</div>





	<!-- <div class="container bg-light "> -->
	<div class="container-fluid mt-4">
		<div class="row">
			<div class="col-md-6 mt-4 d-flex font-weight-light">



				<section class="business-info mt-5">
					<div class="container mt-5">
						<div class="row mt-5">
							<div class="col-md-6 ">
								<div class="card bg-color">
									<div class="card-body">
										<h2 class="card-title">About Us</h2>
										<p class="card-text">We are a leading e-learning platform
											that offers high-quality courses to help you achieve your
											career goals. Our courses are designed by industry experts
											and are constantly updated to ensure that they are relevant
											to today's job market.</p>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="card">
									<div class="card-body bg-color">
										<h2 class="card-title">Our Mission</h2>
										<p class="card-text">Our mission is to provide affordable
											and accessible e-learning solutions that empower individuals
											to acquire the skills and knowledge they need to succeed in
											their careers. We believe that everyone should have the
											opportunity to learn and grow, regardless of their background
											or financial situation.</p>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="card">
									<div class="card-body bg-color">
										<h2 class="card-title">Target Audience</h2>
										<p class="card-text">Our courses are designed for
											individuals who want to advance their careers and improve
											their skills. We offer courses in a wide range of industries
											and professions, so there is something for everyone. Our
											target audience includes:</p>
										<ul>
											<li>Working professionals looking to advance their
												careers</li>
											<li>Students looking to supplement their education</li>
											<li>Entrepreneurs looking to start their own businesses</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-md-6 mt-5">
								<div class="card">
									<div class="card-body bg-color">
										<h2 class="card-title">Course Catalog</h2>
										<p class="card-text">We offer a wide range of courses to
											help you achieve your career goals. Our course catalog
											includes:</p>
										<ul>
											<li>Business Management</li>
											<li>Information Technology</li>
											<li>Computer Science</li>
											<li>Creative</li>
											<li>Personal Development</li>
											<li>And many more!</li>
										</ul>

									</div>
								</div>
							</div>
						</div>
					</div>
				</section>



				<h2></h2>
			</div>








			<div class=" col-md-4 card ">
				<div class="card-header primary-background text-white">
					<h2>Publish Your Course</h2>
				</div>
				<div class="card-body border-primary">
					<form id="add-post-form" action="AddPostServlet" method="post"
						enctype="multipart/form-data">
						<div class="form-group">
							<select class="form-control" name="cid">
								<option selected disabled>---Select Category---</option>
								<%
								PostDao postd = new PostDao(ConnectionProvider.getConnection());
								ArrayList<Category> list = postd.getAllCategories();
								for (Category c : list) {
								%>
								<option value="<%=c.getCid()%>"><%=c.getName()%></option>
								<%
								}
								%>
							</select>
						</div>
						<div class="form-group">
							<label for="courseTitle">Title of Course</label> <input
								name="pTitle" type="text" class="form-control" id="courseTitle"
								placeholder="Enter course title">
						</div>
						<div class="form-group">
							<label for="courseDescription">University/Institute Name</label>
							<input type="text" class="form-control" id="courseDescription"
								rows="3" name="pShortDescription"
								placeholder="Enter University/Institute Name"></input>
						</div>
						<div class="form-group">
							<label for="courseDescription">Description of Course</label>
							<textarea class="form-control" id="courseDescription" rows="3"
								name="pDescription" placeholder="Enter course description"></textarea>
						</div>
						<div class="form-group">
							<label for="courseDescription"> Specialization of Course</label>
							<textarea class="form-control" id="courseDescription" rows="3"
								name="pSpecialization" placeholder="Enter course description"></textarea>
						</div>
						<div class="form-group">
							<label for="courseDescription"> Instructor of Course</label>
							<textarea class="form-control" id="courseDescription" rows="3"
								name="pInstructor" placeholder="Enter course description"></textarea>
						</div>
						<div class="form-group">
							<label for="courseDescription">Notes of Course</label>
							<textarea class="form-control" id="courseDescription" rows="3"
								name="pNote" placeholder="Enter course description"></textarea>
						</div>
						<div class="form-group">
							<label for="courseThumbnail">Thumbnail Image</label> <input
								name="pic" type="file" class="form-control-file"
								id="courseThumbnail">
						</div>
						<div class="form-group">
							<label for="courseSections">Upload Your Course</label>
							<div class="row">
								<div class="col">
									<input type="text" class="form-control" placeholder="Week 1"
										name="courseVideoTitle1"> <input type="file"
										class="form-control-file mt-2" name="courseVideo1">
									<textarea class="form-control mt-2" rows="3"
										placeholder="Enter notes for Week 1"
										name="courseVideoDescription1"></textarea>
								</div>
								<div class="col">
									<input type="text" class="form-control" placeholder="Week 2"
										name="courseVideoTitle2"> <input type="file"
										class="form-control-file mt-2" name="courseVideo2">
									<textarea class="form-control mt-2" rows="3"
										placeholder="Enter notes for Week 2"
										name="courseVideoDescription2"></textarea>
								</div>
								<div class="col">
									<input type="text" class="form-control" placeholder="Week 3"
										name="courseVideoTitle3"> <input type="file"
										class="form-control-file mt-2" name="courseVideo3">
									<textarea class="form-control mt-2" rows="3"
										placeholder="Enter notes for Week 3"
										name="courseVideoDescription3"></textarea>
								</div>
								<div class="col">
									<input type="text" class="form-control" placeholder="Week 4"
										name="courseVideoTitle4"> <input type="file"
										class="form-control-file mt-2" name="courseVideo4">
									<textarea class="form-control mt-2" rows="3"
										placeholder="Enter notes for Week 4"
										name="courseVideoDescription4"></textarea>
								</div>
							</div>

						</div>
						<button type="submit"
							class="btn primary-background text-white btn-block mb-4">Send</button>
					</form>
				</div>
			</div>
		</div>
	</div>







	<!-- <div>
				======= Clients Section =======
    <section id="clients" class="clients section-bg">
      <div class="container">

        <div class="row">

          <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center" data-aos="zoom-in">
            <img src="img/client-1.png" class="img-fluid" alt="">
          </div>

          <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center" data-aos="zoom-in">
            <img src="img/client-2.png" class="img-fluid" alt="">
          </div>

          <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center" data-aos="zoom-in">
            <img src="img/client-3.png" class="img-fluid" alt="">
          </div>

          <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center" data-aos="zoom-in">
            <img src="img/client-4.png" class="img-fluid" alt="">
          </div>

          <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center" data-aos="zoom-in">
            <img src="img/client-5.png" class="img-fluid" alt="nnnnnnnnn">
          </div>

          <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center justify-content-center" data-aos="zoom-in">
            <img src="img/client-6.png" class="img-fluid" alt="nnnnnnnnnnn">
          </div>

        </div>

      </div>
    </section>	
				</div>

 -->




	<%@ include file="footer.jsp"%>




	<script src="js/myjs.js" type="text/javascript"></script>



	<script src="https://code.jquery.com/jquery-3.4.1.min.js"
		integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
	<script src="js/myjs.js" type="text/javascript"></script>

	<script>
		$(document)
				.ready(
						function(e) {
							//
							$("#add-post-form")
									.on(
											"submit",
											function(event) {
												//this code gets called when form is submitted....
												event.preventDefault();
												console
														.log("you have clicked on submit..")
												let form = new FormData(this);
												//now requesting to server
												$
														.ajax({
															url : "AddPostServlet",
															type : 'POST',
															data : form,
															success : function(
																	data,
																	textStatus,
																	jqXHR) {
																//success ..
																console
																		.log(data);
																if (data.trim() == 'done') {
																	swal(
																			"Good job!",
																			"saved successfully",
																			"success");
																} else {
																	swal(
																			"Error!!",
																			"Something went wrong try again...",
																			"error");
																}
															},
															error : function(
																	jqXHR,
																	textStatus,
																	errorThrown) {
																//error..
																swal(
																		"Error!!",
																		"Something went wrong try again...",
																		"error");
															},
															processData : false,
															contentType : false
														})
											})
						})
	</script>
</body>
</html>
