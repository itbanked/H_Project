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
	</style>
</head>
<body>
	<h1>Dnltime Page ${page.paging.pageNo}</h1>
	<div id="tableDiv" class="table-responsive">
	<table class="table table-striped table-bordered">
		<tr class="success">
			<th>근태번호</th>
			<th>출근날짜</th>
			<th>출근시간</th>
			<th>최근시간</th>
			<th>근태사유</th>
		</tr>
		<c:forEach var="d" items="${page.dnltimeList}">
		<tr>
			<td class="success"><a href="/dnltime/item/${d.dnlno}">${d.dnlno}</a></td>
				<td class="warning"><fmt:formatDate type="date" value="${d.attend}"/></td>
				<td class="warning"><fmt:formatDate type="time" value="${d.attend}"/></td>
				<td class="warning"><fmt:formatDate type="time" value="${d.leave}"/></td>
			<td class="warning">${d.reason}</td>
		</tr>
		</c:forEach>
	</table>

	
	<div>
		<ul class="pagination">
				<li><a href="/dnltime/page/1">first</a></li>
		<c:choose>
		   <c:when test="${page.paging.firstGroup}">
		        <li><a href="/dnltime/page/1">prev</a></li>
		    </c:when>
		     <c:otherwise>
		        <li><a href="/dnltime/page/${page.firstPage - 1}">prev</a></li>
		   	 </c:otherwise>   
		</c:choose>				
			<c:forEach var="i" begin="${page.paging.firstPage}" end="${page.paging.lastPage}">
				<li><a href="/dnltime/page/${i}">${i}</a></li>
			</c:forEach>
		<c:choose>
		   <c:when test="${page.paging.lastGroup}">
		        <li><a href="/dnltime/page/${page.paging.lastPage}">next</a></li>
		    </c:when>
		     <c:otherwise>
		        <li><a href="/dnltime/page/${page.firstPage + 1}">next</a></li>
		   	 </c:otherwise>   
		</c:choose>	
				<li><a href="/dnltime/page/${page.paging.lastPage}">last</a></li>
		</ul>
	</div>
</div>
</body>
</html>