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
<%
String op = request.getParameter("op");
String x = request.getParameter("num1");
String y = request.getParameter("num2");

double num1 = Double.parseDouble(x);
double num2 = Double.parseDouble(y);

double result = 0;

String message = "";

if (op.equals("plus")) {
	result = num1 + num2;
	message = num1 + " + " + num2 + " = " + result;
} else if (op.equals("minus")) {
	result = num1 - num2;
	message = num1 + " - " + num2 + " = " + result;
} else if (op.equals("times")) {
	result = num1 * num2;
	message = num1 + " * " + num2 + " = " + result;
} else if (op.equals("divide")) {
	result = num1 / num2;
	message = num1 + " / " + num2 + " = " + result;
} 
%>
<h1><%= message %></h1>


</body>
</html>



