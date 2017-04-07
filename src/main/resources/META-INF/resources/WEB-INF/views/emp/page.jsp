<%@page import="java.sql.Date"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.text.DecimalFormat"%>
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
	
	<!-- code_assist -->
	<c:if test="false">
		<link rel="stylesheet" href="../code_assist/animate.css">
		<link rel="stylesheet" href="../code_assist/bootstrap.css">
	</c:if>

	<style>
		.opt {
			width: 80px;
		}
	</style>
<style>
	.text-center {
		margin :30px auto;
		white-space : nowrap;
		text-overflow : ellipsis;
	}
	.active, .btn-group-sm {
		color: black;
	}
	.activeColor {
		color: white;
		background-color: darkGray;
	}
	tr, td {
		text-transform: capitalize;
	}
	.btnColor {
		background-color: black;
		color: white;
	}
	.registerBox {
		text-align: right;
	}
</style>

</head>
<body>
<!-- Region for Defines -->
<c:set var="emp" 	value="${page.emps}"/>
<c:set var="paging" 	value="${page.paging}"/>
<!-- End of region --> 

<!-- Region for Title -->
<h1>Emp Info</h1>
<!-- End of region -->
<div class="registerBox">
	<a href="#" class="btn btn-info btn-sm">
	<span class="glyphicon glyphicon-inbox"></span> Emp Register</a>
</div>
<BR>
<!-- Region for DataTable -->
	<table class="table table-hover">
		<tr>
			<td>EmpNo</td>
			<td>EName</td>
			<td>Job</td>
			<td>Mgr</td>
			<td>HireDate</td>
			<td>Sal</td>
			<td>Comm</td>
			<td>DeptNo</td>
			<td class='opt'>Remove</td>
			<td class='opt'>Modify</td>
		</tr>
		<c:forEach var="emp" items="${emp}" varStatus="status">
			<tr>
				<td><a href="/emp/item/${emp.empno}">
				<span class="glyphicon glyphicon-hand-right"></span> ${emp.empno}</a></td>
				<td>${emp.ename}</td>
				<td>${emp.job}</td>
				<td><a href="/emp/item/${emp.mgr}">${emp.mgr}</a></td>
				<td>${emp.hiredate}</td>
				<td>${emp.sal}</td>
				<td>${emp.comm}</td>
				<td><a href="/dept/item/${emp.deptno}">${emp.deptno}</a></td>
				<td>
					<a href="/emp/remove/${emp.empno}?pageNo=${paging.pageNo}">
						<span class="glyphicon glyphicon-remove"></span>
					</a>
				</td>
				<td>
					<a href="/emp/modify/${emp.empno}?pageNo=${paging.pageNo}">
						<span class="glyphicon glyphicon-edit"></span>
					</a>
				</td>
			</tr>
		</c:forEach>
	</table>
<!-- End of region -->

<!--
<button onclick="displayBox(event)" class="btn btn-danger animated bounce">
 ${paging}
</button>
 -->
 
 <!-- Region for Page Buttons -->
<div class="text-center">
	<a href="/emp/page/1" class="btn btn-group-sm active">first</a>
	
	<c:choose>
	<c:when test="${paging.firstGroup == true}">
		<a href="/emp/page/${paging.firstPage}" class="btn btn-sm btnColor">&laquo;</a>
	</c:when>
	<c:when test="${paging.firstGroup == false}">
		<a href="/emp/page/${paging.firstPage - 1}" class="btn btn-sm btnColor">&laquo;</a>
	</c:when>
	</c:choose>
	<c:forEach var="i" begin="${paging.firstPage}" end="${paging.lastPage}">
		<c:if test="${paging.pageNo == i}">
			<a href="/emp/page/${i}" class="btn btn-group-sm active activeColor">${i}</a>
		</c:if>
		<c:if test="${paging.pageNo != i}">
			<a href="/emp/page/${i}" class="btn btn-group-sm">${i}</a>
		</c:if>
	</c:forEach>
	
	<c:choose>
	<c:when test="${paging.lastGroup == true}">
		<a href="/emp/page/${paging.lastPage}"class="btn btn-sm btnColor">&raquo;</a>
	</c:when>
	<c:when test="${paging.lastGroup == false}">
		<a href="/emp/page/${paging.lastPage + 1}"class="btn btn-sm btnColor">&raquo;</a>
	</c:when>
	</c:choose>
	
	<a href="/emp/page/${paging.totalPage}" class="btn btn-group-sm active">last</a>
</div>
<!-- End of region -->



</body>
</html>