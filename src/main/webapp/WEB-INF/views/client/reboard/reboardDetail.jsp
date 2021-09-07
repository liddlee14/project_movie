<%@page import="com.koreait.movie.domain.Reboard"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%
	Reboard reboard=(Reboard)request.getAttribute("reboard");
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

<!-- celebritylist11:56-->
<head>
<!-- Basic need -->
<title>Open Pediatrics</title>
<meta charset="UTF-8">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<link rel="profile" href="#">

<!--Google Font-->
<link rel="stylesheet"
	href='http://fonts.googleapis.com/css?family=Dosis:400,700,500|Nunito:300,400,600' />
<!-- Mobile specific meta -->
<meta name=viewport content="width=device-width, initial-scale=1">
<meta name="format-detection" content="telephone-no">

<!-- CSS files -->
<link rel="stylesheet" href="/resources/client/css/plugins.css">
<link rel="stylesheet" href="/resources/client/css/style.css">

<style>
.rBt{
	background-color: #DF002D;
	color: #FFFEFD;
	border-radius: 8px;
}

.formWidth{
	width: 1000px;
	height: 500px;
	margin: auto;
}

.reTxt{
	border-color:#0B1A2A;
	border-radius: 9px;
	background-color: #233A50;
	height: 300px;
	color: #ABB7C4;
}


</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){ 
	$("#bt_update").click(function(){
		if(confirm("수정하시겠어요?")){
			edit();
		}
	});
	$("#bt_delete").click(function(){
		if(confirm("삭제하시겠어요?")){
			del();
		}	
	});
	$("#bt_list").click(function(){
		location.href="/client/reboard/list";
	});
	$("#bt_reply").click(function(){
		replyForm();
	});
});
function edit(){
	$("form").attr({
		action:"/client/reboard/update",
		method:"post"
	});
	$("form").submit();
}
function del(){
	$("form").attr({
		"action":"/client/reboard/delete",
		"method":"post"
	});	
	$("form").submit();
}
function replyForm(){
	$("form").attr({
		"action":"/client/reboard/replyform",
		"method":"post"
	});	
	$("form").submit();
}

</script>

</head>
<body>
	<!--preloading-->
	<div id="preloader">
		<img class="logo" src="/resources/client/images/logo1.png" alt=""
			width="119" height="58">
		<div id="status">
			<span></span> <span></span>
		</div>
	</div>
	<!--end of preloading-->


	<!-- BEGIN | Header -->
	<%@include file="../inc/header.jsp"%>
	<!-- /.navbar-collapse -->
	</nav>

	<!-- top search form -->
	<div class="hero common-hero">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="hero-ct">
							<h1>게시판</h1>
							<ul class="breadcumb">
	
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	<!-- END | Header -->

<div class="page-single">
	<div class="form-style-1 user-pro formWidth" >
					<form >
						<div class="row">
							<div class="col-md-6 form-it">
								<label>제목</label>
								<input type="text" name="title" value="<%=reboard.getTitle()%>">							
							</div>
							<input type="hidden" name="reboard_id" value="<%=reboard.getReboard_id()%>">							
							
							<div class="col-md-6 form-it">
								<label>작성자</label>
								<input type="text" name="user_id" value="<%=client.getUser_id()%>">
							</div>
						</div>
							<label>내용</label>
								<textarea class="reTxt" name="content" cols="30" rows="10"><%=reboard.getContent()%></textarea>
							
							<input type="hidden" name="team" value="<%=reboard.getTeam()%>"><br>
							<input type="hidden" name="step" value="<%=reboard.getStep()%>"><br>
							<input type="hidden" name="depth" value="<%=reboard.getDepth()%>"><br>
													
						<div class="row">
																		
							<button class="rBt" id="bt_reply" type="button" >답변</button>
							<button class="rBt" id="bt_list" type="button" >목록</button>
							<button class="rBt" id="bt_update" type="button">수정</button>
							<button class="rBt" id="bt_delete" type="button" >삭제</button>						
							
						</div>	
					</form>
				</div>
			</div>
	<!-- end of celebrity list section-->

	<!-- footer section-->
	<%@include file="../inc/footer.jsp"%>

	<!-- end of footer section-->
	<script src="/resources/client/js/jquery.js"></script>
	<script src="/resources/client/js/plugins.js"></script>
	<script src="/resources/client/js/plugins2.js"></script>
	<script src="/resources/client/js/custom.js"></script>
	
</body>

<!-- celebritylist12:04-->
</html>