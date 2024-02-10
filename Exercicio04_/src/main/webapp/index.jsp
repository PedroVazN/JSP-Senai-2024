<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tabela de multiplicação</title>
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
      margin-left: 570px;
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
	
	<form action = "tabela.jsp" method = "post">
	
		<label for = "valor">Digite um valor inteiro:</label>
		<input type = "number" id = "valor" name = "valor" required>
		<br>
		<input type = "submit" value = "Gerar Tabela">	
	
	</form>

</body>
</html>