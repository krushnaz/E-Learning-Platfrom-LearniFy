<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>






<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Advanced Java || LearniFy</title>
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
<!-- custom css file link  -->

<style type="text/css">
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600&display=swap')
	;

* {
	font-family: 'Poppins', sans-serif;
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	outline: none;
	border: none;
	text-decoration: none;
	text-transform: capitalize;
}

.container {
	max-width: 1200px;
	margin: 100px auto;
	display: flex;
	flex-wrap: wrap;
	align-items: flex-start;
	gap: 20px;
}

.container .main-video-container {
	flex: 1 1 700px;
	border-radius: 5px;
	box-shadow: 0 5px 15px rgba(0, 0, 0, .1);
	background-color: #fff;
	padding: 15px;
}

.container .main-video-container .main-video {
	margin-bottom: 7px;
	border-radius: 5px;
	width: 100%;
}

.container .main-video-container .main-vid-title {
	font-size: 20px;
	color: #444;
}

.container .video-list-container {
	flex: 1 1 350px;
	height: 485px;
	overflow-y: scroll;
	border-radius: 5px;
	box-shadow: 0 5px 15px rgba(0, 0, 0, .1);
	background-color: #fff;
	padding: 15px;
}

.container .video-list-container::-webkit-scrollbar {
	width: 10px;
}

.container .video-list-container::-webkit-scrollbar-track {
	background-color: #fff;
	border-radius: 5px;
}

.container .video-list-container::-webkit-scrollbar-thumb {
	background-color: #444;
	border-radius: 5px;
}

.container .video-list-container .list {
	display: flex;
	align-items: center;
	gap: 15px;
	padding: 10px;
	background-color: #eee;
	cursor: pointer;
	border-radius: 5px;
	margin-bottom: 10px;
}

.container .video-list-container .list:last-child {
	margin-bottom: 0;
}

.container .video-list-container .list.active {
	background-color: #444;
}

.container .video-list-container .list.active .list-title {
	color: #fff;
}

.container .video-list-container .list .list-video {
	width: 100px;
	border-radius: 5px;
}

.container .video-list-container .list .list-title {
	font-size: 17px;
	color: #444;
}

@media ( max-width :1200px) {
	.container {
		margin: 0;
	}
}

@media ( max-width :450px) {
	.container .main-video-container .main-vid-title {
		font-size: 15px;
		text-align: center;
	}
	.container .video-list-container .list {
		flex-flow: column;
		gap: 10px;
	}
	.container .video-list-container .list .list-video {
		width: 100%;
	}
	.container .video-list-container .list .list-title {
		font-size: 15px;
		text-align: center;
	}
}
</style>
</head>
<body>
	<!--navbar  -->
	<nav id="nav"
		class="navbar navbar-expand-lg navbar-dark primary-background btn-lg sticky-top">
		<a class="btn btn-outline-light my-2 my-sm-0 btn-lg"
			href="index.jsp" type="submit"><img src="img/lek.png"
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


		</div>
	</nav>
	<!-- navbar end -->


	<div class="jumbotron primary-background banner-background text-white">
		<h2 class="text-center">Advanced Java</h2>
		<p class="text-center">course Offer By : LearniFy</p>
		<div class="container">
			<div class="main-video-container">
				<video src="courseVideo/week1.mp4" loop controls class="main-video"></video>
				<h3 class="main-vid-title">Week1</h3>
			</div>

			<div class="video-list-container">

				<div class="list active">
					<video src="courseVideo/week1.mp4" class="list-video"></video>
					<h3 class="list-title">Week1</h3>
				</div>

				<div class="list">
					<video src="courseVideo/week1.mp4" class="list-video"></video>
					<h3 class="list-title">Week2</h3>
				</div>

				<div class="list">
					<video src="courseVideo/week1.mp4" class="list-video"></video>
					<h3 class="list-title">week3</h3>
				</div>

				<div class="list">
					<video src="courseVideo/week1.mp4" class="list-video"></video>
					<h3 class="list-title">week4</h3>
				</div>


			</div>
		</div>
	</div>








	<div class="container bg-light">
		<hr>
		<div class="row">
			<!-- Left column -->
			<div class="col-md-3 bg-light">
				<div class="nav flex-column nav-pills" id="v-pills-tab"
					role="tablist" aria-orientation="vertical">

					<!--   <a class="nav-link"
						id="v-pills-week3-tab" data-toggle="pill" href="#v-pills-week3"
						role="tab" aria-controls="v-pills-week3" aria-selected="false">Week
						3</a> -->
					<a class="nav-link" id="v-pills-grade-tab" data-toggle="pill"
						href="#v-pills-grade" role="tab" aria-controls="v-pills-grade"
						aria-selected="false">Grade</a> <a class="nav-link"
						id="v-pills-note-tab" data-toggle="pill" href="#v-pills-note"
						role="tab" aria-controls="v-pills-note" aria-selected="false">Note</a>
					<a class="nav-link" id="v-pills-discussion-tab" data-toggle="pill"
						href="#v-pills-discussion" role="tab"
						aria-controls="v-pills-discussion" aria-selected="false">Discussion
						Forum</a> <a class="nav-link" id="v-pills-resource-tab"
						data-toggle="pill" href="#v-pills-resource" role="tab"
						aria-controls="v-pills-resource" aria-selected="false">Resource</a>
					<a class="nav-link" id="v-pills-courseinfo-tab" data-toggle="pill"
						href="#v-pills-courseinfo" role="tab"
						aria-controls="v-pills-courseinfo" aria-selected="false">Course
						Info</a>
				</div>
			</div>

			<!-- Right column -->
			<div class="col-md-9">

				<div class="tab-content" id="v-pills-tabContent">


					<div class="tab-pane fade" id="v-pills-grade" role="tabpanel"
						aria-labelledby="v-pills-week2-tab">
						<h2>Grade</h2>


						<div class="container">
							<table class="table align-middle mb-0 bg-white">
								<thead class="bg-light">
									<tr>
										<th>Item</th>

										<th>Status</th>
										<th>Due</th>
										<th>Grade</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>
											<div class="d-flex align-items-center">

												<div class="ms-3">
													<p class="fw-bold mb-1">Quiz</p>

												</div>
											</div>
										</td>

										<td><span
											class="badge badge-success rounded-pill d-inline">Pass</span>
										</td>
										<td>27 may 2023</td>
										<td>
											<p class="fw-bold mb-1">93%</p>
										</td>
									</tr>
									<tr>
										<td>
											<div class="d-flex align-items-center">

												<div class="ms-3">
													<p class="fw-bold mb-1">Quiz</p>

												</div>
											</div>
										</td>

										<td><span
											class="badge badge-primary rounded-pill d-inline">pass</span>
										</td>
										<td>27 may 2023</td>
										<td>
											<p>66%</p>
										</td>
									</tr>
									<tr>
										<td>
											<div class="d-flex align-items-center">

												<div class="ms-3">
													<p class="fw-bold mb-1">Quiz</p>

												</div>
											</div>
										</td>

										<td><span
											class="badge badge-warning rounded-pill d-inline">Awaiting</span>
										</td>
										<td>27 may 2023</td>
										<td>
											<p>---</p>
										</td>
									</tr>
								</tbody>
							</table>
						</div>

					</div>
					<div class="tab-pane fade" id="v-pills-note" role="tabpanel"
						aria-labelledby="v-pills-week2-tab">
						<h2>Notes</h2>
						<div class="container">
							<h2>no notes available</h2>

						</div>
					</div>

					<div class="tab-pane fade" id="v-pills-discussion" role="tabpanel"
						aria-labelledby="v-pills-week2-tab">
						<h2>discussion</h2>


						<div class="container">
							<h2>No Discussion available</h2>
						</div>
					</div>


					<div class="tab-pane fade" id="v-pills-resource" role="tabpanel"
						aria-labelledby="v-pills-week2-tab">
						<h2>Resourse</h2>


						<div class="container">
							<h2>No resourses available</h2>
						</div>
					</div>
					<div class="tab-pane fade" id="v-pills-courseinfo" role="tabpanel"
						aria-labelledby="v-pills-week2-tab">
						<h2>course info</h2>


						<div class="container">
							<h2>Java Enterprise Edition is a comprehensive course that
								teaches students how to use Java technologies to develop
								scalable and secure enterprise applications. The course covers
								JSP, Servlets, JPA, EJB, and Web Services, and teaches best
								practices for developing and deploying enterprise software.
								Students gain hands-on experience building web applications and
								learn valuable skills for working with modern software
								development tools and practices.</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>














	<div class="container emp-profile border border-primary bg-light">
		<h2 class="text-center">Feature of Course</h2>

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
									<br> Advanced Java refers to the advanced features and
									capabilities of the Java programming language. It includes a
									variety of advanced concepts such as Servlets, JSP, JDBC,
									Hibernate, Spring, and more, that allow developers to create
									complex, robust, and scalable applications. Advanced Java is
									typically used for developing enterprise-level applications,
									web-based applications, and mobile applications. It provides
									developers with powerful tools and frameworks that help them to
									streamline the development process and improve the performance,
									security, and reliability of their applications. Advanced Java
									is an essential skill for Java developers who want to build
									cutting-edge applications and stay ahead in their careers.

								</div>
							</div>



							<div class="tab-pane fade" id="profile" role="tabpanel"
								aria-labelledby="profile-tab">
								<div class="row">
									<h5>Advanced Java refers to the advanced features and
										capabilities of the Java programming language. It includes a
										variety of advanced concepts such as Servlets, JSP, JDBC,
										Hibernate, Spring, and more, that allow developers to create
										complex, robust, and scalable applications. Advanced Java is
										typically used for developing enterprise-level applications,
										web-based applications, and mobile applications. It provides
										developers with powerful tools and frameworks that help them
										to streamline the development process and improve the
										performance, security, and reliability of their applications.
										Advanced Java is an essential skill for Java developers who
										want to build cutting-edge applications and stay ahead in
										their careers.</h5>
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
															<p class="fw-bold mb-1">krushna zarekar</p>
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


	<div class="text-center"></div>
	<div class="bg-color">
		<div class="container ">

			<hr>

			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<div class="row">
							<div class="col-md-4">
								<img src="img/author-image3.jpg" class="d-block w-50"
									alt="Photo">
							</div>
							<div class="col-md-8 ">
								<div class="card-body">
									<p class="card-text">"Online learning is not just an
										alternative to traditional education, it is a powerful tool
										for transformation."</p>
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
								<img src="img/author-image1.jpg" class="d-block w-50"
									alt="Photo">
							</div>
							<div class="col-md-8">
								<div class="card-body">
									<p class="card-text">"Online learning allows us to take
										responsibility for our own education and to become lifelong
										learners."</p>
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









	<!-- custom js file link  -->
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
		crossorigin="anonymous"></scr	ipt>


	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script src="js/myjs.js" type="text/javascript"></script>


	<script type="text/javascript">
let videoList = document.querySelectorAll('.video-list-container .list');

videoList.forEach(vid =>{
   vid.onclick = () =>{
      videoList.forEach(remove =>{remove.classList.remove('active')});
      vid.classList.add('active');
      let src = vid.querySelector('.list-video').src;
      let title = vid.querySelector('.list-title').innerHTML;
      document.querySelector('.main-video-container .main-video').src = src;
      document.querySelector('.main-video-container .main-video').play();
      document.querySelector('.main-video-container .main-vid-title').innerHTML = title;
   };
});
</script>
</body>
</html>
</body>
</html>