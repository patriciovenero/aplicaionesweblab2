<%@ page language="java" import="com.miempresa.webapp02ejercicio.OperacionesDiversas" %>

<!DOCTYPE html>
<html>
<head>
	<title>Operaciones Diversas</title>
</head>
<body>
	<h1>Operaciones Diversas</h1>
	
	<form method="post">
		<label for="a">Valor A:</label>
		<input type="number" name="a" id="a">
		<br>
		<input type="submit" value="Raíz Cuadrada" name="operacion">
		<input type="submit" value="Raíz Cúbica" name="operacion">
		<input type="submit" value="Potencia" name="operacion">
		<input type="submit" value="Valor Absoluto" name="operacion">
	</form>
	
	<% 
		if (request.getParameter("operacion") != null) {
			double a = Double.parseDouble(request.getParameter("a"));
			String operacion = request.getParameter("operacion");
			
			if (operacion.equals("Raíz Cuadrada")) {
				out.print("La raíz cuadrada de " + a + " es: " + OperacionesDiversas.raizCuadrada(a));
			} else if (operacion.equals("Raíz Cúbica")) {
				out.print("La raíz cúbica de " + a + " es: " + OperacionesDiversas.raizCubica(a));
			} else if (operacion.equals("Potencia")) {
				out.print("El resultado de elevar " + a + " a la potencia de 2 es: " + OperacionesDiversas.potencia(a, 2));
			} else if (operacion.equals("Valor Absoluto")) {
				out.print("El valor absoluto de " + a + " es: " + OperacionesDiversas.valorAbsoluto((int) a));
			}
		}
	%>
	
</body>
</html>
