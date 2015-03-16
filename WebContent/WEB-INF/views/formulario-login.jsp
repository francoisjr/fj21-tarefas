<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Página de Login</title>
</head>
<body>
	<h2>Página de login de tarefas</h2>
	
	<form action="efetuaLogin" method="post">
		<span>Login:</span>
			<input type="text" name="login" /> 	
			<br/>
			<span>Senha:</span>
			<input type="password" name="senha" />
			<br/>
			<input type="submit" value="Entrar nas tarefas" />
	</form>
</body>
</html>