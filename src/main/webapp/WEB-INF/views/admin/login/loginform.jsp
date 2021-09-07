<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<!-- Add icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
   font-family: Arial, Helvetica, sans-serif;
   background-image: url("/resources/admin/images/bkimg.jpg");
     background-size: cover;
   
}
* {box-sizing: border-box;}
.input-container {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  width: 100%;
  margin-bottom: 15px;
}
.icon {
  padding: 10px;
  background: dodgerblue;
  color: white;
  min-width: 50px;
  text-align: center;
}
.input-field {
  width: 100%;
  padding: 10px;
  outline: none;
}
.input-field:focus {
  border: 2px solid dodgerblue;
}
/* Set a style for the submit button */
.wrapper{
   text-align: center;
}
.btn {
  background-color: dodgerblue;
  color: white;
  padding: 15px 20px;
  border: none;
  cursor: pointer;
  width: 150px;
  opacity: 0.9;
}
.btn:hover {
  opacity: 1;
}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(function(){
   $("button[name='login']").click(function(){   
      loginCheck();      
   });
});
function loginCheck(){   
   $("form").attr({
      "action":"/admin/home",
      "method":"POST"
      
   });
   $("form").submit();
}
$(function(){
   $("button[name='signup']").click(function(){   
      location.href="login/signup";      
   });
});



</script>
</head>
<body>

<form  style="max-width:500px;margin:auto">
  <h2 style="color: white;">관리자 로그인</h2>
  <div class="input-container">
    <i class="fa fa-user icon"></i>
    <input class="input-field" type="text" placeholder="ID" name="host_id">
  </div>
<!-- 
  <div class="input-container">
    <i class="fa fa-envelope icon"></i>
    <input class="input-field" type="text" placeholder="Email" name="email">
  </div>
   -->
  <div class="input-container">
    <i class="fa fa-key icon"></i>
    <input class="input-field" type="password" placeholder="Password" name="password">
    
  </div>

<div class="wrapper">
  <button type="button" class="btn" name="login">Login</button>
  <button type="button" class="btn" name="signup">Signup</button>
</div>
</form>

</body>
</html>