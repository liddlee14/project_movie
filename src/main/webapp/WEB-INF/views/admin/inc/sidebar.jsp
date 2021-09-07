
<%@page import="com.koreait.movie.domain.Admin"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%
   Admin admin=(Admin)session.getAttribute("admin");
%>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">

<style>
.sidebar{
	font-family: 'Gowun Dodum', sans-serif;
	font-size: 17px;
}

.nav-link.active{
background-color: #806680;
	border-color: #C2AAD2;
}
</style>

  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="/admin/home" class="brand-link">
      <img src="/resources/admin/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">AdminLTE 3</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="/resources/admin/images/profileAdmin.png" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
       <p style="color:white;"><%=admin.getName() %></p>
        </div>
      </div>

     

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item menu-open">
          <li class="nav-item menu-open">
            <a href="#" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                계정관리
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
          
              <li class="nav-item">
                <a href="/admin/member/list" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>관리자목록</p>
                </a>
              </li>
              
              <li class="nav-item">
                <a href="/admin/clientmember/list" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>회원목록</p>
                </a>
              </li>
            </ul>
          </li>
          
        
        
          <li class="nav-item menu-open">
          <li class="nav-item menu-open">
            <a href="#" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                게시판관리
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
         
              <li class="nav-item">
                <a href="/admin/board/list"  class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>리뷰관리</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/admin/reboard/list" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>고객센터</p>
                </a>
              </li>
              </ul>
            </li>
            </li>
           
      
          <li class="nav-item">
            <a href="/admin/reserv/list" class="nav-link ">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                예약내역 
            
              </p>
            </a>
           </li>
      </li>
   </ul>
   </nav>
   </div>
</aside>