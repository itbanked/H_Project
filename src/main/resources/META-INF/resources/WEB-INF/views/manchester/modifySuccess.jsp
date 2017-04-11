<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>template.jsp</title>

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

</head>
<body>
<div>
<h1>Team 수정성공입니다.</h1>
<table class="table table-striped">
<tr class="active" align="center">
	<td><b>Idno</b></td>
	<td><b>Team</b></td>
</tr>
<tr align="center">
	<td>${manchester.idno}</td>
	<td>${manchester.team}</td>
</tr>
</table>
<a href="/manchester/list/">이전 Page로....</a>
</div>
</body>
</html>