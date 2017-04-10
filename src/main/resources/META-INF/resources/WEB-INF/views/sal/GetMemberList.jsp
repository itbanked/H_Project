<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GetMemberList.jsp</title>

<link rel="stylesheet" href="/css/ListService.css">

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

<style>

	.table {
		width: 360px;
	}
	
	.title {
		font-weight: bold;
	}
	
	.serial {
		width: 100px;
	}
	
	.content {
		width: 260px;
	}

</style>

</head>
<body>

	<H1>Get Member List</H1>
	
	<table class='table'>
		<tr>
			<td class="title serial">MemberSrl</td>
			<td class="title content">UserID</td>
		</tr>
		<c:forEach var="Member" items="${Members}" >
			<tr>
				<td>${Member.membersrl}</td>
				<td>${Member.userid}</td>
			</tr>
		</c:forEach> 
	</table>

</body>
</html>