<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modifySuccess.jsp</title>

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

</head>
<body>
<h1>modify success</h1>

 <table class="table table-condensed">
    <thead>
      <tr>
        <th>name</th>
        <th>chemical formula</th>
        <th>density</th>
        <th>average melting point</th>
        <th>solubility in water</th>
        <th>acidity</th>
        <th>hazard statements</th>
        <th>note</th>
        <th>mass</th>
      </tr>
    </thead>
    <tbody>

      <tr>
        <td>${molecule.name}</td>
        <td>${molecule.chemicalFormula}</td>
        <td>${molecule.density}</td>
        <td>${molecule.averageMeltingPoint}</td>
        <td>${molecule.solubilityInWater}</td>
        <td>${molecule.acidity}</td>
        <td>${molecule.hazardStatements}</td>
        <td>${molecule.note}</td>
        <td>${molecule.mass.molarMass}</td>
      </tr>
    </tbody>
  </table>


<a class="btn btn-primary" href="/molecule/page/${param.pageNo}">이전 Page로...</a>

</body>
</html>



