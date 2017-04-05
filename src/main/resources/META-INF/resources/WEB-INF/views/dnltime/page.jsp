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
		.active, .btn-group-sm {
		color: black;
		}
		.activeColor {
		color: white;
		background-color: darkGray;
		}
		.btnColor {
		background-color: black;
		color: white;
		}
	</style>
</head>
<body>
	<h1>Dnltime Page ${page.paging.pageNo}</h1>
	<div id="tableDiv" class="table-responsive">
	<a href="/dnltime/registerAttend" class="btn btn-primary">출근</a>
	
	<table class="table table-striped table-bordered">
		<tr class="success">
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
				<td class="success"><a href="/dnltime/item/${d.dnlno}">${d.dnlno}</a></td>
				<td class="warning"><fmt:formatDate type="date" value="${d.attend}"/></td>
				<td class="warning"><fmt:formatDate type="time" value="${d.attend}"/></td>
				<td class="warning"><fmt:formatDate type="time" value="${d.leave}"/></td>
				<td class="warning">${d.reason}</td><td class="warning"><a href="/dnltime/modifyReason/${d.dnlno}" class="btn btn-info">수정</a></td>
				<td class="success"><a href="/dnltime/modifyLeave/${d.dnlno}" class="btn btn-info">퇴근</a></td>
		</tr>
		</c:forEach>
	</table>

<div class="text-center">
	<a href="/dnltime/page/1" class="btn btn-group-sm active">first</a>
	
	<c:choose>
	<c:when test="${page.paging.firstGroup == true}">
		<a href="/dnltime/page/${page.paging.firstPage}" class="btn btn-sm btnColor">&laquo;</a>
	</c:when>
	<c:when test="${page.paging.firstGroup == false}">
		<a href="/dnltime/page/${page.paging.firstPage - 1}" class="btn btn-sm btnColor">&laquo;</a>
	</c:when>
	</c:choose>
	
	<c:forEach var="i" begin="${page.paging.firstPage}" end="${page.paging.lastPage}">
		<c:if test="${page.paging.pageNo == i}">
			<a href="/dnltime/page/${i}" class="btn btn-group-sm active activeColor">${i}</a>
		</c:if>
		<c:if test="${page.paging.pageNo != i}">
			<a href="/dnltime/page/${i}" class="btn btn-group-sm">${i}</a>
		</c:if>
	</c:forEach>
	
	<c:choose>
	<c:when test="${page.paging.lastGroup == true}">
		<a href="/dnltime/page/${page.paging.lastPage}"class="btn btn-sm btnColor">&raquo;</a>
	</c:when>
	<c:when test="${page.paging.lastGroup == false}">
		<a href="/dnltime/page/${page.paging.lastPage + 1}"class="btn btn-sm btnColor">&raquo;</a>
	</c:when>
	</c:choose>
	
	<a href="/dnltime/page/${page.paging.totalPage}" class="btn btn-group-sm active">last</a>
</div>


	
<!-- 	<div> -->
<!-- 		<ul class="pagination"> -->
<!-- 				<li><a href="/dnltime/page/1">first</a></li> -->
<%-- 		<c:choose> --%>
<%-- 		   <c:when test="${page.paging.firstGroup}"> --%>
<!-- 		        <li><a href="/dnltime/page/1">prev</a></li> -->
<%-- 		    </c:when> --%>
<%-- 		     <c:otherwise> --%>
<%-- 		        <li><a href="/dnltime/page/${page.firstPage - 1}">prev</a></li> --%>
<%-- 		   	 </c:otherwise>    --%>
<%-- 		</c:choose>				 --%>
<%-- 			<c:forEach var="i" begin="${page.paging.firstPage}" end="${page.paging.lastPage}"> --%>
<%-- 				<li><a href="/dnltime/page/${i}">${i}</a></li> --%>
<%-- 			</c:forEach> --%>
<%-- 		<c:choose> --%>
<%-- 		   <c:when test="${page.paging.lastGroup}"> --%>
<%-- 		        <li><a href="/dnltime/page/${page.paging.lastPage}">next</a></li> --%>
<%-- 		    </c:when> --%>
<%-- 		     <c:otherwise> --%>
<%-- 		        <li><a href="/dnltime/page/${page.firstPage + 1}">next</a></li> --%>
<%-- 		   	 </c:otherwise>    --%>
<%-- 		</c:choose>	 --%>
<%-- 				<li><a href="/dnltime/page/${page.paging.lastPage}">last</a></li> --%>
<!-- 		</ul> -->
<!-- 	</div> -->
</div>
</body>
</html>