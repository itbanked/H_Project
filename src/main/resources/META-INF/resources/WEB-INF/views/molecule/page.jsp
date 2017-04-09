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

<style type="text/css">
	a:HOVER {
		text-decoration: none;	
	}
	.active, .btn-group-sm {
		color: black;
	}
	.activeColor {
		color: white;
		background-color: darkGray;
	}
	.table-responsive {
		white-space : nowrap;
		text-overflow : ellipsis;
	}
	tr, td {
		text-transform: capitalize;
	}
	.registerBox {
		text-align: right;
	}
	.btnColor {
		background-color: black;
		color: white;
	}
</style>

</head>
<body>
<c:set var="molecules" 	value="${page.molecules}"/>
<c:set var="paging" 	value="${page.paging}"/>



  <h1>Organic Molecules</h1> 
<%--   pageNo = ${paging.pageNo} --%>
<!--   <a href="/molecule/register" class="btn btn-primary">register</a> -->
  
 <div class="registerBox">
	<a href="/molecule/register" class="btn btn-info btn-sm">
	<span class="glyphicon glyphicon-inbox"></span> Register</a>
</div>
<br>

<div class="table-responsive">         
  <table class="table table-hover">
    
      <tr>
        <td>No.</td>
        <td>Name</td>
        <td>Chemical formula</td>
        <td>Density</td>
        <td>Average melting point</td>
        <td>Solubility in water</td>
        <td>Acidity</td>
        <td>Hazard statements</td>
        <td>Note</td>
        <td>Remove</td>
        <td>Modify</td>
       
		<td></td>
        <th></th>        
      </tr>
    
    
    <c:forEach var="m" items="${molecules}" varStatus="status">
      <tr>
        <td>${status.index+1}</td>
        <td>${m.name}</td>
        <td><a href="/molecule/item/${m.chemicalFormula}">${m.chemicalFormula}</a> </td>
        <td>${m.density}</td>
        <td><a href="/molecule/melting/${m.averageMeltingPoint}">${m.averageMeltingPoint}</a></td>
        <td>${m.solubilityInWater}</td>
        <td><a href="/molecule/acidity/${m.acidity}">${m.acidity}</a></td>
        <td><a href="/molecule/hazard/${m.hazardStatements}">${m.hazardStatements} </a></td>
        <td>${m.note}</td>
        <td><a href="/molecule/unregister/${m.name}?pageNo=${page.paging.pageNo}"><span class="glyphicon glyphicon-remove"></span></a></td>
        <td><a href="/molecule/modify/${m.name}?pageNo=${page.paging.pageNo}"><span class="glyphicon glyphicon-edit"></span></a></td>
		
		
      </tr>
      </c:forEach>
 
  </table>
</div>



<div class="text-center">
<a href="/molecule/page/1" class="btn btn-group-sm active">first</a>
<c:choose>
<c:when test="${paging.firstGroup == true}">
		<a href="/molecule/page/${paging.firstPage}" class="btn btn-sm btnColor">&laquo;</a>
	</c:when>
	<c:when test="${paging.firstGroup == false}">
		<a href="/molecule/page/${paging.firstPage - 1}" class="btn btn-sm btnColor">&laquo;</a>
	</c:when>
	</c:choose>
	<c:forEach var="i" begin="${paging.firstPage}" end="${paging.lastPage}">
		<c:if test="${paging.pageNo == i}">
			<a href="/molecule/page/${i}" class="btn btn-group-sm active activeColor">${i}</a>
		</c:if>
		<c:if test="${paging.pageNo != i}">
			<a href="/molecule/page/${i}" class="btn btn-group-sm">${i}</a>
		</c:if>
	</c:forEach>
	
	<c:choose>
	<c:when test="${paging.lastGroup == true}">
		<a href="/molecule/page/${paging.lastPage}"class="btn btn-sm btnColor">&raquo;</a>
	</c:when>
	<c:when test="${paging.lastGroup == false}">
		<a href="/molecule/page/${paging.lastPage + 1}"class="btn btn-sm btnColor">&raquo;</a>
	</c:when>
	</c:choose>
	
	<a href="/molecule/page/${paging.totalPage}" class="btn btn-group-sm active">last</a>
</div>
<%-- <a href="/molecule/page/${paging.firstPage - 1}">Prev</a> --%>
<%-- <c:forEach var="i" begin="${paging.firstPage}" end="${paging.lastPage}"> --%>
<%-- 	<a href="/molecule/page/${i}">${i}</a> --%>
<%-- </c:forEach> --%>
<%-- <a href="/molecule/page/${paging.lastPage + 1}">Next</a> --%>
</div>
<script type="text/javascript">
	function displayBox(event) {
		$('.btn').toggleClass('btn-danger');
	}
</script>

</body>
</html>