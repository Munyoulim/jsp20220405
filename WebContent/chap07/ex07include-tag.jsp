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
<%-- include standard action tag (표준액션태그) --%>
<%-- page 속성에 포함될 페이지 경로 작성 --%>
<jsp:include page="module/header02.jsp"></jsp:include>
<div>
	<h1>Lorem.</h1>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta quae reiciendis non ducimus corrupti rerum esse cupiditate recusandae possimus. Ut ducimus quis at ipsum. Fugit voluptate modi corrupti inventore sit!</p>
</div>
</body>
</html>