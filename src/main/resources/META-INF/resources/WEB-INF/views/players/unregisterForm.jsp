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
<div class="col-lg-10 col-lg-offset-1">
<h1>Member Delete</h1>
<table class="table table-hover">
	<tr class="active" align="center">
		<td><b>Idno</b></td>
		<td><b>Memberno</b></td>
		<td><b>Back Number</b></td>
		<td><b>Position</b></td>
		<td><b>Name</b></td>
		<td><b>Nationality</b></td>
		<td><b>Date of Join</b></td>
	</tr>
	<tr align="center">
		<td>${players.idno}</td>
		<td>${players.memberno}</td>
		<td>${players.backnumber}</td>
		<td>${players.position}</td>
		<td>${players.name}</td>
		<td>${players.nationality}</td>
		<td><fmt:formatDate value="${players.dateofjoin}" pattern="yyyy-MM-dd"/></td>
	</tr>
</table>
<form action="/players/unregister/${memberno}?pageNo=${param.pageNo}" method="post">
	<input type="submit" value="Member delete" class="btn-sm btn-danger">
</form>
</div>
</body>
</html>