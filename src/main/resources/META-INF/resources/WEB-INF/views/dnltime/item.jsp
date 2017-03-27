<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>item.jsp</title>

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
	<h1>Dnltime List</h1>
<div id="tableDiv" class="table-responsive">
	<table class="table table-bordered table-striped container">
			<tr class="success">
				<th>근태번호</th>
				<th>출근날짜</th>
				<th>출근시간</th>
				<th>퇴근시간</th>
				<th>근태사유</th>
				<th>로그인id</th>
			</tr>
			<tr>
				<td class="success">${dnltime.dnlno}</td>
				<td class="warning"><fmt:formatDate type="date" value="${dnltime.attend}"/></td>
				<td class="warning"><fmt:formatDate type="time" value="${dnltime.attend}"/></td>
				<td class="warning"><fmt:formatDate type="time" value="${dnltime.leave}"/></td>
				<td class="warning">${dnltime.reason}</td>
				<td class="warning">${dnltime.membersrl}</td>
			</tr>
	</table>
</div>

</body>
</html>