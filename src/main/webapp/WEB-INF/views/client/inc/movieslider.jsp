<%@page import="com.koreait.movie.domain.CgvChart"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%
List<CgvChart> cgvList=(List)request.getAttribute("chart");

%>

<div class="slider sliderv2">
      <div class="container">
         <div class="row">
         
            <div class="slider-single-item">
            <%
                  	for(CgvChart movie : cgvList){
                  	%>
               <div class="movie-item">
               
                  <div class="row">
                     <div class="col-md-8 col-sm-12 col-xs-12">
                        <div class="title-in">
                           <h1>
                              <a href="#"><%=movie.getTitle() %></a>
                           </h1>
                           <div class="mv-details">
                              <ul class="mv-infor">
                                 <li><%=movie.getDate() %></li>
                              </ul>
                           </div>
                           <div class="btn-transform transform-vertical">
                              <div>
                                 <a href="/client/moviechart/info?title=<%=movie.getTitle()%>" class="item item-1 redbtn">more detail</a>
                              </div>
                              <div>
                                 <a href="/client/moviechart/info?title=<%=movie.getTitle()%>" class="item item-2 redbtn hvrbtn">more detail</a>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-4 col-sm-12 col-xs-12">
                        <div class="mv-img-2">
                           <a href="#"><img
                              src="<%=movie.getImg() %>" alt=""></a>
                        </div>
                     </div>
                  </div>
               </div>
               <%}%>