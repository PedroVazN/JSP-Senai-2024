<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu Interativo</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	
	<%
	String menu = request.getParameter("grpMenu");
	if (menu == null){
	%>
		<jsp:include page="cabecalho.jsp"></jsp:include>
		
		<form action="menu.jsp" method="get">
		<input type = "radio" name="grpMenu" value="1" checked="checked"/> Locadora<br/>
		<input type = "radio" name="grpMenu" value="2" />Calculadora<br/> 
		<input type = "submit" value="Enviar">
		</form>

<%
	} else{
		String op = request.getParameter("grpMenu");
		String nome = request.getParameter("txtNome");
		if (op.equals("1")){
		%>	
		<jsp:forward page="locadora/locadora.jsp">
		<jsp:param name="nome" value="<%=nome%>"/>
		</jsp:forward>
<% 
		
	} else{
		%>
		<jsp:forward page="calculadora/calculadora.jsp">
		<jsp:param name="nome" value="<%=nome%>"/>
		</jsp:forward>
<% 
	}
}
	%>

</body>
</html>