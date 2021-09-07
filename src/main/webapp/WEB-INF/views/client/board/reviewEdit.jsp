<%@page import="com.koreait.movie.domain.Board"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%
Board boardDetail = (Board) request.getAttribute("board");
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
		if(confirm("저장하시겠어요?")){
			edit();
		}
	});
});
function edit(){
	$("form").attr({
		action:"/client/update",
		method:"post"
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
							<h1>리뷰</h1>
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
							<input type="hidden" name="board_id" value="<%=boardDetail.getBoard_id() %>"></input>
								<label>제목</label>
								<input type="text" name="title" value="<%=boardDetail.getTitle() %>">							
							</div>
														
							
							<div class="col-md-6 form-it">
								<label>작성자</label>
								<input type="text" name="user_id" value="<%=client.getUser_id()%>" readonly="readonly">
							</div>
						</div>
							<label>내용</label>
								<textarea class="reTxt" name="content" cols="30" rows="10"><%=boardDetail.getContent() %></textarea>
							
														
						<div class="row">
																				
							<button class="rBt" type="button" id="bt_update" >저장</button>			
							
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