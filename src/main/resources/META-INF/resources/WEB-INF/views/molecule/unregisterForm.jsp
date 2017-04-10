<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>unregisterForm.jsp</title>

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

</head>
<body>
<h1>delete</h1>


 <table class="table table-hover">
    <thead>
      <tr>
        <td>Name</td>
        <td>Chemical formula</td>
        <td>Density</td>
        <td>Average melting point</td>
        <td>Solubility in water</td>
        <td>Acidity</td>
        <td>Hazard statements</td>
        <td>Note</td>
        <td>Mass</td>
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

<form action="/molecule/unregister/${name}?pageNo=${param.pageNo}" method="post">
	<input class="btn btn-primary" type="submit" value="delete">
</form>

</body>
</html>



