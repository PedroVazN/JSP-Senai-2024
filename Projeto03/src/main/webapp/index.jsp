<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mini Aplicação JSP</title>
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
<h1>Mini Aplicação JSP</h1>

<form action = "saudacao.jsp" method = "post"> 
<label for = "nome">Digite o seu nome</label>
<input type = "text" id = "nome" name = "nome" required >
<input type = "submit" value = "Enviar">
</form>


</body>
</html>