<%@page import="java.util.List"%>
<%@page import="com.koreait.movie.domain.Reserv"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%
	List<Reserv> rsList=(List)request.getAttribute("reserv");
	
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
   	height: 540px;
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

<!--end of preloading-->
<!--login form popup-->
<%@include file="../inc/header.jsp"%>
<!-- END | Header -->
<div class="hero user-hero">
   <div class="container">
      <div class="row">
         <div class="col-md-12">
            <div class="hero-ct">
            <h1> 예매내역 </h1>
               
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
         				<form>
			            <div class="col-md-9 col-sm-12 col-xs-12">
					
							<div class="flex-wrap-movielist user-fav-list">
								
								<div class="movie-item-style-2">
									
									<div class="mv-item-infor">
										<%for(Reserv re:rsList){ %>
										<input type="hidden" name="client_id" value="<%=client.getClient_id()%>">
										<input type="hidden" name="reserv_id" value="<%=re.getReserv_id()%>">
										
										
										<h6><a href="#">영화 : <%=re.getMovie() %></a></h6>
										
										<p class="rate"><i class="ion-android-star"></i><span>극장 : <%=re.getTheater()%></span> 지점 : <%=re.getArea() %> </p>
										<br>
										<p class="run-time">예매날짜 : <%=re.getDate() %>   .     <span>상영시간 : <%=re.getTime() %></span></p>
										<br>
										<p>좌석 : <%=re.getSeat() %></p>         <button class="cancel" type="button"  >예매취소</button>
										<br>	
										<%} %>
									</div>
								</div>										
							</div>		

						</div>
					</form>
					</div>
				</div>
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
	$(".cancel").click(function(){
		if(confirm("취소하시겠어요?")){
			cancel();
		}
	});

});
function cancel(){
	$("form").attr({
		action:"/client/reserv/list",
		method:"post"
	});
	$("form").submit();
}


</script>   
</body>
</html>