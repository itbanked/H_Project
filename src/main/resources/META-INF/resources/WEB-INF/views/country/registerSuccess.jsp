<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>registerSuccess.jsp</title>

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

</head>
<body>
<h1>Country 등록 성공입니다.</h1>
<div class="text-center table-responsive">
	<table class="table table-bordered">
		<tr class="danger">
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
	
		<tr>
			<td><b>${status.index + 1}</b></td>
			<td>${country.code}</td> 
			<td>${country.name}</td>
			<td>${country.continent}</td>
			<td>${country.region}</td>
			<td>${country.surfaceArea}</td>
			<td>${country.indepYear}</td>
			<td>${country.population}</td>
			<td>${country.lifeExpectancy}</td> 
			<td>${country.gnp}</td> 
			<td>${country.gnpOld}</td> 
			<td>${country.localName}</td> 
			<td>${country.governmentForm}</td> 
			<td>${country.headOfState}</td> 
			<td>${country.capital}</td> 
			<td>${country.code2}</td>
		</tr>
	</table>
<a href="/country/page/${param.pageNo}">Country Page로</a>
</div>
</body>
</html>