<%@page import="com.learnify.business.helper.ConnectionProvider"%>
<%@page import="com.learnify.business.entity.BMessage"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exploare LearniFy Business</title>
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


<style type="text/css">
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
</style>
</head>
<body>

	<!--navbar  -->
	<%@ include file="businessPageNav.jsp"%>
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
	<div class="jumbotron">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<h1 class="display-4 mb-3">Welcome content creators!</h1>
					<h3>Share your expertise and help learners around the world
						achieve their goals.</h3>
					<a href="index.jsp"
						class="btn btn-lg btn primary-background text-white mr-3"><i
						class="fa fa-user-plus"></i> LearniFy Courses</a> <a
						href="businessLogin.jsp"
						class="btn btn-lg primary-background text-white"><i
						class="fa fa-user-circle fa-spin"></i> Log In</a>
				</div>
				<div class="col-md-6 d-none d-md-block">
					<img src="img/slider-image3.jpg" alt="Banner Image"
						class="img-fluid">
				</div>
			</div>
		</div>
	</div>

	<!-- Carousel wrapper -->

	<div class="text-center"></div>
	<div class="bg-light">
		<div class="container ">

			<hr>

			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<div class="row">
							<div class="col-md-4">
								<img src="img/top university.png" class="d-block w-100"
									alt="Photo">
							</div>
							<div class="col-md-8">
								<div class="card-body">
									<h1 class="card-text">Offer your learners content from
										100+ leading universities and industry partners</h1>
									<p class="card-text">
									<p class="text-muted">- Train teams with engaging content
										available in multiple formats and lengths suited to different
										learning needs and schedules.</p>

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
									<h1 class="card-text">Increase skills proficiency and
										durability with applied learning</h1>
									<p class="card-text">
									<p class="text-muted">Help employees quickly master skills
										with Guided Projects: hands-on, single-session training
										programs with step-by-step guidance from an expert.</p>
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
	<div class=" container jumbotron bg-dark text-white text-center">
		<h1 class="display-4">Accelerate your business transformation</h1>
		<p class="lead">Meet the needs of your business with training and insights to evolve your organization</p>
		<hr class="my-4">
		<p></p>
		<p class="lead">
			<a class="btn btn-primary btn-lg " href="#" role="button">Contact Sales</a>
		</p>
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