<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>createTable.html</title>
</head>
<body style="color: white; background-color: black;" alink="#000099"
link="#000099" vlink="#990099">
Hello <% out.print(request.getParameter("name"));%>. Here is your table<br>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<%int rows = Integer.parseInt(request.getParameter("rows")); %>
<%int columns = Integer.parseInt(request.getParameter("columns"));
if (rows <=0){
		response.sendRedirect("classexercise.jsp?Error=1&Name="+request.getParameter("name"));
	}
	if (columns <= 0){
		response.sendRedirect("classexercise.jsp?Error=2&Name="+request.getParameter("name"));
	}%>
<%for(int i=1; i<=rows; i++){ %>
<tr>
<%for(int j=1; j<=columns; j++) {
	
	%>
<td style="vertical-align: top; background-color: rgb(1, 2, 1);">  <% out.print(i + ", " + j); %><br>
</td>
<% } %>
</tr>
<% } %>
</tbody>
</table>
<br>
</body>
</html>