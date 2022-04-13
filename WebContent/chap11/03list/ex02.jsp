<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Insert title here</title>
</head>
<body>
	<%
	// 적절한 코드 작성
	
	List<String> list = new ArrayList<>();
	list.add("jimin");
	list.add("bts");
	
	List<Double> list1 = new ArrayList<>();
	list1.add(3.14);
	list1.add(9.999);
	list1.add(-0.1);
	
	pageContext.setAttribute("myList", list);
	pageContext.setAttribute("yourList", list1);
	%>
	
	<p>${myList[0] }</p> <%-- jimin --%>
	<p>${myList[1] }</p> <%-- bts --%>
	<p>${yourList[0] }</p> <%-- 3.14 --%>
	<p>${yourList[1] }</p> <%-- 9.999 --%>
	<p>${yourList[2] }</p> <%-- -0.1 --%>
	
</body>
</html>