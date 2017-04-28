<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../../main/header.jsp" %>
<!DOCTYPE html5>
<html>
<head>
<title>Insert title here</title>

<!-- 다시 로그인 하시오  -->
<script>
$('.message a').click(function(){
	   $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
	});

</script>



<!--  delete side bar -->
<style type="text/css">

#navigation {
font-size:0.75em; 
width:150px;
padding: 5px;
}
#navigation ul {margin:0px; padding:0px;}
#navigation li {list-style: none;} 

ul.top-level {background:#fff;}
ul.top-level li {
margin: 0 0 3px 0;
border: solid 1px #cccccc;
-webkit-border-radius: 5px;
-moz-border-radius: 5px;
border-radius: 5px;
}

#navigation a {
color: #666;
cursor: pointer;
display:block;
height:25px;
line-height: 25px;
text-indent: 10px;
text-decoration:none;
width:100%;
}
#navigation a:hover{
text-decoration:none;
}



#navigation li:hover {
background: #fed36b;
position: relative;
}

ul.sub-level {
display: none;

}
li:hover .sub-level {
background: #fff;
border: #fff solid;
border-width: 1px;
display: block;
position: absolute;
left: 150px;
top: 5px;
}
ul.sub-level li {
border: none;
float:left;
width:150px;

}



/************ Second Level ****************/
#navigation .sub-level {
background: #fff;
border: solid 1px #cccccc;
-webkit-border-radius: 5px;
-moz-border-radius: 5px;
border-radius: 5px;
}

/************ Third Level ****************/
#navigation .sub-level .sub-level {
background: #fff;
margin: 0 1px 0 0;
}

/* Display one level after another */
li:hover .sub-level .sub-level {
display:none;
}
.sub-level li:hover .sub-level {
display:block;

}

/*다시 로그인하시오.*/

@import url(https://fonts.googleapis.com/css?family=Roboto:300);

.login-page {
  width: 360px;
  padding: 8% 0 0;
  margin: auto;
}
.form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
.form input {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
.form button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #4CAF50;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
.form button:hover,.form button:active,.form button:focus {
  background: #43A047;
}
.form .message {
  margin: 15px 0 0;
  color: #b3b3b3;
  font-size: 12px;
}
.form .message a {
  color: #4CAF50;
  text-decoration: none;
}
.form .register-form {
  display: none;
}
.container {
  position: relative;
  z-index: 1;
  max-width: 300px;
  margin: 0 auto;
}
.container:before, .container:after {
  content: "";
  display: block;
  clear: both;
}
.container .info {
  margin: 50px auto;
  text-align: center;
}
.container .info h1 {
  margin: 0 0 15px;
  padding: 0;
  font-size: 36px;
  font-weight: 300;
  color: #1a1a1a;
}
.container .info span {
  color: #4d4d4d;
  font-size: 12px;
}
.container .info span a {
  color: #000000;
  text-decoration: none;
}
.container .info span .fa {
  color: #EF3B3A;
}
</style>

</head>
<body>

<!--  delete side bar -->

<div id="navigation">
   <ul class="top-level">
   
		<li>
         <a href="#">회원 정보</a>
         <ul class="sub-level">
            <li><a href="ModifyForm.do">회원 정보 수정</a></li>
            <li><a href="DeleteForm.do">회원 탈퇴</a></li>
         </ul>
      </li>
   
   
      <li><a href="BookingInfo.do">예약 내역</a></li>
      <li><a href="MatchingInfo.do">매칭 내역</a></li>
     
   </ul>
</div>

<!--다시 로그인하시오. -->

<div class="login-page">
  <div class="form">
    <form class="login-form" action="MemberDeleteAction.do" method="get">
    <p class="message">회원 탈퇴 위해 다시 로그인하십시오.</p>
    <br>
    	<input type="password" name="u_password" placeholder="비밀번호">
         <button type ="submit">탈퇴하기</button>
    </form>
  </div>
</div>



</body>
</html>