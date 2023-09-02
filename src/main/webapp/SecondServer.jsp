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
int m1 =0;
int m2 =0;
%>

<script type="text/javascript">
function check()
{
	var total = document.forms['fname']['result'].value;

	if(total%2==0)
		{
		alert("The form is even");
		return false;
	
		}
	

}

</script>



<%


if(request.getParameter("txNo")!= null)
{
	m1 = Integer.parseInt(request.getParameter("txNo"));
	m2 = Integer.parseInt(request.getParameter("txName"));
}

//out.print("The addition is : " + (m1 + m2) ); 
%>

<form name ="f1" method = "post" action="SecondServer.jsp" onSubmit="return check()">
<%@ include file="second.html" %>
m1<input type="text" name="txNo" value ="<%=m1%>" /> <br>
m2<input type="text" name="txName" value ="<%=m2%>" /><br>
total<input type = "text" name="result" id = "res" value= "<%=(m1+m2)%> "/>
<input type="submit" value="Submit" />
</form>


</body>
</html>