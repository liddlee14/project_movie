<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>


 <div class="user-fav">
             <p>Account Details</p>
             <ul>
             <form>                  
                <li class="active"><a href="/client/mypage/detail?client_id=<%=client.getClient_id() %>">회원정보수정</a></li>
                <li ><a href="/client/mypage/passform?client_id=<%=client.getClient_id() %>">비밀번호 변경</a></li>                     
                <li><a id="delete">회원탈퇴</a></li>
            	<li><a href="/client/reserv/list?client_id=<%=client.getClient_id()%>">예매내역</a></li>
             </form>
             </ul>
          </div>   
       </div>
    </div>
    <div class="col-md-9 col-sm-12 col-xs-12">
    
<script type="text/javascript">


$(function(){    
   $("#delete").click(function(){
      if(confirm("회원탈퇴를 하시겠습니까?")){
         del();
      }   
   });
}); 

function del(){
   $("form").attr({
      "action":"/client/mypage/delete",
      "method":"post"
   });   
   $("form").submit();
}    
</script>  

