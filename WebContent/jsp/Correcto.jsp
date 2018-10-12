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

<h1>FELICIDADES</h1>

<form action="index.jsp">
 
  <button type="submit">REGRESAR</button><br><br><br>
  
</form>

<img src="img/correct.png" alt="Smiley face" height="142" width="142"><br><br><br>

<p>Nº DE SESIONES TOTAL / Nº DE INTENTOS TOTAL: ${sessionScope.CONTADOR}</p>

</center>
</body>
</html>