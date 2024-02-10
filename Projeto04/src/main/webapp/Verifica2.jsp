<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Verificador de idade</title>
</head>
<link rel="stylesheet" href="style.css">
<body>


<%-- Declaração de variáveis --%>
<% String nome = request.getParameter("txtNome"); %> <%-- Scriplet --%>
<% int idade = Integer.parseInt(request.getParameter("txtIdade")); %>
	 

<div class="card">

<% if(idade>=16){ %>
<h1>Bem - Vindo(a), <%=nome%>!</h1>
<p> Você é maior de idade e já pode viaja kkkk partiu descer pa paia!</p>

<% } if(idade < 12) { %>
<h1>Desculpe, <%=nome%>!</h1>
<p> Você é menor de idade e não pode viaja kkkkkkkk!</p>

<% } if(idade >= 12 && idade < 16){%>
<h1>Olá, <%=nome%>!</h1>
<p> Você é menor de idade e só pode viajar com acompanhante!</p>
<% } %>

<img src="https://img1.picmix.com/output/stamp/thumb/7/1/9/2/1012917_0bf2e.gif" height = "100px" width = "100px">

</div>

</body>
</html>