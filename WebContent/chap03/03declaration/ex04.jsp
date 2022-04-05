<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>구구단 2단 ~ 9단</h1>

<%
for (int i = 2; i < 10; i++) {
	out.print("<hr>");
	for (int j = 1; j < 10; j++) {
%>

	<%= i %>
	<%= "X" %>
	<%= j %>
	<%= "=" %>
	<%= result(i, j) %>

<br />
<%
	}
}
%>

<%!
private int result(int i, int j) {
	return i * j;
}
%>

<%-- scriptlet, expression, declaration 등을 활용하여 완성 --%>
</body>
</html>

