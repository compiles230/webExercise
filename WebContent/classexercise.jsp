<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>classexercise.html</title>
</head>
<body>
<% String anyErrors = request.getParameter("Error");
    if(anyErrors!=null && anyErrors.equals("1")){
    	out.println("Hello: " + request.getParameter("Name") +",  PLEASE PROVIDE A ROW VALUE >= 1 <br>");
    }
    if(anyErrors!=null && anyErrors.equals("2")){
    	out.println("Hello: " + request.getParameter("Name") +", PLEASE PROVIDE A COL VALUE >= 1 <br>");
    }
    %>
<form action="createTable.jsp">
<table style="text-align: left; width: 661px; height: 175px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">Enter your name<br>
</td>
<td style="vertical-align: top;"><input name="name" value="" ><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Enter number of rows<br>
</td>
<td style="vertical-align: top;"><input name="rows" value="1"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Enter number of columns<br>
</td>
<td style="vertical-align: top;"><input name="columns" value="1"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;"><input type="submit"> </td>
<td style="vertical-align: top;"><input type="reset"><br>
</td>
</tr>
</tbody>
</table>
<br>
</form>
</body>
</html>
