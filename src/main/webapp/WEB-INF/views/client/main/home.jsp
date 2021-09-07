
<%@ page contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>
<!--[if IE 7]>
<html class="ie ie7 no-js" lang="en-US">
<![endif]-->
<!--[if IE 8]>
<html class="ie ie8 no-js" lang="en-US">
<![endif]-->
<!--[if !(IE 7) | !(IE 8)  ]><!-->
<html lang="en" class="no-js">

<!-- homev206:52-->
<head>
<!-- Basic need -->
<title>KMW</title>
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

   <!--signup form popup-->
    <%@include file="../login/popup.jsp"%>
   <!--end of signup form popup-->

   <!-- BEGIN | Header -->
   <%@include file="../inc/header.jsp"%>
   <!-- END | Header -->
	<!-- movie slider -->
   <%@include file="../inc/movieslider.jsp" %>
               <!--  
               <div class="movie-item">
                  <div class="row">
                     <div class="col-md-8 col-sm-12 col-xs-12">
                        <div class="title-in">
                           <h1>
                              <a href="#">영화제목2</a>
                           </h1>
                           <div class="mv-details">
                              <ul class="mv-infor">
                                 <li>Release: 1 May 2015</li>
                              </ul>
                           </div>
                           <div class="btn-transform transform-vertical">
                              <div>
                                 <a href="#" class="item item-1 redbtn">more detail</a>
                              </div>
                              <div>
                                 <a href="#" class="item item-2 redbtn hvrbtn">more detail</a>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-4 col-sm-12 col-xs-12">
                        <div class="mv-img-2">
                           <a href="#"><img
                              src="/resources/client/images/uploads/poster1.jpg" alt=""></a>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="movie-item">
                  <div class="row">
                     <div class="col-md-8 col-sm-12 col-xs-12">
                        <div class="title-in">

                           <h1>
                              <a href="#">영화제목3</a>
                           </h1>
                           <div class="mv-details">
                              <ul class="mv-infor">
                                 <li>Release: 1 May 2015</li>
                              </ul>
                           </div>
                           <div class="btn-transform transform-vertical">
                              <div>
                                 <a href="#" class="item item-1 redbtn">more detail</a>
                              </div>
                              <div>
                                 <a href="#" class="item item-2 redbtn hvrbtn">more detail</a>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-4 col-sm-12 col-xs-12">
                        <div class="mv-img-2">
                           <a href="#"><img
                              src="/resources/client/images/uploads/poster1.jpg" alt=""></a>
                        </div>
                     </div>
                  </div>
               </div>
               -->
            </div>
         </div>
      </div>
   </div>

   <!--end of latest new v2 section-->
   <!-- footer v2 section-->
   <%@include file="../inc/footer.jsp"%>
   <!-- end of footer v2 section-->

   <script src="/resources/client/js/jquery.js"></script>
   <script src="/resources/client/js/plugins.js"></script>
   <script src="/resources/client/js/plugins2.js"></script>
   <script src="/resources/client/js/custom.js"></script>
</body>

<!-- homev207:28-->
</html>