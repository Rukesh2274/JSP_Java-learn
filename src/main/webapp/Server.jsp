<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! int m=10; %>
<%
if(m%2 == 0)
{
	%>
	<b>Number <%=m %> is even</b>
	<%
	}
	else {
	%>
	<i>Number is odd</i>
	<%
}
%>
</body>
</html>