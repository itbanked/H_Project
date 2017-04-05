<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>page.jsp</title>
<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

<style type="text/css">

	.btnColor {
		background-color: black;
		color: white;
	}
	.active {
		color: black;
	}
	.registerBox {
			text-align: right;
		}
	.margin {
		margin :30px auto;
		white-space : nowrap;
		text-overflow : ellipsis;
	}
</style>

</head>
<body>
<div>
<h1>Manchester United Members</h1>
	<table class="table table-hover">
		<tr align="center">
			<td><b>Idno</b></td>
			<td><b>Memberno</b></td>
			<td><b>Back Number</b></td>
			<td><b>Position</b></td>
			<td><b>Name</b></td>
			<td><b>Nationality</b></td>
			<td><b>Date of Join</b></td>
			<td></td>
		</tr>
		<c:forEach var="players" items="${list}">
			<tr align="center">
				<td>${players.idno}</td>
				<td>${players.memberno}</td>
				<td>${players.backnumber}</td>
				<td>${players.position}</td>
				<td>${players.name}</td>
				<td>${players.nationality}</td>
				<td><fmt:formatDate value="${players.dateofjoin}" pattern="yyyy-MM-dd"/></td>
				<td>
				</td>	
			</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>