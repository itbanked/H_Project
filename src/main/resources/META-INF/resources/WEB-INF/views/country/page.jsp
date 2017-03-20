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

</head>
<body>
<!-- Region for Defines -->
<c:set var="countrys" 	value="${page.countrys}"/>
<c:set var="paging" 	value="${page.paging}"/>
<!-- End of region -->

<!-- Region for Title -->
<h1>Country Page List pageNo = ${paging.pageNo}</h1>
<!-- End of region -->

<!-- Region for DataTable -->
	<table class="table table-hover">
		<tr>
			<td>No.</td>
			<td>Code</td>
			<td>Name</td>
			<td>Population</td>
		</tr>
		<c:forEach var="c" items="${countrys}" varStatus="status">
			<tr>
					<td>${status.index}</td>
					<td>${c.code}</td>
					<td><a href="/country/item/${c.code}">${c.name}</a></td>
					<td>${c.population}</td>
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
	<a href="/country/page/${paging.firstPage - 1}">Prev</a>
	<c:forEach var="i" begin="${paging.firstPage}" end="${paging.lastPage}">
		<a href="/country/page/${i}">${i}</a>
	</c:forEach>
	<a href="/country/page/${paging.lastPage + 1}">Next</a>
</div>
<!-- End of region -->

<script type="text/javascript">
	function displayBox(event) {
		$('.btn').toggleClass('btn-danger');
	}
</script>

</body>
</html>