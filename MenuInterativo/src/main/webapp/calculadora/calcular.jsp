<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resultado</title>
<link rel="stylesheet" href="calculadora/calculadorastyle.css">
</head>
<body>
	<div class="container">
		<h1>Resultado</h1>

		<%-- Recuperar os valores enviados pelo formulário --%>

		<%
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		String operacao = request.getParameter("operacao");
		%>

		<%-- Realizar  o cálculo --%>
		<%
		double resultado = 0;
		if (operacao.equals("+")) {
			resultado = Double.parseDouble(num1) + Double.parseDouble(num2);
		} else if (operacao.equals("-")){
			resultado = Double.parseDouble(num1) - Double.parseDouble(num2);
		} else if (operacao.equals("*")){
			resultado = Double.parseDouble(num1) * Double.parseDouble(num2);
		} else if (operacao.equals("/")){
			resultado = Double.parseDouble(num1) / Double.parseDouble(num2);
		}
		%>

		<%-- Exibir o resultado --%>
		
		<div class="result">
			<p>
				O resultado da operação
				<%= num1 %>
				<%= operacao %>
				<%= num2 %>
				é:
				<%= resultado %>
			</p>
			<a href="menu.jsp">Voltar Para Menu</a>
		</div>
	</div>
</body>
</html>