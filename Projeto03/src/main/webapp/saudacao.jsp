<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sauda��o JSP</title>
</head>
<body>
	<style type="text/css">
body {
	background: linear-gradient(45deg, #ff5733, #33a5ff, #33ff57, #ff33a5);
	background-size: 400% 400%;
	animation: gradient 2s linear infinite;
	width: 200px;
	text-align: center;
	color: white;
	justify-contents: center;
	margin: 200px;
	margin-left: 670px;
}

@
keyframes gradient { 0% {
	background-position: 0% 50%;
}
50
%
{
background-position
:
100%
50%;
}
100
%
{
background-position
:
0%
50%;
}
}
</style>
	<%-- Obtendo o nome do formul�rio --%>
	<%
	String nome = request.getParameter("nome");
	%>

	<%-- Exibindo a sauda��o personalizada --%>
	<h1>
		Ol�,
		<%=nome%>!
	</h1>

	<%-- Voltar para a p�gina inicial --%>
	<a href="index.jsp">Voltar</a>



</body>
</html>