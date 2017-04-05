<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
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
<c:set var="paging" value="${page.paging}"/>

<div>
<h1>Manchester United Members</h1>
	<div class="registerBox">
		<a href="/players/register/${players.memberno}?pageNo=${paging.pageNo}" class="btn btn-info btn-sm">
		<span class="glyphicon glyphicon-inbox"> Member Register</span></a>
	</div>
	<div class="margin">
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
			<td></td>
		</tr>
		<c:forEach var="players" items="${page.players}">
		<tr align="center">
			<td>${players.idno}</td>
			<td>${players.memberno}</td>
			<td>${players.backnumber}</td>
			<td>${players.position}</td>
			<td>${players.name}</td>
			<td>${players.nationality}</td>
			<td><fmt:formatDate value="${players.dateofjoin}" pattern="yyyy-MM-dd"/></td>
			<td>
				<a href="/players/modify/${players.memberno}?pageNo=${paging.pageNo}">
				<span class="glyphicon glyphicon-edit"></span></a>
			</td>
			<td>
				<a href="/players/unregister/${players.memberno}?pageNo=${	paging.pageNo}">
				<span class="glyphicon glyphicon-remove"></span></a>
			</td>
		</tr>
		</c:forEach>
	</table>
	</div>
	<div class="text-center">
	<a href="/players/page/1" class="btn btn-group-sm active">first</a>
	
	<c:choose>
	<c:when test="${paging.firstGroup == true}">
		<a href="/players/page/${paging.firstPage}" class="btn btn-sm btnColor">&laquo;</a>
	</c:when>
	<c:when test="${paging.firstGroup == false}">
		<a href="/players/page/${paging.firstPage - 1}" class="btn btn-sm btnColor">&laquo;</a>
	</c:when>
	</c:choose>
	<c:forEach var="i" begin="${paging.firstPage}" end="${paging.lastPage}">
		<a href="/players/page/${i}" class="btn btn-group-sm active">${i}</a>
	</c:forEach>
	
	<c:choose>
	<c:when test="${paging.lastGroup == true}">
		<a href="/players/page/${paging.lastPage}"class="btn btn-sm btnColor">&raquo;</a>
	</c:when>
	<c:when test="${paging.lastGroup == false}">
		<a href="/players/page/${paging.lastPage + 1}"class="btn btn-sm btnColor">&raquo;</a>
	</c:when>
	</c:choose>
	
	<a href="/players/page/${paging.totalPage}" class="btn btn-group-sm active">last</a>
</div>
<%-- 	<center> --%>
<!-- 		<div> -->
<!-- 		<a href="/players/page/1">First</a> -->
<%-- 		<a href="/players/page/${page.paging.firstPage - 1}">Prev</a> --%>
<%-- 		<c:forEach var="i" begin="${page.paging.firstPage}" end="${page.paging.lastPage}"> --%>
<%-- 			<a href="/players/page/${i}">${i}</a> --%>
<%-- 		</c:forEach> --%>
<%-- 		<a href="/players/page/${page.paging.lastPage + 1}">Next</a> --%>
<%-- 		<a href="/players/page/${page.paging.totalPage}">Last</a> --%>
<!-- 		</div> -->
<%-- 	</center> --%>
</div>
</body>
</html>