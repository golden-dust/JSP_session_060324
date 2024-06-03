<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login confirmation</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String mid = request.getParameter("memberId");
		String mpw = request.getParameter("memberPw");
		
		if (mid.equals("tiger") && mpw.equals("12345")) {
			// 참일 때 로그인 시켜야 함
			session.setAttribute("sessionId", mid);
			session.setAttribute("sessionPw", mpw);
			//실제로는 비번을 세션에 올리면 안됨
			session.setAttribute("ValidMem", "yes");
			//로그인 여부 확인용 값 올리기 - 실제로 흔히 쓰임
			
			// => 세션 램에 세 개의 값이 생성됨
			// 이 세션 값을 가지고 나중에 로그인 여부를 확인하거나 아이디 값을 가져다 씀
			
			out.print("로그인 성공");
		} else {
			out.print("로그인 실패");
		}
		
	%>
	<br>
	<a href="loginCheck.jsp">로그인 확인 페이지로 이동</a>
</body>
</html>