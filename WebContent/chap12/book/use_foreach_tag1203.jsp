<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>

<%
	HashMap<String, Object> mapData = new HashMap<String, Object>();
	mapData.put("name", "최범균");
	mapData.put("today", new java.util.Date());
%>
<c:set var="intArray" value="<%=new int[] {1, 2, 3, 4, 5} %>" > </c:set>
<c:set var="map" value="<%=mapData %>"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>
<title>forEach 태그</title>
</head>
<body>

	<h4>1부터 100까지 홀수의 합</h4>
	
	<c:set var="sum" value="0"></c:set>
	<c:forEach begin="1" end="100" var="i" step="2">
		<c:set var="sum" value="${sum + i }"></c:set>
	</c:forEach>
	결과 = ${sum }
	
	<hr />
	
	<h4>구구단 : 4단</h4>
	
	<ul>
		<c:forEach begin="1" end="9" var="i">
			<li>4 * ${i } = ${4 * i } </li>
		</c:forEach>
	</ul>
	
	<hr />
	
	<h4>int형 배열</h4>
	
	<c:forEach items="${intArray }" begin="2" end="4" var="i" varStatus="status">
		${status.index } - ${status.count } - [${i }] <br />
	</c:forEach>
	
	<hr />
	
	<h4>Map</h4>
	
	<c:forEach items="${map }" var="i">
		${i.key } = ${i.value } <br />
	</c:forEach>
	

</body>
</html>
























