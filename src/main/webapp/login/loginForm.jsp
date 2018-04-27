<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/css/loginform.css?version=1.4" />
<meta charset="UTF-8">
<title>Rentable</title>
<style>
</style>
</head>
<body>
   <div class="login">
      <h1>Rentable</h1>
      <form method="post" action="${pageContext.request.contextPath}/loginAction">
         <input type="text" id="R_id" name="R_id" placeholder="ID" required="required" />
         <input type="password" id="R_passowrd" name="R_password" placeholder="Pass" required="required" /> 
         <input type="checkbox" name="toggle" /> 
         <label for="toggle" style="color: white; font-size: 13px;">아이디 저장</label>
         <button type="submit" class="btn btn-primary btn-block btn-large">LogIn</button>
      </form>
      <p class="text-center">
         아직 회원이 아니세요?&nbsp 
      <a href="${pageContext.request.contextPath}/joinForm" style="text-decoration: none; color: white;">회원가입</a> 
      <span class="fontawesome-arrow-right"></span>
      </p>
   </div>
</body>
</html>