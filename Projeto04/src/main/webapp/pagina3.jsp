<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<link rel="stylesheet" href="style.css">
<body>

	<h2>Escreva sua idade e nome</h2>
	<form action="Verifica2.jsp" method="post">
	
		Idade: <input type="number" name="txtIdade" value="" size="2">
		Nome: <input type="text" name="txtNome" value="" size="12">
		<input type="submit" value="Inviar">
		
	</form>


</body>
</html>