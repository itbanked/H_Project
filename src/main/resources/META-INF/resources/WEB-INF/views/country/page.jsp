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
	a:HOVER {
		text-decoration: none;	
	}
	a {
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
<!-- Region for Defines -->
<c:set var="countrys" 	value="${page.countrys}"/>
<c:set var="paging" 	value="${page.paging}"/>
<!-- End of region -->

<!-- Region for Title -->
<h1>Country Page List pageNo = ${paging.pageNo}</h1>
<!-- End of region -->

<!-- Country Register Button -->
<a href="/country/register/${country.code}?pageNo=${paging.pageNo}" class="btn btn-success btn-sm">
<span class="glyphicon glyphicon-inbox"></span> Country Register</a>

<!-- Region for DataTable -->
<div class="text-center table-responsive">
	<table class="table table-hover">
		<tr>
			<td colspan="2"></td>
			<td>No.</td>
			<td>code</td>
			<td>name</td>
			<td>continent</td>
			<td>region</td>
			<td>surfaceArea</td>
			<td>indepYear</td>
			<td>population</td>
			<td>lifeExpectancy</td>
			<td>gnp</td>
			<td>gnpOld</td>
			<td>localName</td>
			<td>governmentForm</td>
			<td>headOfState</td>
			<td>capital</td>
			<td>code2</td>
		</tr>
		<c:forEach var="c" items="${countrys}" varStatus="status">
			<tr>
				<td><a href="/country/modify/${country.code}?pageNo=${paging.pageNo}">
				<span class="glyphicon glyphicon-edit"></span></a></td>
				<td><a href="/country/unregister/${country.code}?pageNo=${paging.pageNo}">
				<span class="glyphicon glyphicon-remove"></span></a></td>
				<td><b>${status.index + 1}</b></td>
				<td>${c.code}</td> 
				<td><a href="/country/item/${c.code}?pageNo=${paging.pageNo}">${c.name}</a></td>
				<td>${c.continent}</td>
				<td>${c.region}</td>
				<td>${c.surfaceArea}</td>
				<td>${c.indepYear}</td>
				<td>${c.population}</td>
				<td>${c.lifeExpectancy}</td> 
				<td>${c.gnp}</td> 
				<td>${c.gnpOld}</td> 
				<td>${c.localName}</td> 
				<td>${c.governmentForm}</td> 
				<td>${c.headOfState}</td> 
				<td>${c.capital}</td> 
				<td>${c.code2}</td>
			</tr>
		</c:forEach>
	</table>
</div>
<!-- End of region -->

<!--
<button onclick="displayBox(event)" class="btn btn-danger animated bounce">
 ${paging}
</button>
 -->
 
 <!-- Region for Page Buttons -->
<!--  <div class="text-center"> -->
<%-- 	<a href="/country/page/${paging.firstPage - 1}">Prev</a> --%>
<%-- 	<c:forEach var="i" begin="${paging.firstPage}" end="${paging.lastPage}"> --%>
<%-- 		<a href="/country/page/${i}">${i}</a> --%>
<%-- 	</c:forEach> --%>
<%-- 	<a href="/country/page/${paging.lastPage + 1}">Next</a> --%>
<!-- </div> -->
<!-- End of region -->

<!-- Pagination -->
<div class="text-center">
	<a href="/country/page/1">처음으로</a>
	
	<c:choose>
	<c:when test="${paging.firstGroup == true}">
		<a href="/country/page/${paging.firstPage}" class="btn btn-warning btn-sm">&laquo;</a>
	</c:when>
	<c:when test="${paging.firstGroup == false}">
		<a href="/country/page/${paging.firstPage - 1}" class="btn btn-warning btn-sm">&laquo;</a>
	</c:when>
	</c:choose>
	
	<c:forEach var="i" begin="${paging.firstPage}" end="${paging.lastPage}">
		<a href="/country/page/${i}" class="btn btn-group-sm active">${i}</a>
	</c:forEach>
	
	<c:choose>
	<c:when test="${paging.lastGroup == true}">
		<a href="/country/page/${paging.lastPage}" class="btn btn-warning btn-sm">&raquo;</a>
	</c:when>
	<c:when test="${paging.lastGroup == false}">
		<a href="/country/page/${paging.lastPage + 1}" class="btn btn-warning btn-sm">&raquo;</a>
	</c:when>
	</c:choose>
	
	<a href="/country/page/${paging.totalPage}">끝으로</a>
</div>


<script type="text/javascript">
	function displayBox(event) {
		$('.btn').toggleClass('btn-danger');
	}
</script>

</body>
</html>