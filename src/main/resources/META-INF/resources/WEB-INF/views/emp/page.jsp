<%@page import="java.util.Date"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.text.DecimalFormat"%>
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
<c:set var="emp" 	value="${page.emps}"/>
<c:set var="paging" 	value="${page.paging}"/>
<!-- End of region --> 

<!-- Region for Title -->
<h1>Emp Page List pageNo = ${paging.pageNo}</h1>
<!-- End of region -->
 
	<%!
		public String ConvertD2String( Object obj ) {
			Date date = (Date)obj;
			String Year = Int2Str( date.getYear()  , 2);
			String Month = Int2Str( date.getMonth() + 1  , 2);
			String Day = Int2Str( date.getDay() , 2);
			String value =  Year + "/" + Month + "/" + Day;
			return value;
		}
	
		public String Int2Str(int num, int digits) {
		    assert digits > 0 : "Invalid number of digits";
	
		    // create variable length array of zeros
		    char[] zeros = new char[digits];
		    Arrays.fill(zeros, '0');
		    // format number as String
		    DecimalFormat df = new DecimalFormat(String.valueOf(zeros));
	
		    return df.format(num);
		}
	%>

<!-- Region for DataTable -->
	<table class="table table-hover">
		<tr>
			<td>EmpNo</td>
			<td>EName</td>
			<td>Job</td>
			<td>Mgr</td>
			<td>HireDate</td>
			<td>Sal</td>
			<td>Comm</td>
			<td>DeptNo</td>
		</tr>
		<c:forEach var="emp" items="${emp}" varStatus="status">
			<c:set var="ConvertedHireDate" value="${emp.hiredate}"/>
			<%
				String ConvertedDate = ConvertD2String( pageContext.getAttribute("ConvertedHireDate") );
			%>
			<tr>
				<td><a href="/emp/item/${emp.empno}">${emp.empno}</a></td>
				<td>${emp.ename}</td>
				<td>${emp.job}</td>
				<td><a href="/emp/item/${emp.mgr}">${emp.mgr}</a></td>
				<td><%= ConvertedDate %></td>
				<td>${emp.sal}</td>
				<td>${emp.comm}</td>
				<td><a href="/dept/item/${emp.deptno}">${emp.deptno}</a></td>
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
	<a href="/emp/page/${paging.firstPage - 1}">Prev</a>
	<c:forEach var="i" begin="${paging.firstPage}" end="${paging.lastPage}">
		<a href="/emp/page/${i}">${i}</a>
	</c:forEach>
	<a href="/emp/page/${paging.lastPage + 1}">Next</a>
</div>
<!-- End of region -->

<script type="text/javascript">
	function displayBox(event) {
		$('.btn').toggleClass('btn-danger');
	}
</script>

</body>
</html>