<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tabela</title>
</head>
<style>

body{
 background: linear-gradient(45deg, #ff5733, #33a5ff, #33ff57, #ff33a5);
      background-size: 400% 400%;
      animation: gradient 2s linear infinite;
      width: 200px;
      text-align: center;
      color: white;
      justify-contents:center;
      text-align: center;
      color: white;
      justify-contents:center;
      font-family: Impact;
      font-size: 20px;

      margin: 200px;
      margin-left: 500px;
    }
    
    @keyframes gradient {
      0% {
        background-position: 0% 50%;
      }
      50% {
        background-position: 100% 50%;
      }
      100% {
        background-position: 0% 50%;
      }
}

</style>
<body>
	
	<h1> Resultado: </h1>
	
	<% int valor = Integer.parseInt(request.getParameter("valor")); %>
	
	<%
	
	int r1 = valor * 1;
	int r2 = valor * 2;
	int r3 = valor * 3;
	int r4 = valor * 4;
	int r5 = valor * 5;
	int r6 = valor * 6;
	int r7 = valor * 7;
	int r8 = valor * 8;
	int r9 = valor * 9;
	int r10 = valor * 10;
	
	%>
	
	<p> 
	<%= valor %> x 1 = <%= r1 %> <br>
	<%= valor %> x 2 = <%= r2 %> <br>
	<%= valor %> x 3 = <%= r3 %> <br>
	<%= valor %> x 4 = <%= r4 %> <br>
	<%= valor %> x 5 = <%= r5 %> <br>
	<%= valor %> x 6 = <%= r6 %> <br>
	<%= valor %> x 7 = <%= r7 %> <br>
	<%= valor %> x 8 = <%= r8 %> <br>
	<%= valor %> x 9 = <%= r9 %> <br>
	<%= valor %> x 10 = <%= r10 %> <br>
	
	<a href = "index.jsp" > Voltar a página de pesquisa</a>
	

</body>
</html>