<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page.jsp</title>

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>
	<style>
		h1,#tableDiv, th{
			text-align: center;
		}
		td{
			font-weight: bold;
		}
		.active {
	      color: black;
	   }
	   .text-center {
	      margin :30px auto;
	      white-space : nowrap;
	      text-overflow : ellipsis;
	   }
	</style>
</head>
<body>
	<h1>Dnltime Page ${page.paging.pageNo}</h1>
	<div id="tableDiv" class="table-responsive">
	<a href="/dnltime/registerAttend" class="btn btn-default">출근</a>
	
	<table class="table table-striped">
		<tr>
			<th>근태번호</th>
			<th>출근날짜</th>
			<th>출근시간</th>
			<th>퇴근시간</th>
			<th>근태사유</th>
			<th>근태사유수정</th>
			<th>퇴근</th>
		</tr>
		<c:forEach var="d" items="${page.dnltimeList}">
		<tr>
				<td><a href="/dnltime/item/${d.dnlno}">${d.dnlno}</a></td>
				<td><fmt:formatDate type="date" value="${d.attend}"/></td>
				<td><fmt:formatDate type="time" value="${d.attend}"/></td>
				<td><fmt:formatDate type="time" value="${d.leave}"/></td>
				<td>${d.reason}</td><td><a href="/dnltime/modifyReason/${d.dnlno}?pageNo=${page.paging.pageNo}">수정</a></td>
				<td><a href="/dnltime/modifyLeave/${d.dnlno}">퇴근</a></td>
		</tr>
		</c:forEach>
	</table>
</div>
<hr>
	
		<div class="text-center">
		<a href="/dnltime/page/1" class="btn btn-group-sm active">first</a>
		
		<c:choose>
		<c:when test="${paging.firstGroup == true}">
		   <a href="/dnltime/page/${paging.firstPage}" class="btn btn-sm btnColor">&laquo;</a>
		</c:when>
		<c:when test="${paging.firstGroup == false}">
		   <a href="/dnltime/page/${paging.firstPage - 1}" class="btn btn-sm btnColor">&laquo;</a>
		</c:when>
		</c:choose>
		<c:forEach var="i" begin="${paging.firstPage}" end="${paging.lastPage}">
		   <a href="/dnltime/page/${i}" class="btn btn-group-sm active">${i}</a>
		</c:forEach>
		
		<c:choose>
		<c:when test="${paging.lastGroup == true}">
		   <a href="/dnltime/page/${paging.lastPage}" class="btn btn-sm btnColor">&raquo;</a>
		</c:when>
		<c:when test="${paging.lastGroup == false}">
		   <a href="/dnltime/page/${paging.lastPage + 1}" class="btn btn-sm btnColor">&raquo;</a>
		</c:when>
		</c:choose>
		
		<a href="/dnltime/page/${paging.totalPage}" class="btn btn-group-sm active">last</a>
		</div>
</body>
</html>