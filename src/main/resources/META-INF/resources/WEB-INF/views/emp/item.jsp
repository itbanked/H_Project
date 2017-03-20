<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../../css/RegisterForm.css">
<title>item.jsp</title>
</head>
<body>
	${error}<br>
	
	
	<!-- Region for Defines -->
	<c:set var="dept" 	value="${emp.dept}"/>
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
	
	<H1>
	EmpNo.${emp.empno} : ${emp.ename}
	</H1>
	<hr>
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
		<c:set var="ConvertedHireDate" value="${emp.hiredate}"/>
		<%
			String ConvertedDate = ConvertD2String( pageContext.getAttribute("ConvertedHireDate") );
		%>
		<tr>
			<td>${emp.empno}</td>
			<td>${emp.ename}</td>
			<td>${emp.job}</td>
			<td><a href="/emp/item/${emp.mgr}">${emp.mgr}</a></td>
			<td><%= ConvertedDate %></td>
			<td>${emp.sal}</td>
			<td>${emp.comm}</td>
			<td><a href="/dept/item/${emp.deptno}">${emp.deptno}</a></td>
		</tr>
	</table>
	
	<hr>
	
	<table class="table table-hover">
		<tr>
			<td>DeptNo</td>
			<td>DName</td>
			<td>Location</td>
		</tr>
		<tr>
			<td><a href="/dept/item/${dept.deptno}">${dept.deptno}</a></td>
			<td>${dept.dname}</td>
			<td>${dept.loc}</td>
	</table>
	

</body>
</html>