<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="com.tech.blog.entity.User"%>
<%@page import="com.tech.blog.entity.Message"%>
<%@ page import="com.learnify.business.entity.Category"%>
<%@ page import="com.learnify.business.dao.PostDao"%>
<%@ page import="com.learnify.business.entity.BMessage"%>
<%@ page import="com.learnify.business.entity.BUser"%>

<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>


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
<title>Main Page</title>
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

.carousel .item {
	height: 300px;
}

.item img {
	position: absolute;
	top: 0;
	left: 0;
	min-height: 300px;
}

.navbar-dark .navbar-nav .nav-link {
	color: #fff;
}

.navbar-dark .navbar-nav .nav-link:hover {
	color: #f8f9fa;
}

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
 /* add scale effect on hover */
}

.shadow {
	-webkit-box-shadow: -3px 33px 34px 15px rgba(0,0,0,0.76);
-moz-box-shadow: -3px 33px 34px 15px rgba(0,0,0,0.76);
box-shadow: -3px 33px 34px 15px rgba(0,0,0,0.76);

}

/*.card-header{
background-color: red;
}*/
.image-container {
	text-align: center; /* Centers the image horizontally */
	margin-top: -140px; /* Adds a top margin to the container */
}

img {
	max-width: 100%;
	/* Sets the maximum width of the image to 100% of the container */
	height: auto;
	/* Sets the height to auto, so the aspect ratio is maintained */
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
						<a href="#" onclick="getPosts(0, this)"
							class=" c-link list-group-item list-group-item-action active">
							All Courses </a>
						<!--categories-->

						<%
						PostDao d = new PostDao(ConnectionProvider.getConnection());
						ArrayList<Category> list1 = d.getAllCategories();
						for (Category cc : list1) {
						%>
						<a href="#" onclick="getPosts(<%=cc.getCid()%>, this)"
							class=" c-link list-group-item list-group-item-action"><%=cc.getName()%></a>


						<%
						}
						%>
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
					<h1 class="display-4 mb-3">
						Welcome
						<%=user.getName()%>.
					</h1>
					<p class="lead mb-5">Whether you're a student, a working
						professional, or simply someone who loves to learn, our platform
						offers a wide range of courses and programs to help you achieve
						your goals.!</p>
				</div>
				<div class="col-md-5 d-none d-md-block image-container">
					<img src="img/pngwing.com (5).png" alt="Banner Image"
						class="img-fluid">
				</div>
			</div>
		</div>
	</div>







	<!-- dynamic post start -->



	<main>
	
		<!--posts-->
		<div class="container text-center" id="loader">
			<i class="fa fa-refresh fa-4x fa-spin"></i>
			<h3 class="mt-2">Loading...</h3>
		</div>
		<div class="container-fluid mb-4" id="post-container"></div>
	</main>








	<!--  card-ends -->


	<!-- Model starts -->

	<%@ include file="footer.jsp"%>


	<!-- Model end-->

	<!-- JavaScript -->
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





	<!--loading post using ajax-->
	<script>
		function getPosts(catId, temp) {
			$("#loader").show();
			$("#post-container").hide()
			$(".c-link").removeClass('active')
			$.ajax({
				url : "load_courses.jsp",
				data : {
					cid : catId
				},
				success : function(data, textStatus, jqXHR) {
					console.log(data);
					$("#loader").hide();
					$("#post-container").show();
					$('#post-container').html(data)
					$(temp).addClass('active')
				}
			})
		}
		$(document).ready(function(e) {
			let allPostRef = $('.c-link')[0]
			getPosts(0, allPostRef)
		})
	</script>




</body>
</html>