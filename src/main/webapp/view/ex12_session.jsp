<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 내장 객체 : session</title>
</head>
<body>
<%--
	세션 : 서버와 클라이언트 간의 접속을 유지 시켜주기 위한 객체
		 (http는 요청을 하고 응답을 하면 접속이 끊어진다)
		 
	클라이언트 측에서 서비스를 요청하면, 서버측에서 클라이언트에게 클라이언트를 구별할 수 있는 세션 ID를 부여하고,
	서버측에서 해당 ID로 이전 접속 여부 구별한다.
	
	쿠키는 클라이언트에서 저장하는 저장공간이 존재(클라이언트에도 있고, 서버에도 있다.)
	세션은 서버에서 저장하는 저장공간 (서버에서만 생성된다.)

	--주요 메소드
	* 데이터 저장 : session.setAttribute("이름", 데이터);
	* 데이터 호출 : session.getAttribute("이름");
	* 데이터 삭제 : session.removeAttribute("이름");
	
	* getID() : 세션 고유 아이디 반환
	* getCreationTime() : 세션이 생성된 시간을 반환.
	* getLastAccessTime() : 마지막에 접근한 시간을 반환
	* invalidate() : 세션 전체를 초기화
	* setMaxInativeInterval(시간) : 세션 시간 제한
	* 세션의 생명주기 : 시간 지정하지 않았으면(default) 브라우저가 종료되면 세션 데이터도 사라진다.
					시간을 지정 했다면 해당 시간이 지나면 사라진다.
	
 --%>
	<h1> 세션 연습 </h1>
	<% Date time = new Date(); %> 
 	<h2>
 		<p>세션 ID : <%=session.getId() %></p>
 		<p>현재 시간 : <%=time %>></p>
 		<hr>
 		
 		<% time.setTime(session.getCreationTime()); %>
 		<p>생성된 시간 : <%=time %>></p>
 		<hr>
 		
 		<%time.setTime(session.getLastAccessedTime()); %>
       <p>최근 접근 시간 : <%= time %></p>
         
    </h2>
 
 
 

</body>
</html>