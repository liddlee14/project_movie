<%@page import="com.koreait.movie.domain.MovieInfo"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%
MovieInfo mi=(MovieInfo)request.getAttribute("info");

%>
<!DOCTYPE html>
<!--[if IE 7]>
<html class="ie ie7 no-js" lang="en-US">
<![endif]-->
<!--[if IE 8]>
<html class="ie ie8 no-js" lang="en-US">
<![endif]-->
<!--[if !(IE 7) | !(IE 8)  ]><!-->
<html lang="en" class="no-js">

<!-- moviesingle07:38-->
<head>
	<!-- Basic need -->
	<title>영화상세정보</title>
	<meta charset="UTF-8">
	<meta name="description" content="">
	<meta name="keywords" content="">
	<meta name="author" content="">
	<link rel="profile" href="#">

    <!--Google Font-->
    <link rel="stylesheet" href='http://fonts.googleapis.com/css?family=Dosis:400,700,500|Nunito:300,400,600' />
	<!-- Mobile specific meta -->
	<meta name=viewport content="width=device-width, initial-scale=1">
	<meta name="format-detection" content="telephone-no">

	<!-- CSS files -->
	<link rel="stylesheet" href="/resources/client/css/plugins.css">
	<link rel="stylesheet" href="/resources/client/css/style.css">

</head>
<body>
<!--preloading-->
<div id="preloader">
    <img class="logo" src="/resources/client/images/logo1.png" alt="" width="119" height="58">
    <div id="status">
        <span></span>
        <span></span>
    </div>
</div>
<!--end of preloading-->
<!--login form popup-->

<!--end of login form popup-->
<!--signup form popup-->

<!--end of signup form popup-->

<!-- BEGIN | Header -->
<%@include file="../inc/header.jsp"%>
<!-- END | Header -->

<div class="hero mv-single-hero">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<!-- <h1> movie listing - list</h1>
				<ul class="breadcumb">
					<li class="active"><a href="#">Home</a></li>
					<li> <span class="ion-ios-arrow-right"></span> movie listing</li>
				</ul> -->
			</div>
		</div>
	</div>
</div>
<div class="page-single movie-single movie_single">
<input type="hidden" name="title" value="<%=mi.getTitle() %>"></input>
	<div class="container">
		<div class="row ipad-width2">
			<div class="col-md-4 col-sm-12 col-xs-12">
				<div class="movie-img sticky-sb">
					<img src="<%=mi.getImage() %>" alt="">
					<div class="movie-btn">	
						
						<div class="btn-transform transform-vertical">
							<div><a href="/client/reserv/regist" class="item item-1 yellowbtn"> <i class="ion-card"></i> Buy ticket</a></div>
							<div><a href="/client/reserv/regist" class="item item-2 yellowbtn"><i class="ion-card"></i></a></div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-8 col-sm-12 col-xs-12">
				<div class="movie-single-ct main-content">
					<h1 class="bd-hd"><%=mi.getTitle() %> <span></span></h1>
					<div class="social-btn">
						<a href="#" class="parent-btn"><i class="ion-heart"></i> Add to Favorite</a>
						<div class="hover-bnt">
							<a href="#" class="parent-btn"><i class="ion-android-share-alt"></i>share</a>
							<div class="hvr-item">
								<a href="#" class="hvr-grow"><i class="ion-social-facebook"></i></a>
								<a href="#" class="hvr-grow"><i class="ion-social-twitter"></i></a>
								<a href="#" class="hvr-grow"><i class="ion-social-googleplus"></i></a>
								<a href="#" class="hvr-grow"><i class="ion-social-youtube"></i></a>
							</div>
						</div>		
					</div>
					<!--  
					<div class="movie-rate">
						<div class="rate">
							<i class="ion-android-star"></i>
							<p><span>8.1</span> /10<br>
								<span class="rv">56 Reviews</span>
							</p>
						</div>
						<div class="rate-star">
							<p>Rate This Movie:  </p>
							<i class="ion-ios-star"></i>
							<i class="ion-ios-star"></i>
							<i class="ion-ios-star"></i>
							<i class="ion-ios-star"></i>
							<i class="ion-ios-star"></i>
							<i class="ion-ios-star"></i>
							<i class="ion-ios-star"></i>
							<i class="ion-ios-star"></i>
							<i class="ion-ios-star-outline"></i>
						</div>
					</div>
					-->
					<div class="movie-tabs">
						<div class="tabs">
							<ul class="tab-links tabs-mv">
								<li class="active"><a href="#overview">Overview</a></li>
								<li><a href="#reviews"> Reviews</a></li>
								<li><a href="#cast">  Cast & Crew </a></li>
								<li><a href="#media"> Media</a></li> 
								<li><a href="#moviesrelated"> Related Movies</a></li>                        
							</ul>
						    <div class="tab-content">
						        <div id="overview" class="tab active">
						            <div class="row">
						            	<div class="col-md-8 col-sm-12 col-xs-12">
						            		<p><%=mi.getPlot() %></p>
						            		 
						            		<div class="title-hd-sm">
												<h4>기본정보</h4>
												
											</div>
											<div class="col-md-12 col-sm-12 col-xs-12">
												<p><%=mi.getSpec() %></p>
											</div>
											</div>
											</div>
											<!-- 
											<div class="title-hd-sm">
												<h4>cast</h4>
												<a href="#" class="time">Full Cast & Crew  <i class="ion-ios-arrow-right"></i></a>
											</div>
											<!-- movie cast -->
											<!--  
											<div class="mvcast-item">											
												<div class="cast-it">
													<div class="cast-left">
														<img src="/resources/client/images/uploads/cast1.jpg" alt="">
														<a href="#">Robert Downey Jr.</a>
													</div>
													<p>...  Robert Downey Jr.</p>
												</div>
												<div class="cast-it">
													<div class="cast-left">
														<img src="/resources/client/images/uploads/cast2.jpg" alt="">
														<a href="#">Chris Hemsworth</a>
													</div>
													<p>...  Thor</p>
												</div>
												<div class="cast-it">
													<div class="cast-left">
														<img src="/resources/client/images/uploads/cast3.jpg" alt="">
														<a href="#">Mark Ruffalo</a>
													</div>
													<p>...  Bruce Banner/ Hulk</p>
												</div>
												<div class="cast-it">
													<div class="cast-left">
														<img src="/resources/client/images/uploads/cast4.jpg" alt="">
														<a href="#">Chris Evans</a>
													</div>
													<p>...  Steve Rogers/ Captain America</p>
												</div>
												<div class="cast-it">
													<div class="cast-left">
														<img src="/resources/client/images/uploads/cast5.jpg" alt="">
														<a href="#">Scarlett Johansson</a>
													</div>
													<p>...  Natasha Romanoff/ Black Widow</p>
												</div>
												<div class="cast-it">
													<div class="cast-left">
														<img src="/resources/client/images/uploads/cast6.jpg" alt="">
														<a href="#">Jeremy Renner</a>
													</div>
													<p>...  Clint Barton/ Hawkeye</p>
												</div>
												<div class="cast-it">
													<div class="cast-left">
														<img src="/resources/client/images/uploads/cast7.jpg" alt="">
														<a href="#">James Spader</a>
													</div>
													<p>...  Ultron</p>
												</div>
												<div class="cast-it">
													<div class="cast-left">
														<img src="/resources/client/images/uploads/cast9.jpg" alt="">
														<a href="#">Don Cheadle</a>
													</div>
													<p>...  James Rhodes/ War Machine</p>
												</div>
											</div>
											-->
			
					

<!-- end of footer section-->

<script src="/resources/client/js/jquery.js"></script>
<script src="/resources/client/js/plugins.js"></script>
<script src="/resources/client/js/plugins2.js"></script>
<script src="/resources/client/js/custom.js"></script>
</body>

<!-- moviesingle11:03-->
</html>