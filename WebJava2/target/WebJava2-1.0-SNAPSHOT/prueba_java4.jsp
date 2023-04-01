<!DOCTYPE html>
<html>
<head>
	<title>Comprobar si un n�mero es primo</title>
</head>
<body>
	<h1>Comprobar si un n�mero es primo</h1>
	
	<p>Ingrese un n�mero para comprobar si es primo:</p>
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
				document.getElementById("resultado").innerHTML = num + " es un n�mero primo";
			} else {
				document.getElementById("resultado").innerHTML = num + " no es un n�mero primo";
			}
		}
	</script>
</body>
</html>
