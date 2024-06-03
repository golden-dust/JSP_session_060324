<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// String isValid = session.getAttribute("ValidMem").toString(); 오류!
		String validMem = (String) session.getAttribute("ValidMem");  // 다운캐스팅
		// 로그인에 성공한 상태면 isValid의 값은 yes, 비로그인 상태면 null 값임
		String u_id = (String) session.getAttribute("sessionId");
		
		if (validMem != null) {
			out.println(u_id + "님 로그인 중<br>");
			
			Enumeration en = session.getAttributeNames(); // 세션 안의 속성들의 이름들을 가져옴
			
			String name = "";
			String value = "";
			
			int count = 0;
			while (en.hasMoreElements()) {
				count++;
				name = en.nextElement().toString();
				value = session.getAttribute(name).toString();
				
				out.println(count + ". 세션의 속성 이름: [ " + name + " ] <br>");
				out.println(count + ". 세션의 속성값: [ " + value + " ] <br>");
			}
	%>
			<hr>
			<a href="sessionTest.jsp">세션테스트 페이지로 가기</a>
			<hr>
			<a href="logout.jsp">로그아웃</a>
	<%
		} else {
			out.println("로그인되지 않은 상태. 로그인 페이지로 이동하세요.");
	%>			
			<hr>
			<a href="login.jsp">로그인 페이지로 이동</a>
	<%
		}
	 %>
	
	

</body>
</html>