<%@page import="com.koreait.movie.domain.Client"%>

<%@ page contentType="text/html;charset=UTF-8"%>
<%
	Client client=(Client)session.getAttribute("obj");
%>
<!-- popup start-->

<!-- /login popup end-->

<!--signup form popup-->

<!--end of signup form popup-->


<header class="ht-header full-width-hd">
	<div class="row">
		<nav id="mainNav" class="navbar navbar-default navbar-custom">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header logo">
				<div class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<div id="nav-icon1">
						<span></span> <span></span> <span></span>
					</div>
				</div>
				<a href="/client/home"><img class="logo"
					src="/resources/client/images/logo1.png" alt="" width="119"
					height="58"></a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse flex-parent"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav flex-child-menu menu-left">
					<li class="hidden"><a href="#page-top"></a></li>
					<li class="dropdown first"><a
						class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown"
						data-hover="dropdown"> 영화 <i class="fa fa-angle-down"
							aria-hidden="true"></i>
					</a>
						<ul class="dropdown-menu level1">
							<li><a href="/client/moviechart/all">현재상영작</a></li>
							<li><a href="/client/moviechart/preall">상영예정작</a></li>
							
						</ul></li>
					<li class="dropdown first"><a
						class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown"
						data-hover="dropdown"> 예매<i class="fa fa-angle-down"
							aria-hidden="true"></i>
					</a>
						<ul class="dropdown-menu level1">
							<!-- <li class="dropdown">
									<a href="#">about us <i class="fa fa-caret-right" aria-hidden="true"></i></a>
									<ul class="dropdown-menu level2">
										<li><a href="aboutv1.html">About Us 01</a></li>
										<li><a href="aboutv2.html">About Us 02</a></li>
									</ul>
								</li> -->
							<li><a href="/client/reserv/regist">예매</a></li>
						</ul></li>
					<li class="dropdown first"><a
						class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown"
						data-hover="dropdown"> 리뷰 <i class="fa fa-angle-down"
						aria-hidden="true"></i>
					</a>
						<ul class="dropdown-menu level1">
							<li><a href="/client/list">리뷰게시판</a></li>
							
						</ul></li>
					<li class="dropdown first"><a href="/client/reboard/list">고객센터</a></li>
				</ul>
				<ul class="nav navbar-nav">
					
					<%if(client==null){ %>
					<li class="loginLink"><a href="#">LOG In</a></li>
					<li class="btn signupLink"><a href="#">sign up</a></li>
					<%}else{ %>				
				
						<li style="color: white;"><a href="/client/mypage/detail?client_id=<%=client.getClient_id() %>">My Page</a></li>
					
						<form>
							<li><a href="/client/logout">Log Out</a></li>	
						</form>				
					<%} %>
					
					
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</nav>
		<!-- search form -->
	</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$("button[name='regist']").click(function(){	
		signCheck();		
	});
});
function signCheck(){	
	$("form").attr({
		"action":"/client/regist",
		"method":"POST"
	});
	$("form").submit();
}
</script>	
</header>