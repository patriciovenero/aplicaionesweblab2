<!DOCTYPE html>
<html>
<head>
	<title>Comprobar si un número es primo</title>
</head>
<body>
	<h1>Comprobar si un número es primo</h1>
	
	<p>Ingrese un número para comprobar si es primo:</p>
	<input type="number" id="numInput">
	<button onclick="comprobarPrimo()">Comprobar</button>
	
	<p id="resultado"></p>
	
	<script>
		function comprobarPrimo() {
			var num = document.getElementById("numInput").value;
			var esPrimo = true;
			
			for (var i = 2; i < num; i++) {
				if (num % i == 0) {
					esPrimo = false;
					break;
				}
			}
			
			if (esPrimo) {
				document.getElementById("resultado").innerHTML = num + " es un número primo";
			} else {
				document.getElementById("resultado").innerHTML = num + " no es un número primo";
			}
		}
	</script>
</body>
</html>
