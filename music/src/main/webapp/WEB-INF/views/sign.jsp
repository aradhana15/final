<%@include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Login Page</title>

</head>

<body>

      <h1>Login</h1>

   <form name='f' action="perform_login" method="POST">

      <table>

         <tr>

            <td>User:</td>

            <td><input type="text" name="username" /></td>

         </tr>

         <tr>

            <td>Password:</td>

            <td><input type="password" name="password" /></td>

         </tr>

         <tr>

            <td><input name="submit" type="submit" value="Login" /></td>

         </tr>

      </table>

  </form>

 <%-- <h1>Admin LogIn </h1> POM
​
	<div id="login-box">
​
		<h3>Login with Username and Password</h3>
​
		<c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>
​
		<form name='loginForm'
			action="<c:url value='perform_login' />" method='POST'>
​
			<table>
				<tr>
					<td>User:</td>
					<td><input type='text' name='username'></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type='password' name='password' /></td>
				</tr>
				<tr>
					<td colspan='2'><input name="submit" type="submit"
						value="submit" /></td>
				</tr>
			</table>
​
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
​
		</form>
	</div> --%>
</body>

</html>
