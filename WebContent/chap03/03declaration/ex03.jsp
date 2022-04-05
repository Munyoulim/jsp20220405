<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>구구단 3단</h1>
<%
   
   for (int j = 1; j < 10; j++) {
	  out.print("<br>");
      out.print(3 + "x" + j + "=" + result(j));
   }
%>

<%!
private int result(int j) {
   return 3 * j;
}
%>

</body>
</html>
