<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Notas dos Alunos</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

<h1>Notas dos Alunos</h1>

<%
    ArrayList<String> nomes =  new ArrayList<>();
	
    ArrayList<Double> notasPortugues = new ArrayList<>();
    ArrayList<Double> notasMatematica = new ArrayList<>();

    for (int i = 1; i <= 10; i++) {
        notasPortugues.add(Math.floor(Math.random() * 10));  
        notasMatematica.add(Math.floor(Math.random() * 10));
    }
    nomes.add("Pedro ");
    nomes.add("Nathan ");
    nomes.add("Filipe ");
    nomes.add("Nicollas");
    nomes.add("Guilherme ");
    nomes.add("Giovanna ");
    nomes.add("Matheus ");
    nomes.add("Kaique ");
    nomes.add("Joao ");
    nomes.add("Gustavo ");
    nomes.add("Edgard ");
%>


<table>
    <thead>
        <tr>
            <th>Aluno</th>
            <th>Português</th>
            <th>Matemática</th>
            <th>Média</th>
        </tr>
    </thead>
    <tbody>
        <% for (int i = 0; i < 10; i++) { %>
            <tr>
                <td><%= nomes.get(i) %></td>
                <td><%= notasPortugues.get(i) %></td>
                <td><%= notasMatematica.get(i) %></td>
                <td><%= (notasPortugues.get(i) + notasMatematica.get(i)) / 2 %></td>
            </tr>
        <% } %>
    </tbody>
</table>

</body>
</html>
