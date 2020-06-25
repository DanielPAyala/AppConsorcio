<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<form action="ServletEmpleado?tipo=sesion" method="post">
		<table align="center">
			<tr>
				<td>Login</td>
				<td><input type="text" name="txt_login" /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="txt_pass" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center">${requestScope.msg}</td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input type="submit" value="Iniciar Sesion" /></td>
			</tr>
		</table>
	</form>
</body>
</html>