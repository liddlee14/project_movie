<%@page import="com.koreait.movie.domain.Board"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%
Board boardDetail=(Board)request.getAttribute("board");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
#wrapper{
  width: 550px;
  margin: auto;
font-family: 'Gowun Dodum', sans-serif;
font-size: 20px;
 
}

.card-title{
font-size: 30px;
}


.btn-info{
background-color: #806680;
	border-color: #C2AAD2;
}


</style>


<body>
<!-- 사이드바 -->
<%@include file="../../inc/admImg.jsp" %>
<%@include file="../inc/sidebar.jsp" %>

<div id="wrapper">
   <div>
              <div class="card-header">
                <h3 class="card-title">리뷰 상세보기</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form class="form-horizontal">
                <div class="card-body">            
              
                 <div class="form-group row">
                 <input type="hidden" name="board_id" value="<%=boardDetail.getBoard_id()%>">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">제목</label>
                    <div class="col-sm-10">
                      <input  class="form-control" name="title" value="<%=boardDetail.getTitle() %>">
                    </div>
                  </div>
                    
                   
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">작성자</label>
                    <div class="col-sm-10">
                    <input  class="form-control" name="writer" value="<%=boardDetail.getWriter() %>"></label>
                    </div>
                  </div>
                   
                  
                    
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">글내용</label>
                    <div class="col-sm-10">
                      <textarea class="form-control" name="content" ><%=boardDetail.getContent() %></textarea>
                    </div>
                  </div>

                  
                                
                  </div>
                  
                <!-- /.card-body -->
                <div class="card-footer">
                  <button type="button" class="btn btn-info" id="bt_list">목록</button>
                  <button type="button" class="btn btn-info" id="bt_delete">삭제</button>
                  
                </div>
                <!-- /.card-footer -->
              </form>
  </div>
</div>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 

<script type="text/javascript">
$(function(){ 
   $("#bt_delete").click(function(){
      if(confirm("삭제하시겠어요?")){
         del();
      }   
   });
   $("#bt_list").click(function(){
      location.href="/admin/board/list";
   });
});
function del(){
   $("form").attr({
      action:"/admin/board/delete",
      method:"post"
   });   
   $("form").submit();
}
</script>

</body>
</html>