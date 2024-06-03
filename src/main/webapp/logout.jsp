<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout</title>
</head>
<body>
	<%
		session.invalidate(); // 세션의 내용 모두 삭제 -> 로그아웃
	%>
	<a href="loginCheck.jsp">로그인 확인 페이지로 가기</a><br>
	<a href="login.jsp">로그인 페이지로 가기</a>
</body>
</html>