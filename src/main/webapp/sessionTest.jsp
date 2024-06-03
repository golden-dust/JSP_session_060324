<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session info test</title>
</head>
<body>
	<%
		int sessionTime = session.getMaxInactiveInterval(); 
		// 세션 유효시간 가져오기 (int, 초 단위)
		out.println("세션의 유효시간: " + sessionTime + "<br>");
		session.setMaxInactiveInterval(600);
		// 아무 활동이 없을 시 세션을 종료하는 인터벌 설정
		sessionTime = session.getMaxInactiveInterval();
		out.println("세션의 유효시간: " + sessionTime + "<br>");
	%>
	<hr>
	<%
		long firstTime = session.getCreationTime();
		// 세션이 생성된 시점의 시간
		long lastTime = session.getLastAccessedTime();
		// 세션의 마지막 사용시간
		
		long keepTime = (lastTime - firstTime) / 60;
		// 사이트에서 세션이 유지되었던 시간
		
		out.println("세션 유지시간: " + keepTime + "<br>");
		
		String session_id = session.getId();
		// 세션 고유 아이디
		out.println("세션 고유아이디: " + session_id + "<br>");
	%>
	
	<a href="loginCheck.jsp">로그인 확인 페이지로 가기</a>
</body>
</html>