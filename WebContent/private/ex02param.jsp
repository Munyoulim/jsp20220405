<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<p>request.getParameter() 메소드 사용</p>
<%
	String name = request.getParameter("name");
	String[] hobby = request.getParameterValues("hobby");
%>

<p><%= name %></p>
<p><%= Arrays.toString(hobby) %></p>

<hr />

<%= request.getParameter("name") %> <br />
<%= request.getParameter("address") %> <br />
<%= request.getParameter("gender") %> <br />




