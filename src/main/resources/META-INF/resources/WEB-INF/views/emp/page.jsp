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
</head>
<body>
<!-- Region for Defines -->
<c:set var="emp" 	value="${page.emps}"/>
<c:set var="paging" 	value="${page.paging}"/>
<!-- End of region --> 

<!-- Region for Title -->
<h1>Emp Page List pageNo = ${paging.pageNo}</h1>
<!-- End of region -->
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
				<td><a href="/emp/item/${emp.empno}">${emp.empno}</a></td>
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
	<a href="/emp/page/${paging.firstPage - 1}">Prev</a>
	<c:forEach var="i" begin="${paging.firstPage}" end="${paging.lastPage}">
		<a href="/emp/page/${i}">${i}</a>
	</c:forEach>
	<a href="/emp/page/${paging.lastPage + 1}">Next</a>
</div>
<!-- End of region -->

<script type="text/javascript">
	function displayBox(event) {
		$('.btn').toggleClass('btn-danger');
	}
</script>

</body>
</html>