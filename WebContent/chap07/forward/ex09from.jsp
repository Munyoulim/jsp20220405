<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="chap07.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
Car c1 = new Car();
Car c2 = new Car();

c1.setName("kia");
c1.setPrice(500);

c2.setName("tesla");
c2.setPrice(1000);

request.setAttribute("myCar", c1);
request.setAttribute("yourCar", c2);
%>

<jsp:forward page="ex09to.jsp" />