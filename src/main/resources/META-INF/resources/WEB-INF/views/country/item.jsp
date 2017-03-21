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

</head>
<body>
${error}<br>
	
	<H1>
		${country.name} [${country.code}] : ${country.population}<br>
	</H1>
<hr>
<hr>
	<Table class="table table-hover">
		<tr>
			<td>ID</td>
			<td>Name</td>
			<td>District</td>
			<td>Population</td>
		</tr>
		<c:forEach var="city" items="${country.citys}">
			<tr>
				<td><a href="/city/item/${city.id}">${city.id}</a></td>
				<td><a href="/city/item/${city.id}">${city.name}</a></td>
				<td>${city.district}</td>
				<td>${city.population}</td>
			</tr>
		</c:forEach>
	</Table>

</body>
</html>