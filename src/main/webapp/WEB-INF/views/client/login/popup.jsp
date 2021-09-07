<%@ page contentType="text/html;charset=UTF-8"%>

<div class="login-wrapper" id="login-content">
    <div class="login-content">
        <a href="#" class="close">x</a>
        <h3>Login</h3>
        <form method="post" action="/client/login">
        	<div class="row">
        		 <label for="username">
                    ID:
                    <input type="text" name="user_id"  placeholder="ID입력" />
                </label>
        	</div>
           
            <div class="row">
            	<label for="password">
                    Password:
                    <input type="password" name="password" i placeholder="******"/>
                </label>
            </div>
        
           <div class="row">
           	 <button type="submit">Login</button>
           </div>
        </form>
        <div class="row">
        	<p>Or via social</p>
            <div class="social-btn-2">
            	<a class="fb" href="#"><i class="ion-social-facebook"></i>Facebook</a>
            	<a class="tw" href="#"><i class="ion-social-twitter"></i>twitter</a>
            </div>
        </div>
    </div>
</div>


<!-- signup -->
<div class="login-wrapper"  id="signup-content">
    <div class="login-content">
        <a href="#" class="close">x</a>
        <h3>sign up</h3>
        <form method="post" action="#">
            
            <div class="row">
                 <label for="username-2">
                    아이디:
                    <input type="text" name="user_id" placeholder="id를 입력해주세요" />
                </label>
            </div>
            
            <div class="row">
                 <label for="username-2">
                    이름:
                    <input type="text" name="name" placeholder="id를 입력해주세요" />
                </label>
            </div>
           
            
             <div class="row">
                <label for="password-2">
                    비밀번호:
                    <input type="password" name="password"  placeholder=""  />
                </label>
            </div>
            
             <div class="row">
                <label for="repassword-2">
                    비밀번호 확인:
                    <input type="password"  placeholder=""/>
                </label>
            </div>
            
            <div class="row">
                <label for="email-2">
                    생년월일:
                    <input type="text" name="birth" placeholder="ex)940916"  />
                </label>
            </div>

            <div class="row">
                <label for="email-2">
                    email:
                    <input type="text" name="email"  placeholder="Email"  />
                </label>
            </div>
            
            <div class="row">
                <label for="email-2">
                    전화번호:
                    <input type="text" name="phone" placeholder="-없이 입력해주세요"  />
                </label>
            </div>
           
           <div class="row">
             <button type="button" name="regist">sign up</button>
           </div>
        
        </form>
    </div>
</div>