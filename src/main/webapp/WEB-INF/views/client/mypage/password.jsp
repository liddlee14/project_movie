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
					<%-- <h1><%=client.getName() %>님의 프로필 </h1> --%>
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
				 <div class="user-fav">
                  <p>Account Details</p>
                  <ul>
                  <form>                  
                     <li class="active"><a href="/client/mypage/detail?client_id=<%=client.getClient_id() %>">회원정보수정</a></li>
                     <li ><a href="/client/mypage/passform?client_id=<%=client.getClient_id() %>">비밀번호 변경</a></li>                     
                     <li><a id="delete">회원탈퇴</a></li>
                 	<li><a href="/client/reserv/list?"client_id=<%=client.getClient_id() %>">예매내역</a></li>
                  </form>
                  </ul>
               </div>   
            </div>
         </div>
         <div class="col-md-9 col-sm-12 col-xs-12">
			<!-- /사이드바 -->
			
				<div class="form-style-1 user-pro" >
				
						<h4>02. 비밀번호 수정</h4>						
						
						<div class="row">
							<div class="col-md-6 form-it">
								<label>Old Password</label>
								<input type="text" placeholder="*****" value="<%=client.getPassword()%>">
							</div>				
						</div>
					<form  class="user">
						<div class="row">
							<div class="col-md-6 form-it">
								<label>New Password</label>
								<input type="text" id="password1" placeholder="****">
							</div>
						</div>
						<input type="hidden" name="client_id" value="<%=client.getClient_id()%>">			
						<div class="row">
							<div class="col-md-6 form-it">
								<label>Confirm New Password</label>
								<input type="text" id="password2" name="password" placeholder="**** " >
							</div>
						</div>
						
						<div class="row">
							<div class="col-md-2">
								<button id="bt_update" type="button">수정</button>
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
	   $("#bt_update").click(function(){
	   var NewPass= $("#password1").val();
	   var ConfirmPass= $("#password2").val();
	      if(confirm("수정하시겠어요?")){
	    	 if(NewPass==ConfirmPass){
	    		 
	    	  edit();
	    	 }else{
	    		 alert("비밀번호가 서로 다릅니다");
	    	 }
	    	  
	      }
	   });
});		
function edit(){
	$("form").attr({
		action:"/client/mypage/password",
		method:"POST"
	});
	$("form").submit();
}

</script>	
</body>
</html>