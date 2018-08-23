<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">
<title>Insert title here</title>
</head>
<body>
	<div>
		Bonjour : <b><c:out value="${pageContext.request.remoteUser}"/></b>
		<br/>
		Roles: 
		<security:authorize access="isAuthenticated()">
			<security:authentication property="principal.authorities"/>
		</security:authorize>
		<br/><br/>
		<form action="/appSpringSecurityCustomLoginForm/perform_logout" method="post">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<input type="submit" value="Logout" />
		</form>
	</div>
</body>
</html>