<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import= "modelo.Intento" %> 
    <%@ page import= "controlador.Control" %>
    <%@ page import="java.util.*, java.time.LocalDateTime, java.time.*" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>

<h1>FELICIDADES</h1>

<form action="index.jsp">
 
  <button type="submit">REGRESAR</button><br><br><br>
  
</form>

<img src="img/correct.png" alt="Smiley face" height="142" width="142"><br><br><br>

<% session.invalidate(); %>

<!-- NECESITAMOS IMPORTAR EL REQUEST("request") !!!!OJO SOLO FUNCIONA CON ("request") !!PALABRA RESERVADA!!!, ASIGNARLO A UNA NUEVA VARIABLE Y LUEGO ASIGNARLE EL METODO DEL BEAN "Intento" -->
<% Intento intent = (Intento)request.getAttribute("intent"); %>
<p>EL NUMERO CORRECTO ES: <%= intent.getNumeroJugado() %></p><br>
<p>Nº DE INTENTOS TOTAL: <%= intent.getOrden()%></p>

</center>
</body>
</html>