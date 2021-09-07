<%@page import="java.util.Date"%>
<%@page import="com.koreait.movie.domain.CgvChart"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@page import="java.util.List"%>

<%
   List<CgvChart> cgvList=(List)request.getAttribute("cgvchartList");


   
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

<!-- celebritygrid0111:24-->
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
   
   
   <link href="https://fonts.googleapis.com/css?family=Medula+One" rel="stylesheet">
   <link href="https://fonts.googleapis.com/css?family=Lato:400,700" rel="stylesheet">
   
   
   
   <link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
   <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
   <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
   

   <!-- CSS files -->
   <link rel="stylesheet" href="/resources/client/css/plugins.css">
   <link rel="stylesheet" href="/resources/client/css/style.css">

</head>
<style>
#test{
   width: 300px;
   height: 700px;
   text-align: center;
}
.form-control:focus::-webkit-input-placeholder {
   color: rgba(0, 0, 0, 0.3);
}

.form-control:focus:-ms-input-placeholder {
   color: rgba(0, 0, 0, 0.3);
}

.form-control:focus::placeholder {
   color: rgba(0, 0, 0, 0.3);
}
input[type="date"]:focus:invalid {
   color: rgba(0, 0, 0, 0.3);
}
input.form-control{
   background: #3333;
   padding: 20px 20px;
   width: 270px;
}


.top-search input::-webkit-input-placeholder {
  color: #abb7c4;
}
.top-search select {
  background: no-repeat right 20px center;
  color: #333;
  border-color: #333;
}

#hero{
   width: 100%;
   height: 100px;
   text-align: center;
}
#side{
   width: 300px;
}
.submit {
  -webkit-border-radius: 50px !important;
  -moz-border-radius: 50px !important;
  border-radius: 50px !important;
  background: #DD003F
}
img{
   opacity:0.3;
}

.movie{
   margin:auto;
   color: maroon;
   text-align: center;
   font-weight: bold;
}

h2{
   color: white;
}

.mvBt{
	width:293px;
	height: 45px;
	background-color: #020D18;
	border-color: #0F2133;
	color: #DDE5ED;
}

.user-information{
	height: 600px;
}

.form-label{
	color: #ABB7C4;
	font-weight: bold;
}

#area{
	color: #DDE5ED;
		border-color: #0F2133;
}

#date{	
		border-color: #0F2133;
}

#time{
	color: #DDE5ED;
	border-color: #0F2133;
}

select option {
  background: #020D18;
  text-shadow: 0 1px 0 rgba(0, 0, 0, 0.4);
}

.dateBt{
	background-color: DD003F;
	
}

</style>

<body>
<!--preloading-->
<div id="preloader">
    <img class="logo" src="/resources/client/images/logo1.png" alt="" width="119" height="58">
    <div id="status">
        <span></span>
        <span></span>
    </div>
</div>
<!--end of preloading-->
<!--login form popup-->

<!--end of signup form popup-->

<!-- BEGIN | Header -->
<%@include file="../inc/header.jsp" %>
<!-- END | Header -->

<div class="hero common-hero">
   <div class="container">
      <div class="row">
         <div class="col-md-12">
            <div class="hero-ct">
               <h1>영화 예매</h1>
               <br>
               <br>
               <div id="hero"></div>
            </div>
         </div>
      </div>
   </div>
</div>
<!-- celebrity grid v1 section-->
<div class="page-single">
   
      <div class="row ipad-width2">
         <div class="col-md-12 col-sm-10 col-xs-12">
      
                  
            <div class="celebrity-items" style="margin: 0px 100px ">
               <div class="user-information">
                  <div id="test" >
                     <div class="user-fav">
                        <h2>영화</h2>
                        <br>
                        <br>                
                        <%for(CgvChart cgvChart:cgvList){ %>                           
                           <input type="hidden" value="<%=cgvChart.getChart_id()%>">                                             
                              <div class="movie">
                                 <button type="button" id="button" class="mvBt" ><%=cgvChart.getTitle() %></button>                 
                              </div>
                                 <br>   
                        <%} %>
                     </div>                     
                  </div>   
               </div>
            
               <div class="user-information">
                  <div id="test"  >
                     <div class="user-fav">
                        <h2>극장</h2>
                        <br>
                        <br>
                        <span class="form-label">극장 브랜드를 선택해주세요</span><br>
                        <br>
                        <img src="/resources/images/cgv.png"  id="cgv"  alt="cgv" >
                        <img src="/resources/images/megabox.png"  id="megabox" alt="megabox"  >
                        <img src="/resources/images/lotte.png"   id="lotte" alt="lotte" >
                        <br>
                        <br>
                        <br>
                        <br>
                        <span class="form-label">지점을 선택해주세요</span><br>
                        <br>
                        <div class="top-search">                  
                         <select id="area">                                                    
                           <option >-----선택-----</option>
                           <option >강남</option>
                           <option >건대입구</option>
                           <option >동대문</option>
                           <option >명동</option>
                           <option >목동</option>
                           <option >수유</option>
                           <option>압구정</option>
                           <option >여의도</option>
                           <option >연남</option>
                           <option >영등포</option>
                           <option >용산아이파크몰</option>
                           <option >왕십리</option>
                           <option >하계</option>
                           <option >홍대</option>
                           <option >천호</option>                           
                        </select>                     
                         </div>
                     </div>   
                  </div>   
               </div>
               
               <div class="user-information">
                  <div id="test"  >
                     <div class="user-fav">
                        <h2>날짜</h2>
                        <div class="col-md-10">                        
                           <div class="form-group">
                              <br>
                              <br>
                              <span class="form-label">날짜를 선택해주세요</span>
                              <br>
                              <br>                        
                              <input class="form-control"  type="date" id="date" required>     
                              <br>                      
                              <input  class="dateBt" id="date_submit" type="submit" onclick="input()" value="확인"      required>                           
                           </div>
                        </div>
                     </div>   
                  </div>   
               </div>
               
               
               <div class="user-information">
                  <div id="test"  >
                     <div class="user-fav">
                        <h2>시간</h2>
                        <br>
                        <br>  
                        <span class="form-label">시간을 선택해주세요</span>                   
                        <br>
                        <br>
                        <div class="top-search">                  
                         <select id="time">             
                         	<option >-----선택-----</option>              
                           <option >09:00~11:00</option>
                           <option >11:00~13:30</option>
                           <option >13:00~14:20</option>
                           <option >15:20~17:00</option>
                           <option >19:30~21:00</option>
                           <option >22:00~23:50</option>
                           <option >00:00~01:50</option>
                           <option >01:00~02:50</option>
                        </select>                     
                         </div>
                     </div>   
                  </div>   
               </div>
   
   <!-- 사이드바 -->      
   <div id="side">         
         <div class="sidebar">
            <div class="searh-form">
               <h4 class="sb-title">선택한 영화</h4>
                  <form class="form-style-1 celebrity-form" action="#">
                     <div class="row">
                        <div class="col-md-12 form-it">
                           <input type="hidden" name="client_id" value="<%=client.getClient_id()%>">
                          
                           
                           <input type="text" id="choiceMovie" name="movie" placeholder="영화제목" >
                        </div>              
                        <div class="col-md-12 form-it">
                           <div class="row">
                              <div class="col-md-6">
                                    <input type="text" name="theater" placeholder="극장">
                              </div>
                              <div class="col-md-6">
                                    <input type="text" id="spot" name="area" placeholder="지점">
                              </div>                                 
                           </div>
                        </div>
                        
                        </div>
                        <div class="col-md-12 form-it">
                           <div class="row">
                     
                                    <input type="text" id="day" name="date" placeholder="날짜">
                     
                           </div>
                        </div>
                     
                     <div class="col-md-12 form-it">      
                        <div class="row">
                              <input type="text" id="times" name="time" placeholder="시간">
                        </div>      
                     </div>
                        
                        <div class="col-md-12 form-it ">
                           <input class="submit" name="submit" type="submit" value="좌석선택">
                        </div>
                     </div>
                  </form>
               </div>            
              </div>                     
      
      </div>
   </div>
</div>
   
</div>
<!--end of celebrity grid v1 section-->
<!-- footer section-->
<%@include file="../inc/footer.jsp" %>
<!-- end of footer section-->

<script src="/resources/client/js/jquery.js"></script>
<script src="/resources/client/js/plugins.js"></script>
<script src="/resources/client/js/plugins2.js"></script>
<script src="/resources/client/js/custom.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
 




$( document ).ready( function() {  
    $("button[type=button]").click(function(){
            var movie=$(this).text();
            $('#choiceMovie').attr('value',movie);
              
    });
    
});
   

$("#area").change(function(){
      var spot= $(this).children("option:selected").text();
      $('#spot').attr('value',spot);
});
$("#time").change(function(){
      var time= $(this).children("option:selected").text();
      $('#times').attr('value',time);
});

var flag=0;


   $("#cgv").click(function(){
      var cgv = $(this).attr("alt");
      $('input[name=theater]').attr('value',cgv);
        if(flag==1){
        	document.getElementById("cgv").style.opacity="1";
			flag=0;        	
        }else{
        	document.getElementById("cgv").style.opacity="0.3";
        	flag=1;
        }      
   });
   $("#megabox").click(function(){
      var cgv = $(this).attr("alt");
      $('input[name=theater]').attr('value',cgv);
      if(flag==1){
      	document.getElementById("megabox").style.opacity="1";
			flag=0;        	
      }else{
      	document.getElementById("megabox").style.opacity="0.3";
      	flag=1;
      }      
   });
   $("#lotte").click(function(){
      var cgv = $(this).attr("alt");
      $('input[name=theater]').attr('value',cgv);
      if(flag==1){
      	document.getElementById("lotte").style.opacity="1";
			flag=0;        	
      }else{
      	document.getElementById("lotte").style.opacity="0.3";
      	flag=1;
      }      
   });
   

function input(){
   var day=document.querySelector("#date").value;
   $('#day').attr('value',day);
}
var today = new Date();
var dd = today.getDate()+5;
var ddd = today.getDate();
var mm = today.getMonth()+1; //January is 0!
var yyyy = today.getFullYear();
 if(dd<10){
        dd='0'+dd
    } 
    if(mm<10){
        mm='0'+mm
    }
 if(ddd<10){
    ddd='0'+ddd
    }

maxday = yyyy+'-'+mm+'-'+dd;
minday = yyyy+'-'+mm+'-'+ddd;
document.getElementById("date").setAttribute("max", maxday);//오늘+5
document.getElementById("date").setAttribute("min", minday);
document.getElementById('date').value = new Date().toISOString().substring(0, 10);//오늘날짜

console.log(maxday);
console.log(minday);


$("input[name=submit]").click(function(){
   if(confirm("좌석을 선택하시겠어요?")){
      seat();
   
   }
});
   

function seat(){
   $("form").attr({
      action:"/client/reserv/insert",
      method:"post"
   });
   $("form").submit();
}    




</script>

</body>


<!-- celebritygrid0111:44-->
</html>