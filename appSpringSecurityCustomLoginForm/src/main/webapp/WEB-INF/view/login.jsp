<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1>Login</h1>
   <form action="/appSpringSecurityCustomLoginForm/perform_login" method="post">
   	  <c:if test="${param.error != null}">
		<p>
			username ou password invalides.
		</p>
	  </c:if>
	  <c:if test="${param.logout != null}">
		<p>
			Vous avez été deconnecté.
		</p>
	  </c:if>
      <table>
         <tr>
            <td><label for="username">Username : </label></td>
            <td><input type="text" id="username" name="username"></td>
         </tr>
         <tr>
            <td><label for="password">Password : </label></td>
            <td><input type="password" id="password" name="password" /></td>
         </tr>
         <tr>
         	<td><input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/></td>
            <td><input type="submit" value="Valider" /></td>
         </tr>
      </table>
  </form>
</body>
</html>