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
</style>

</head>
<body>
<!-- Region for Defines -->
<c:set var="dept" 	value="${page.Depts}"/>
<c:set var="paging" 	value="${page.paging}"/>
<!-- End of region -->

<!-- Region for Title -->
<h1>Dept Page List pageNo = ${paging.pageNo}</h1>
<!-- End of region -->

<!-- Region for DataTable -->
	<table class="table table-hover">
		<tr>
			<td>DeptNo</td>
			<td>DName</td>
			<td>Location</td>
		</tr>
		<c:forEach var="d" items="${dept}" varStatus="status">
			<tr>
				<td><a href="/dept/item/${d.deptno}">
				<span class="glyphicon glyphicon-hand-right"></span> ${d.deptno}</a></td>
				<td>${d.dname}</td>
				<td>${d.loc}</td>
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
	<a href="/dept/page/1" class="btn btn-group-sm active">first</a>
	
	<c:choose>
	<c:when test="${paging.firstGroup == true}">
		<a href="/dept/page/${paging.firstPage}" class="btn btn-sm btnColor">&laquo;</a>
	</c:when>
	<c:when test="${paging.firstGroup == false}">
		<a href="/dept/page/${paging.firstPage - 1}" class="btn btn-sm btnColor">&laquo;</a>
	</c:when>
	</c:choose>
	<c:forEach var="i" begin="${paging.firstPage}" end="${paging.lastPage}">
		<c:if test="${paging.pageNo == i}">
			<a href="/dept/page/${i}" class="btn btn-group-sm active activeColor">${i}</a>
		</c:if>
		<c:if test="${paging.pageNo != i}">
			<a href="/dept/page/${i}" class="btn btn-group-sm">${i}</a>
		</c:if>
	</c:forEach>
	
	<c:choose>
	<c:when test="${paging.lastGroup == true}">
		<a href="/dept/page/${paging.lastPage}"class="btn btn-sm btnColor">&raquo;</a>
	</c:when>
	<c:when test="${paging.lastGroup == false}">
		<a href="/dept/page/${paging.lastPage + 1}"class="btn btn-sm btnColor">&raquo;</a>
	</c:when>
	</c:choose>
	
	<a href="/dept/page/${paging.totalPage}" class="btn btn-group-sm active">last</a>
</div>
<!-- End of region -->

<script type="text/javascript">
	function displayBox(event) {
		$('.btn').toggleClass('btn-danger');
	}
</script>

</body>
</html>