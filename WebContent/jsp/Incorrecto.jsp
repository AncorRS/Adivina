<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import= "modelo.Intento" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
EL NÚMERO INTRODUCIDO: <%= request.getParameter("num1") %> ES INCORRECTO<br><br><br>

CONTADOR SESION / Nº DE INTENTOS: ${sessionScope.CONTADOR}<br><br><br>


<form action="index.jsp">
 
  <button type="submit">REGRESAR</button><br><br><br>
  
</form>

<img src="img/error.jpg" alt="Smiley face" height="142" width="242">

</center>
</body>
</html>