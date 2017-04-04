<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	
	.registerBox {
			text-align: right;
		}
		
	.margin {
		margin :30px auto;
		white-space : nowrap;
		text-overflow : ellipsis;
	}
</style>
<title>Manchester United</title>
<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>
</head>
<body>
<h1>Manchester United Information</h1>

	<div class="registerBox">
		<a href="/manchester/register" class="btn btn-info btn-sm" data-toggle="modal" data-target="#myModal3">
		<span class="glyphicon glyphicon-inbox"> Team Register</span></a>
	</div>
	
	<div class="margin">
	<table class="table table-hover">
		<tr align="center">
			<td><b>Idno</b></td>
			<td><b>Team</b></td>
			<td colspan="2"></td>
		</tr>
		<c:forEach var="manchester" items="${list}">
			<tr align="center">
				<td>${manchester.idno}</td>
				<td><a href="/manchester/item/${manchester.idno}">${manchester.team}</a></td>
				<td>
				<a href="/manchester/modify/${manchester.idno}" data-toggle="modal" data-target="#myModal1">
				<span class="glyphicon glyphicon-edit"></span></a>
				</td>
				<td>
				<a href="/manchester/unregister/${manchester.idno}" data-toggle="modal" data-target="#myModal">
				<span class="glyphicon glyphicon-remove"></span></a>
				</td>
			</tr>
		</c:forEach>
	</table>
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