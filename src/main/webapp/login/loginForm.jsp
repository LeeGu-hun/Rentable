<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/css/loginform.css?version=1.1" />
<meta charset="UTF-8">
<title>Rentable</title>
<style>
</style>
</head>
<body>
   <div class="login">
      <h1>Rentable</h1>
      <form method="post">
         <input type="text" name="id" placeholder="ID" required="required" />
         <input type="password" name="pass" placeholder="Pass" required="required" /> 
         <input type="checkbox" name="toggle" /> 
         <label for="toggle" style="color: white; font-size: 13px;">아이디 저장</label>
         <button type="submit" class="btn btn-primary btn-block btn-large">LogIn</button>
      </form>
      <p class="text-center">
         아직 회원이 아니세요?&nbsp 
      <a href="joinForm.jsp" style="text-decoration: none; color: white;">회원가입</a> 
      <span class="fontawesome-arrow-right"></span>
      </p>
   </div>
</body>
</html>