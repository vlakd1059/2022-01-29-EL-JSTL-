<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String id = (String)request.getAttribute("id");
    	String pw = (String)request.getAttribute("pw");
    	String name = (String)request.getAttribute("name");
    	String email = (String)request.getAttribute("email");
    %>
<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8"> 
<title>Insert title here</title> 
</head>
<body> 
	<%
		request.setAttribute("id","smhrd");
		request.setAttribute("pw","1234");
		session.setAttribute("name","스인개");
		application.setAttribute("email","smhrd@smhrd.or.kr");
		
		/* ex3_el_result.jsp로 이동 */
		RequestDispatcher dispatcher = request.getRequestDispatcher("ex3_el_result.jsp");
		
		dispatcher.forward(request, response);
		
		
	%>
	<table border="1"><!-- 3*5구조 -->
	<tr>
		<td name ="id">아이디</td>	
		<td name="pw">패스워드</td>	
		<td name="name">이름</td>	
		<td name="email">이메일</td>	
	</tr>
		<tr> 
		<td><%=id %></td>	
		<td><%=pw %></td>	
		<td><%=name %></td>	
		<td><%=email %></td>	
	</tr>
		<tr><!-- EL문법으로 HTML에서 입력한 값을 출력 -->
		<!-- 
			값 접근형식 : param.input태그의 name속성값
			param객체 == request.getParameter()
			paramValues객체 == request.getparameterValues() 
		 -->
		<td>${id}</td>	
		<td>${pw }</td>	
		<td>${name }</td>	
		<td>${email }</td>	
	</tr>
	</table>
</body>
</html>
