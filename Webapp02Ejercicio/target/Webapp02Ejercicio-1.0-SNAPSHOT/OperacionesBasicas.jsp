<%@ page language="java" import="com.miempresa.webapp02ejercicio.Operacionesbasicas" %>


<!DOCTYPE html>
<html>
<head>
	<title>Operaciones Básicas</title>
</head>
<body>
	<h1>Operaciones Básicas</h1>
	
	<form method="post">
		<label for="a">Valor A:</label>
		<input type="number" name="a" id="a">
		<br>
		<label for="b">Valor B:</label>
		<input type="number" name="b" id="b">
		<br>
		<input type="submit" value="Sumar" name="operacion">
		<input type="submit" value="Restar" name="operacion">
		<input type="submit" value="Multiplicar" name="operacion">
		<input type="submit" value="Dividir" name="operacion">
	</form>
	
	<% 
		if (request.getParameter("operacion") != null) {
			int a = Integer.parseInt(request.getParameter("a"));
			int b = Integer.parseInt(request.getParameter("b"));
			String operacion = request.getParameter("operacion");
			
			if (operacion.equals("Sumar")) {
				out.print("El resultado de la suma es: " + Operacionesbasicas.suma(a, b));
			} else if (operacion.equals("Restar")) {
				out.print("El resultado de la resta es: " + Operacionesbasicas.resta(a, b));
			} else if (operacion.equals("Multiplicar")) {
				out.print("El resultado de la multiplicación es: " + Operacionesbasicas.multiplicacion(a, b));
			} else if (operacion.equals("Dividir")) {
				if (b == 0) {
					out.print("No se puede dividir entre cero.");
				} else {
					out.print("El resultado de la división es: " + Operacionesbasicas.division(a, b));
				}
			}
		}
	%>
	
</body>
</html>

			
