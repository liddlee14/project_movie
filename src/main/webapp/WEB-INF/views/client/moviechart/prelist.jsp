<%@page import="com.koreait.movie.domain.Premovie"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%
List<Premovie> preList=(List)request.getAttribute("prechart");

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

<!-- moviegridfw07:38-->
<head>
	<!-- Basic need -->
	<title>Open Pediatrics</title>
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

<div class="hero common-hero">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="hero-ct">
					<h1>상영예정작</h1>
					<ul class="breadcumb">
						<li class="active"><a href="#">Home</a></li>
						<!-- <li> <span class="ion-ios-arrow-right"></span> movie listing</li> -->
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="page-single">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="topbar-filter fw">
					<p>Found <span>1,608 movies</span> in total</p>
					<label>Sort by:</label>
					<select>
						<option value="popularity">Popularity Descending</option>
						<option value="popularity">Popularity Ascending</option>
						<option value="rating">Rating Descending</option>
						<option value="rating">Rating Ascending</option>
						<option value="date">Release date Descending</option>
						<option value="date">Release date Ascending</option>
					</select>
					<a href="movielist.html" class="list"><i class="ion-ios-list-outline "></i></a>
					<a  href="moviegridfw.html" class="grid"><i class="ion-grid active"></i></a>
				</div>
				<div class="flex-wrap-movielist mv-grid-fw">
				
				<%
                  	for(Premovie pre : preList){
                  	%>
						<div class="movie-item-style-2 movie-item-style-1">
						<input type="hidden" name="p_title" value="<%=pre.getP_title() %>"></input>
							<img src=<%=pre.getP_img() %> alt="">
							<div class="hvr-inner">
	            				<a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
	            			</div>
							<div class="mv-item-infor">
								<h6><a href="/client/moviechart/preinfo?p_title=<%=pre.getP_title()%>"><%=pre.getP_title() %></a></h6>
								<p class="rate"><i class="ion-android-star"></i><span><%=pre.getP_date() %></span></p>
							</div>
						</div>	
						<%}%>				
						
						
				</div>		
				<div class="topbar-filter">
					<label>Movies per page:</label>
					<select>
						<option value="range">20 Movies</option>
						<option value="saab">10 Movies</option>
					</select>
					
					<div class="pagination2">
						<span>Page 1 of 2:</span>
						<a class="active" href="#">1</a>
						<a href="#">2</a>
						<a href="#">3</a>
						<a href="#">...</a>
						<a href="#">78</a>
						<a href="#">79</a>
						<a href="#"><i class="ion-arrow-right-b"></i></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- footer section-->
<%@include file="../inc/footer.jsp" %>
<!-- end of footer section-->

<script src="/resources/client/js/jquery.js"></script>
<script src="/resources/client/js/plugins.js"></script>
<script src="/resources/client/js/plugins2.js"></script>
<script src="/resources/client/js/custom.js"></script>
</body>

<!-- moviegridfw07:38-->
</html>