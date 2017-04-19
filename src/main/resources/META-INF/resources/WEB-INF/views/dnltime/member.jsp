<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>template.jsp</title>

<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

</head>
<body>

	<c:set var="a0" value="출근"/>
	<c:set var="a1" value="외출"/>
	<c:set var="a3" value="외근"/>
	<c:set var="a4" value="출장"/>

<c:forEach var="member" items="${memberlist}">
	<c:set var="dnlcode" value="${member.dnlCode}"/>
	<c:choose>
  <c:when test="${dnlcode== '0'}">
     ${a0}
  </c:when>
  <c:when test="${dnlcode=='1'}">
      ${a1}
  </c:when>
  <c:when test="${dnlcode=='2'}">
      ${a2}
  </c:when>
  <c:when test="${dnlcode=='3'}">
      ${a3}
  </c:when>
  <c:otherwise>
     4이하 입니다.
  </c:otherwise>
</c:choose>

<%-- ${member.dnlCode}<br> --%>
</c:forEach>

<%-- ${memberlist} --%>

</body>
</html>