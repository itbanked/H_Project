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
<c:set var="citys" 	value="${page.citys}"/>
<c:set var="paging" 	value="${page.paging}"/>
<!-- End of region -->

<!-- Region for Title -->
<h1>City Page List pageNo = ${paging.pageNo}</h1>
<!-- End of region -->

<!-- Region for DataTable -->
	<table class="table table-hover">
		<tr>
			<td>ID</td>
			<td>Name</td>
			<td>Code</td>
			<td>District</td>
			<td>Population</td>
		</tr>
		<c:forEach var="city" items="${citys}" varStatus="status">
			<tr>
				<td><a href="/city/item/${city.id}">${city.id}</a></td>
				<td><a href="/city/item/${city.id}">${city.name}</a></td>
				<td>${city.countryCode}</td>
				<td>${city.district}</td>
				<td>${city.population}</td>
			</tr>
		</c:forEach>
	</table>
<!-- End of region --> 

<a href="/city/register" class='btn btn-primary'>City 등록</a>
 
 <!-- Region for Page Buttons -->
 <div class="text-center">
	<a href="/city/page/${paging.firstPage - 1}">Prev</a>
	<c:forEach var="i" begin="${paging.firstPage}" end="${paging.lastPage}">
		<a href="/city/page/${i}">${i}</a>
	</c:forEach>
	<a href="/city/page/${paging.lastPage + 1}">Next</a>
</div>
<!-- End of region -->

<script type="text/javascript">
	function displayBox(event) {
		$('.btn').toggleClass('btn-danger');
	}
</script>

</body>
</html>