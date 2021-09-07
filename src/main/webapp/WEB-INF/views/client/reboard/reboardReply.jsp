<%@ page contentType="text/html;charset=UTF-8"%>
<% 
	//답변등록에 필요한 파라미터인 team,step,depth를 받자!
	String team=request.getParameter("team");
	String step=request.getParameter("step");
	String depth=request.getParameter("depth");
%>
<%=team %><br>
<%=step %><br>
<%=depth %><br>
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
	font-weight: bold;
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

#bt_regist{
	background-color: #DD003F;
	color: #FFFEFD;
	border-radius: 8px;
	border-color: #DD003F;
}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
function reply(){
	$("form").attr({
		"action":"/client/reboard/reply",
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
					<form  class="user">
				
						
						<div class="row">
							<div class="col-md-6 form-it">
								<label>제목</label>
								<input type="text" name="title" >
								
							</div>
							<div class="col-md-6 form-it">
								<label>작성자</label>								
								<input type="text"  name="writer" value="<%=client.getUser_id()%>">
							</div>
						</div>
							<label>내용</label>
								<textarea class="reTxt" name="content"></textarea>
							
							<input type="hidden" name="team" value="<%=team%>"><br>
							<input type="hidden" name="step" value="<%=step%>"><br>
							<input type="hidden" name="depth" value="<%=depth%>"><br>			
						
						<div class="row">
							<div class="col-md-2">
								<button id="bt_regist" type="button" onClick="reply()">등록</button>
							</div>
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