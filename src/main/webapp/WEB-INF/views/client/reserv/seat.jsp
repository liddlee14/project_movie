

<%@ page contentType="text/html;charset=UTF-8"%>
<%
	
	String reserv_id=request.getParameter("reserv_id");
	String client_id=request.getParameter("client_id");
	String seat=request.getParameter("seat");
	
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<title>예매-좌석</title>
<link rel="stylesheet" href="/resources/css/base.css">
<link rel="stylesheet" href="/resources/css/app.css" type="text/css" />
</head>
<style>
button[type=button]{
	width: 100px;
	height: 70px;
	font-size: 20px;
	font-weight: bold;
}


</style>
<body>
	<div class="wrap">
		<div class="box">

			<div class="tittle">
				<div class="t_1">
					<span class="sp1"></span>
					<p>잔여석</p>
				</div>
				<div class="t_2">
					<span class="sp2"></span>
					<p>예약한 좌석</p>
				</div>
				<div class="t_3">
					<span class="sp3"></span>
					<p>예약된 좌석</p>
				</div>
			</div>
			<div class="screen">
				<h>SCREEN</h>
			</div>
			<div class="content">
				<div class="one" pai="1">
					<ul>
						<li typ="2" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
					</ul>
				</div>
				<div class="two" pai="2">
					<ul>
						<li typ="2" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
					</ul>
				</div>
				<div class="three" pai="3">
					<ul>
						<li typ="2" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
					</ul>
				</div>
				<div class="four" pai="4">
					<ul>
						<li typ="2" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
					</ul>
				</div>
				<div class="five" pai="5">
					<ul>
						<li typ="2" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
					</ul>
				</div>
				<div class="six" pai="6">
					<ul>
						<li typ="2" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
					</ul>
				</div>
				<div class="seven" pai="7">
					<ul>
						<li typ="2" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
					</ul>
				</div>
				<div class="eight" pai="8">
					<ul>
						<li typ="2" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="2" onclick="check(this)"></li>
					</ul>
				</div>
				<div class="nine" pai="9">
					<ul>
						<li typ="0" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
						<li typ="0" onclick="check(this)"></li>
					</ul>
				</div>
			</div>
			<div class="zw">
				<p>
					<span></span>
				</p>
				<form>	
					
					<input type="text" class="yxz" name="seat" value="<%=seat%>">
					<input type="hidden" name="clinet_id" value="<%=client_id%>">									
					<button type="button" class="submit" id="reservList" >예매하기</button>
				</form>				
				
				
			</div>
		</div>
	
	<div class="footer">
			<div class="f_right">
				<div class="t_left">
					금액：<span class="rmb"><span>0</span>원</span>
				</div>
				
				<!--  
				<div class="t_right">
					<span class="danjia"></span>*<span class="num">0</span>
				</div>
				-->
				
				<div class="re">				
				</div>
			</div>
			<div class="f_right">
				
			</div>
		</div>
	</div>

				
	<script type="text/javascript" src="/resources/js/jquery.min.js"></script>
	<script type="text/javascript" src="/resources/js/common.js"></script>
	<script type="text/javascript">
		window.onload = function() {
			if (document.readyState == "complete") {
				$("body").show();
			}
		};
		var arr = [];
		var dj = 12000;
		$(".danjia").text(dj);
		$(".content li").each(function(index) { //예약된 좌석
			var typ = $(".content li").eq(index).attr("typ");
			if (typ == "2") {
				$(".content li").eq(index).css("background", "#0099ff");
			}
		});
		
		function add(msg) {
			var html =msg;
			return html;
		}
		
		function check(dom) {
			var txt = $(dom).parent().parent().attr('pai') + "행"
					+ parseInt($(dom).index() + 1) + "열, ";
			var typ = $(dom).attr("typ");
			if (typ == "0") {
				if (arr.length > 4) {
					alert("1인 최대 5석만 가능합니다");
					return false;
				} else { //눌렀을때 예약된 좌석
					$(dom).css("background", "#fe3f55");
					$(dom).attr("typ", "1");
					arr.push(txt);
					$(".yxz").append(add(txt)); 
					$(".num").text(arr.length);
					$(".rmb span").text(dj * arr.length);
				}
			} else if (typ == "2") {
				alert("예약된 좌석입니다");
				return false;
			
			} else { //예약 가능 좌석
				$(dom).css("background", "#f5f5f5");
				$(dom).attr("typ", "0");
				var index = arr.indexOf(txt);
				arr.removeByValue(txt);
				$(".yxz").eq(index).remove(); //예약 한 좌석 데이터 들어가는 곳
				$(".num").text(arr.length);
				$(".rmb span").text(dj * arr.length);
			}
			
			$(function(){
				var seat=$(".yxz").text();
					$("input[name=seat]").attr("value",seat);
			});
				
	
				$("#reservList").click(function(){
				  
				      seat();
				   
				   
				});
				   

				function seat(){
				   $("form").attr({
				      action:"/client/reserv/update",
				      method:"post"
				   });
				   $("form").submit();
			}    
		 
		}
		
		Array.prototype.removeByValue = function(val) {
			for (var i = 0; i < this.length; i++) {
				if (this[i] == val) {
					this.splice(i, 1);
					break;
				}
			}
		}
		//var seat=$('.zw span').text();
	
	</script>
</body>
</html>

<a style="display: none" href="http://www.bootstrapmb.com">bootstrap</a>
