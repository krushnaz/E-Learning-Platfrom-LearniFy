<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="com.tech.blog.entity.Message"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<!--  CSS  -->
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
<link rel="stylesheet" href="css/corousel.css">
<link rel="stylesheet" href="css/theme.css">
<link rel="stylesheet" href="css/templete.css">

<!-- 
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
	integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
	crossorigin="anonymous">  -->


<style type="text/css">
.card:hover {
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
	/* change box shadow on hover */
	transform: scale(1.05); /* add scale effect on hover */
}

.shadow {
	-webkit-box-shadow: 9px 9px 30px 1px rgba(26, 4, 26, 0.78);
	-moz-box-shadow: 9px 9px 30px 1px rgba(26, 4, 26, 0.78);
	box-shadow: 9px 9px 30px 1px rgba(26, 4, 26, 0.78);
}

.bg-color {
	background-color: #e3f2fd;
}

h1, h2, h3, h4, h5, h6 {
	font-family: 'Font Name', sans-serif;
}

.navbar-dark .navbar-nav .nav-link {
	color: #fff;
}

.navbar-dark .navbar-nav .nav-link:hover {
	color: #f8f9fa;
}
/* custome container*/
.custom-container {
	max-width: 1400px;
}

/* card corousel */
.cards-wrapper {
	display: flex;
	justify-content: center;
}

.card img {
	max-width: 100%;
	max-height: 100%;
}

.card {
	margin: 0 0.5em;
	box-shadow: 2px 6px 8px 0 rgba(22, 22, 26, 0.18);
	border: none;
	border-radius: 0;
}

.carousel-inner {
	padding: 1em;
}

.carousel-control-prev, .carousel-control-next {
	background-color: #e1e1e1;
	width: 5vh;
	height: 5vh;
	border-radius: 50%;
	top: 50%;
	transform: translateY(-50%);
}

@media ( min-width : 768px) {
	.card img {
		height: 11em;
	}
}
</style>
</head>
<body>

	<!--navbar  -->
	<%@ include file="normal_navbar.jsp"%>
	<%
	Message m = (Message) session.getAttribute("msg");
	if (m != null) {
	%>
	<div class="alert <%=m.getCssClass()%>" role="alert">
		<%=m.getContent()%>
	</div>


	<%
	session.removeAttribute("msg");
	}
	%>
	<div class="jumbotron primary-background banner-background text-white">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<h1 class="display-4 mb-3">Your learning journey starts here.</h1>
					<p class="lead mb-5">Welcome to LearniFy - the online learning
						platform that's here to help you start your learning journey!</p>
					<a href="businessIndex.jsp"
						class="btn btn-lg btn-outline-light mr-3"><i
						class="fa fa-user-plus"></i> LearniFy for Business</a> <a
						href="login_page.jsp" class="btn btn-lg btn-outline-light"><i
						class="fa fa-user-circle fa-spin"></i> Log In</a>
				</div>
				<div class="col-md-6 d-none d-md-block">
					<img src="img/pngwing.com.png" alt="Banner Image" class="img-fluid">
				</div>
			</div>
		</div>
	</div>






	<!-- Carousel wrapper -->



	<section id="feature">
		<div class="container">
			<div class="row">

				<div class="col-md-4 col-sm-4 ">
					<div class="feature-thumb bg-color">
						<span>01</span>
						<h3>Trending Courses</h3>
						<p>Trending courses often focus on in-demand skills such as
							data analysis, coding, artificial intelligence, and digital
							marketing, among others.</p>
					</div>
				</div>

				<div class="col-md-4 col-sm-4 ">
					<div class="feature-thumb bg-color">
						<span>02</span>
						<h3>Flexibility</h3>
						<p>LearniFy offer the flexibility of accessing
							course material from anywhere and at any time, enabling learners
							to learn at their own pace and on their own schedule.</p>
					</div>
				</div>

				<div class="col-md-4 col-sm-4">
					<div class="feature-thumb bg-color">
						<span>03</span>
						<h3>Certificate</h3>
						<p>LearniFy often provide certificates upon
							completion of a course, which can be a valuable addition to a
							learner's resume or professional profile.</p>
					</div>
				</div>

			</div>
		</div>
	</section>

	<div class="bg-color">
		<div class="container bg-color">
			<div class="row">
				<div class="col-md-6">
					<img src="img/slider-image2.jpg" alt="Your Image Description"
						class="img-fluid">
				</div>
				<div class="col-md-6 mt-5">
					<h2>
						<b>Take the next step toward your personal and professional
							goals with LearniFy.</b>
					</h2>
					<p>Join now to receive personalized recommendations from the
						full LearniFy catalog..</p>
					<a type="button" href="registration_page.jsp"
						class="btn btn primary-background text-center text-white">Sign
						Up</a>
				</div>
			</div>
		</div>
	</div>



	<div class="container">

		<section id="courses">
			<div class="container">
				<div class="row">

					<div class="col-md-12 col-sm-12">
						<div class="section-title">
							<h2>
								Popular Courses <small>Upgrade your skills with newest
									courses</small>
							</h2>
						</div>

						
						<%@ include file="Card_main_page.jsp"%>
					</div>

				</div>
			</div>
		</section>

	</div>








	<div class="bg-color">
		<div class="container">
			<section>
				<div class="row d-flex justify-content-center">
					<div class="col-md-10 col-xl-8 text-center">
						<h3 class="mb-4">From the LearniFy community</h3>
						<p class="mb-4 pb-2 mb-md-5 pb-md-0">millions of people have
							already joined LearniFy</p>
					</div>
				</div>

				<div class="row text-center">
					<div class="col-md-4 mb-5 mb-md-0">
						<div class="d-flex justify-content-center mb-4">
							<img
								src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/img%20(1).webp"
								class="rounded-circle shadow-1-strong" width="150" height="150" />
						</div>
						<h5 class="mb-3">Maria Smantha</h5>
						<h6 class="text-primary mb-3">Web Developer</h6>
						<p class="px-xl-3">
							<i class="fas fa-quote-left pe-2"></i>I have tried many
							e-learning platforms, but Learnify stands out because of its
							interactive features and personalized learning approach.
						</p>
						<ul class="list-unstyled d-flex justify-content-center mb-0">
							<li><i class="fas fa-star fa-sm text-warning"></i></li>
							<li><i class="fas fa-star fa-sm text-warning"></i></li>
							<li><i class="fas fa-star fa-sm text-warning"></i></li>
							<li><i class="fas fa-star fa-sm text-warning"></i></li>
							<li><i class="fas fa-star-half-alt fa-sm text-warning"></i></li>
						</ul>
					</div>
					<div class="col-md-4 mb-5 mb-md-0">
						<div class="d-flex justify-content-center mb-4">
							<img
								src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/img%20(2).webp"
								class="rounded-circle shadow-1-strong" width="150" height="150" />
						</div>
						<h5 class="mb-3">Lisa Cudrow</h5>
						<h6 class="text-primary mb-3">Graphic Designer</h6>
						<p class="px-xl-3">
							<i class="fas fa-quote-left pe-2"></i> highly recommend Learnify
							to anyone who wants to take their learning to the next level. The
							platform is affordable, and the quality of the courses is
							top-notch.
						</p>
						<ul class="list-unstyled d-flex justify-content-center mb-0">
							<li><i class="fas fa-star fa-sm text-warning"></i></li>
							<li><i class="fas fa-star fa-sm text-warning"></i></li>
							<li><i class="fas fa-star fa-sm text-warning"></i></li>
							<li><i class="fas fa-star fa-sm text-warning"></i></li>
							<li><i class="fas fa-star fa-sm text-warning"></i></li>
						</ul>
					</div>
					<div class="col-md-4 mb-0">
						<div class="d-flex justify-content-center mb-4">
							<img
								src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/img%20(9).webp"
								class="rounded-circle shadow-1-strong" width="150" height="150" />
						</div>
						<h5 class="mb-3">John Smith</h5>
						<h6 class="text-primary mb-3">Marketing Specialist</h6>
						<p class="px-xl-3">
							<i class="fas fa-quote-left pe-2"></i>Learnify has been a
							game-changer for my learning experience! The platform is easy to
							use, and the courses are engaging and informative
						</p>
						<ul class="list-unstyled d-flex justify-content-center mb-0">
							<li><i class="fas fa-star fa-sm text-warning"></i></li>
							<li><i class="fas fa-star fa-sm text-warning"></i></li>
							<li><i class="fas fa-star fa-sm text-warning"></i></li>
							<li><i class="fas fa-star fa-sm text-warning"></i></li>
							<li><i class="far fa-star fa-sm text-warning"></i></li>
						</ul>
					</div>
				</div>

			</section>
		</div>
	</div>
	<!-- footer start  -->
	<%@ include file="footer.jsp"%>
	<!-- JavaScript -->


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