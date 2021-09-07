<%@page import="java.util.concurrent.ConcurrentHashMap.KeySetView"%>
<%@ page contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>
<!--[if IE 7]>
<html class="ie ie7 no-js" lang="en-US">
<![endif]-->
<!--[if IE 8]>
<html class="ie ie8 no-js" lang="en-US">
<![endif]-->
<!--[if !(IE 7) | !(IE 8)  ]><!-->
<html lang="en" class="no-js">

<!-- userprofile14:04-->
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
	 <style>
   .user-fav{
   	height: 450px;
   }
   </style>
</head>
<body>
<!--preloading-->
<div id="preloader">
    <img class="logo" href="/resources/client/css/logo1.png" alt="" width="119" height="58">
    <div id="status">
        <span></span>
        <span></span>
    </div>
</div>
<%@include file="../inc/header.jsp"%>
<!--end of preloading-->
<!--login form popup-->
<!-- END | Header -->
<div class="hero user-hero">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="hero-ct">
				<h1><%=client.getUser_id() %>님의 프로필 </h1>
					<ul class="breadcumb">
						<li class="active"><a href="#">Home</a></li>
						<li> <span class="ion-ios-arrow-right"></span>Profile</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="page-single">
	<div class="container">
		<div class="row ipad-width">
			<div class="col-md-3 col-sm-12 col-xs-12">
				<div class="user-information">
					<!-- 사이드바 -->
			<%@include file="../inc/sidebar.jsp" %>
			<!-- /사이드바 -->			
				<div class="form-style-1 user-pro" >
					
					<form  class="user" >			
						<h4>02. 비밀번호 확인</h4>
						<div class="row">
							<div class="col-md-6 form-it">
								<label>현재 비밀번호</label>
								<input type="text" id="passCheck" name="password">
							</div>					
							<input type="hidden" name="client_id" value="<%=client.getClient_id()%>">			
						</div>															
						<div class="row">
							<div class="col-md-2">
								<button type="button" id="edit">확인</button>
							</div>
						</div>	
					</form>
						
				</div>
			</div>
		</div>
	</div>
</div>
<!-- footer section-->
<%@include file="../inc/footer.jsp"%>
<!-- end of footer section-->
<script src="/resources/client/js/serializeObject.js"></script>
<script src="/resources/client/js/jquery.js"></script>
<script src="/resources/client/js/plugins.js"></script>
<script src="/resources/client/js/plugins2.js"></script>
<script src="/resources/client/js/custom.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">		





$(function(){ 	
	$("#edit").click(function(){	
	var value= $("#passCheck").val();
		if(value==<%=client.getPassword()%>){
			edit();		
		}else{
			alert("비밀번호가 다릅니다");
		}	
	
	});
});
function edit(){
	$("form").attr({
		"action":"/client/mypage/passCheck",
		"method":"POST"
	});	
	$("form").submit();
}
</script>	
</body>
</html>