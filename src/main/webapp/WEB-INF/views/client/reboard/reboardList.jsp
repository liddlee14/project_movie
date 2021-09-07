<%@page import="com.koreait.movie.paging.PagingManager"%>
<%@page import="com.koreait.movie.domain.Reboard"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%
	List<Reboard> reboardList =(List)request.getAttribute("reboardList");
	PagingManager pagingManager = (PagingManager) request.getAttribute("pagingManager");
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
		background-color: #DD003F;
	color: #FFFEFD;
	border-radius: 8px;
	border-color: #DD003F;
}

#retable{
	width: 1130px;
}

</style>


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

	<!-- END | Header -->

	<div class="hero common-hero">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="hero-ct">
						<h1>1 : 1 문의</h1>
						<ul class="breadcumb">

						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- celebrity list section-->
	<div class="page-single">
		<div class="container">
			<div class="row ipad-width2">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="topbar-filter">
						<p class="pad-change">
							Found <span><%=reboardList.size() %> </span> reviews in total
						</p>

					</div>
					<div class="row">
						<div class="col-md-12">
							<!-- 글 목록 나오는곳 -->
			                    <%
								int curPos=pagingManager.getCurPos();
								int num=pagingManager.getNum();
								
								%>
							<div class="card-body table-responsive p-0">
			                <table class="topbar-filter" id="retable">			                  
			                    <tr class="pad-change" style="color: white; text-align: center;" >                                 
			                      <th style="width: 75px;"></th>                
			                      <th style="width: 75px;">번호</th>                
			                      <th style="width: 400px;">제목</th>                
			                      <th style="width: 150px">작성자</th>
			                      <th style="width: 150px">날짜</th>
			                      <th>조회수</th>
			                    </tr>
								<%for (int i = 1; i <=pagingManager.getPageSize() ; i++){ %>					
								<%if(num<1)break; %> 		                    
			                    <%
			                    	Reboard reboard=reboardList.get(curPos++);
			                    %>
		                        <tr style="color: white;">                                 	                          
		                          <td></td>	            	          
		                          <td><%=i%></td>	            	          
		            	          <td>
		            	              <%if(reboard.getDepth()>0){ %>
		                	          <img src="/resources/client/images/next.png" width="20px" style="margin-left: <%=10*reboard.getDepth()%>px">
		                    	      <%} %>
			                          <a href="/client/reboard/detail?reboard_id=<%=reboard.getReboard_id()%>" style="color: white;"><%=reboard.getTitle() %></a>
		                          </td>
		                          <td><%=client.getUser_id()%></td>
		                          <td><%=reboard.getRegdate().substring(0,10) %></td>
		                          <td><%=reboard.getHit() %></td>
		                        </tr>
		                        <%num--; %>
		                        <%} %>
			                </table>
			              </div>
											
						</div>

					</div>
					<div class="topbar-filter">
						<div class="pagination2">
							<a href="#">
								<i class="ion-arrow-left-b"></i>
							</a>
							<%for(int i=pagingManager.getFirstPage();i<=pagingManager.getLastPage();i++){%>
							<%if(i>pagingManager.getTotalPage())break; //i가 총 페이지수를 넘어서면 반복문은 멈춘다 %>
							<a href="/client/reboard/list.jsp?currentPage=<%=i%>" <%if(pagingManager.getCurrentPage()==i){%>class="pageNum"<%}%>><%=i%></a>
							<%}%>
							<a href="#"> 
								<i class="ion-arrow-right-b"></i>
							</a>
						</div>
						<div>
						<button class="rBt" type="button" onClick="location.href='/client/reboard/write'">글쓰기</button>
						</div>
					</div>
				</div>

			</div>
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
	
	
	</script>
</body>

<!-- celebritylist12:04-->
</html>