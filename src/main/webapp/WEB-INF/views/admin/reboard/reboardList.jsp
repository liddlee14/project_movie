<%@page import="com.koreait.movie.paging.PagingManager"%>
<%@page import="com.koreait.movie.domain.Reboard"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%
	List<Reboard>reboardList=(List)request.getAttribute("reboardList");
	PagingManager pagingManager = (PagingManager) request.getAttribute("pagingManager");
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>KMW Admin Page</title>
   <!-- Simple Table관련 시작 -->
     <!-- Google Font: Source Sans Pro -->
     <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
     <!-- Font Awesome -->
     <link rel="stylesheet" href="/resources/admin/plugins/fontawesome-free/css/all.min.css">
     <!-- Theme style -->
     <link rel="stylesheet" href="/resources/admin//dist/css/adminlte.min.css">
  <!-- Simple Table관련 종료 -->


  
  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="/resources/admin/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="/resources/admin/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="/resources/admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="/resources/admin/plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/resources/admin/dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="/resources/admin/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="/resources/admin/plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="/resources/admin/plugins/summernote/summernote-bs4.min.css">
  
      <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
  

  
</head>

<style>
  .content-wrapper{
  	background-image: url("/resources/admin/images/ABkimg8.jpg");
  	background-size: cover;
  font-family: 'Gowun Dodum', sans-serif;
  }
  
  th{
  background-color: #806680;
  color: #F8F6FF;
  opacity: 0.8;
  }

  </style>


<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__shake" src="/resources/admin/dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
  </div>


  <!-- Main Sidebar Container -->
 <%@ include file="../inc/sidebar.jsp" %>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">고객센터</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
           
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
      <!-- 테이블 샘플 시작 -->                     
      <div class="row">
          <div class="col-12">
            <div class="card">
            
              <!-- /.card-header -->
  				<!-- /.card-header -->
	          	<%
				int curPos=pagingManager.getCurPos();
				int num=pagingManager.getNum();
				
				%>
              <div class="card-body table-responsive p-0">
                <table class="table table-hover text-nowrap">
                  <thead>
                    <tr>                                 
                                 
                      <th>제목</th>               
                      <th>작성자</th>                
                      <th>날짜</th>
                      <th>조회수</th>
                    </tr>
                  </thead>
                  <tbody>
                  <%for (int i = 1; i <=pagingManager.getPageSize() ; i++){ %>					
					<%if(num<1)break; %> 			
                    <%
                    	Reboard reboard=reboardList.get(curPos++); 
                    %>
                       <tr>                                              	      
                         <td>
                            <%if(reboard.getDepth()>0){ %>
               	            <img src="/resources/client/images/next.png" width="20px" style="margin-left: <%=10*reboard.getDepth()%>px">
                   	        <%} %>
                         	<a href="/admin/reboard/detail?reboard_id=<%=reboard.getReboard_id()%>"><%=reboard.getTitle() %></a>
                         </td>                     
                         <td><%=reboard.getTitle() %></td>
                         <td><%=reboard.getRegdate().substring(0,10) %></td>
                         <td><%=reboard.getHit() %></td>                        
                       </tr>
                       <%num--; %>
                     <%} %>
                     <tr>
	               		<td colspan="6" style="text-align:center">
	               		<%for(int i=pagingManager.getFirstPage();i<=pagingManager.getLastPage();i++){%>
						<%if(i>pagingManager.getTotalPage())break; //i가 총 페이지수를 넘어서면 반복문은 멈춘다 %>
						<a href="/admin/reboard/list.jsp?currentPage=<%=i%>" <%if(pagingManager.getCurrentPage()==i){%>class="pageNum"<%}%>><%=i%></a>
						<%}%>
	               		</td>	
               		</tr>
                  </tbody>
                </table>
              </div>
              
           
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
        </div>      
      
      </div>
        <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong>
    All rights reserved.
    <div class="float-right d-none d-sm-inline-block">
      <b>Version</b> 3.1.0
    </div>
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="/resources/admin/plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="/resources/admin/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="/resources/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="/resources/admin/plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="/resources/admin/plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="/resources/admin/plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="/resources/admin/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="/resources/admin/plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="/resources/admin/plugins/moment/moment.min.js"></script>
<script src="/resources/admin/plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="/resources/admin/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="/resources/admin/plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="/resources/admin/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="/resources/admin/dist/js/adminlte.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/resources/admin/dist/js/demo.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="/resources/admin/dist/js/pages/dashboard.js"></script>

<!-- simple 테이블 관련 링크  -->
<!-- jQuery -->
<script src="/resources/admin/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="/resources/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="/resources/admin/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/resources/admin/dist/js/demo.js"></script>


</body>
</html>