<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
/* Estamos Importando os Pacotes Necessários
   para o funcionamento do relógio.
   O comando <%@page import corresponde ao import do Java (JSE)
   */
%>
<%@page import="java.util.Date, java.text.SimpleDateFormat"%>
<!DOCTYPE html>

<%! // Aqui estamos DECLARANDO os objetos por isso usamos

private Date hora = new Date();
private SimpleDateFormat f = new SimpleDateFormat("HH:mm:ss");




%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Relógio</title>
<style type="text/css">

body {
      background: linear-gradient(45deg, #ff5733, #33a5ff, #33ff57, #ff33a5);
      background-size: 400% 400%;
      animation: gradient 2s linear infinite;
      width: 200px;
      text-align: center;
      color: white;
      justify-contents:center;

      margin: 200px;
      margin-left: 670px;
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
</head>
<body>
	<%@ include file = "cabecalho.jsp" %>
	
	<h1 class = "relogio">
	<%= f.format(hora) %>
	</h1>
	
	<%@ include file = "rodape.jsp" %>

</body>
</html>