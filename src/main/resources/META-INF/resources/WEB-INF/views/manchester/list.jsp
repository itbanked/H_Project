<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>
</head>
<body>
<div class="col-lg-10 col-lg-offset-1">
<h1>Manchester United Information</h1>
	<table class="animated bounceInLeft table table-striped">
		<tr class="info" align="center">
			<td><b>Idno</b></td>
			<td><b>Team</b></td>
			<td></td>
		</tr>
		<c:forEach var="manchester" items="${list}">
			<tr align="center">
				<td>${manchester.idno}</td>
				<td><a href="/manchester/item/${manchester.idno}">${manchester.team}</a></td>
				<td>
				<a href="/manchester/modify/${manchester.idno}" class="btn-sm btn-success" data-toggle="modal" data-target="#myModal1">수정</a>
				<a href="/manchester/unregister/${manchester.idno}" class="btn-sm btn-danger" data-toggle="modal" data-target="#myModal">삭제</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	<a href="/manchester/register" class="btn-sm btn-primary" data-toggle="modal" data-target="#myModal3">Team 등록</a>
</div>
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
         </div>
    </div>
  </div>
  <div class="modal fade" id="myModal1" role="dialog">
    <div class="modal-dialog modal-m">
      <div class="modal-content">
      </div>
    </div>
  </div>
  <div class="modal fade" id="myModal3" role="dialog">
    <div class="modal-dialog modal-m">
      <div class="modal-content">
         </div>
    </div>
  </div>
</body>
</html>