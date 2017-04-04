<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>unregisterSuccess.jsp</title>

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>
<style type="text/css">
	.headTR {
		background-color: lightGray;
		font-weight: bold;
	}
	a:hover {
		text-decoration: none;
	}
	a {
		color: black;
	}
	.okBox {
		text-align: right;
	}
</style>

</head>
<body>
<h1>Delete Success!</h1>
<div class="text-center table-responsive">
<table class="table table-hover">
	<tr class="headTR">
		<td>Deleted City ID</td>
	</tr>
	<tr>
		<td>${id}</td>
	</tr>
</table>
</div>
<div class="okBox">
	<a href="/city/page/${param.pageNo}" class="btn btn-sm btn-default">Delete OK</a>
</div>
</body>
</html>