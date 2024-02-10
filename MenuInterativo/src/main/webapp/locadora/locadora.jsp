<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Locadora de Filmes</title>
<link rel="stylesheet" href="locadora/locadorastyle.css">
<script src="locadora/script.js"></script>
</head>
<body>
	<h1>
		LOCADORA DE FILME KI TERROR (⌐■_■) 🤠
		<h1>
			<h2>
				Filmes Disponiveis
				<h2>
					<ul id="filmes">
						<%-- Definir uma lista de filmes usando o código --%>
						<%
						String[] filmes = { "O Exorcista", "IT", "Sexta-Feira 13" };
						%>
						<%
						for (String filme : filmes) {
						%>
						<li><%=filme%></li>
						<%
						}
						%>
					</ul>
					<h2>Alugar Filme</h2>
					<form id="alugar-form">
						<label for="filme-select">Selecione um file:</label> <select
							id="filme-select">
							<%-- Preencher o select com os filmes  --%>
							<%
							for (String filme : filmes) {
							%>
							<option value="<%=filme%>"><%=filme%></option>
							<%
							}
							%>
						</select>
						<button class="btn" type="submit">Alugar</button>
						<a href="menu.jsp" class="btn">Voltar Para Menu</a>
					</form>
					<h2>Filmes Alugados</h2>
					<ul id="alugados"></ul>
</body>
</html>