<%@ page language="java" %>
<html>
    <head>
        <title>Prueba de ordenamiento</title>
    </head>
    <body>
        <h1>Ordenamiento de números</h1>
        <form method="post" action="prueba_java3.jsp">
            <label for="numeros">Ingrese una lista de números separados por comas:</label>
            <input type="text" id="numeros" name="numeros">
            <input type="submit" value="Ordenar">
        </form>
        <br>
        <% 
            if(request.getMethod().equalsIgnoreCase("POST")){                
                String numerosString = request.getParameter("numeros");
                String[] numerosArray = numerosString.split(",");


                int[] numeros = new int[numerosArray.length];
                for (int i = 0; i < numerosArray.length; i++) {
                    numeros[i] = Integer.parseInt(numerosArray[i].trim());
                }

                for (int i = 0; i < numeros.length - 1; i++) {
                    for (int j = 0; j < numeros.length - i - 1; j++) {
                        if (numeros[j] > numeros[j + 1]) {
                            int temp = numeros[j];
                            numeros[j] = numeros[j + 1];
                            numeros[j + 1] = temp;
                        }
                    }
                }


                out.println("<p>Los números en orden ascendente son:</p>");
                out.println("<ol>");
                for (int i = 0; i < numeros.length; i++) {
                    out.println("<li>" + numeros[i] + "</li>");
                }
                out.println("</ol>");
            }
        %>
    </body>
</html>
