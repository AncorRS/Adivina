<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="modelo.Intento" %>
    <%@ page import="java.util.*, java.time.LocalDateTime, java.time.*" %>
    <%@ page import="controlador.Control" %>
  
<!DOCTYPE html>
<html>
<head>
<style>
.content{

    max-width: 850px;
    margin: auto;
	
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body class="content">
<h1>ADIVINA NUMERO</h1>
<form action="Control">
<input type="text" name="num1"><br>
<input type="submit" value="ADIVINA"><br><br><br>

<input type='checkbox'  value = 'invalidar' name = 'invalidar'/> Marca la casilla y dale a Reiniciar <br>
<input type='submit' value ='Reinicia' name = 'refrescar' class='btn btn-info'/><br><br><br>
</form>

<!--  <p>CONTADOR SESION / Nº DE INTENTOS: ${sessionScope.CONTADOR}</p>-->



 <%= session.getAttribute("intentosArray")%> <br>

<% Intento intent = (Intento)request.getAttribute("intent"); %>

<p>VALOR DE --fechaHora=====> <%= intent.getFechaHora()%></p><br/>

<p>VALOR DE --numeroJugado==> <%= intent.getNumeroJugado()%></p><br/>

</body>
</html>