<%@ page contentType="text/html;charset=UTF-8"%>
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
</head>
<style>
body{
  background-image: url("/resources/admin/images/bkimg.jpg");
  background-size: cover;
  color: white;
  
}
#wrapper{
  width: 500px;
  margin: auto;
  
 
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
   $("button[name='regist']").click(function(){   
      signCheck();      
   });
});
function signCheck(){   
   $("form").attr({
      "action":"/admin/regist",
      "method":"POST"
   });
   $("form").submit();
}



</script>
<body>
<div id="wrapper">
   <div>
              <div class="card-header">
                <h3 class="card-title">관리자가입</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form class="form-horizontal">
                <div class="card-body">
                 
                 <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">아이디</label>
                    <div class="col-sm-10">
                      <input  class="form-control" name="host_id" placeholder="아이디">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">이름</label>
                    <div class="col-sm-10">
                      <input class="form-control" name="name">
                    </div>
                  </div>

                  <div class="form-group row">
                    <label for="inputPassword3" class="col-sm-2 col-form-label">비밀번호</label>
                    <div class="col-sm-10">
                      <input  class="form-control" name="password" placeholder="비밀번호">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="inputPassword3" class="col-sm-2 col-form-label">비밀번호 확인</label>
                    <div class="col-sm-10">
                      <input class="form-control"  placeholder="비밀번호 확인">
                    </div>
                  </div>
                  
                  
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">생년월일</label>
                    <div class="col-sm-10">
                      <input  class="form-control" name="birth" placeholder="ex)940916">
                    </div>
                  </div>

                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
                    <div class="col-sm-10">
                      <input class="form-control" name="email" placeholder="Email">
                    </div>
                  </div>
                  
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">전화번호</label>
                    <div class="col-sm-10">
                      <input  class="form-control" name="phone" placeholder="- 없이 적어주세요">
                    </div>
                  </div>
                  
                  
                <!-- /.card-body -->
                <div class="card-footer">
                  <button type="button" class="btn btn-info" name="regist">Regist</button>
                  
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
<script type="text/javascript">

</script>

</body>
</html>