<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%! String cadena = "Bienvenidos a JSP";%>
<%@ page import="com.miempresa.webjava2.Calculo" %>
<%@ page import="com.miempresa.webjava2.Utilidades" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" 
              href="webjars/bootstrap/5.2.3/css/bootstrap.min.css" type="text/css" />
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container mt-5">
            <div class="row">
                <div class="col">
                    <div class="card text-dark bg-warning mb-3" style="max-width: 18rem;">
                        <div class="card-header">Declaración de variable</div>
                        <div class="card-body">
                            <h5 class="card-title">Variable cadena</h5>
                            <p class="card-text"><%= cadena%></p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card text-dark bg-info mb-3" style="max-width: 18rem;">
                        <div class="card-header">Uso de libreria Date</div>
                        <div class="card-body">
                            <h5 class="card-title">Fecha Actual</h5>
                            <p class="card-text"><% out.println(new Date());%></p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card text-dark bg-info mb-3" style="max-width: 18rem;">
                        <div class="card-header">Uso de libreria Date</div>
                        <div class="card-body">
                            <h5 class="card-title">Fecha Actual</h5>
                            <p class="card-text"><% System.out.println(new Date());%></p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card text-dark bg-info mb-3" style="max-width: 18rem;">
                        <div class="card-header">Invocación de clase Calculo</div>
                        <div class="card-body">
                            <h5 class="card-title">Uso de clase</h5>
                            <p class="card-text">
                                <%
                                    Calculo obj = new Calculo();
                                    int men = obj.menor(10, 20);
                                    int may = obj.mayor(10, 20);
                                    out.print("Menor: " + men + "<p>");
                                    out.print("Mayor: " + may + "<p>");
                                %>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card text-dark bg-info mb-3" style="max-width: 18rem;">
                        <div class="card-header">Invocación de clase Calculo</div>
                        <div class="card-body">
                            <h5 class="card-title">Uso de clase</h5>
                            <p class="card-text">
                                <%
                                    Utilidades utilidades = new Utilidades();
                                    int mayor = utilidades.mayor(3, 6, 1);
                                    int[] arreglo = {1, 2, 3, 4, 5};
                                    int total = utilidades.total(arreglo);
                                    out.println("El mayor es: " + mayor);
                                    out.println("La sumatoria es: " + total);
                                    %>
                            </p>
                        </div>
                    </div>
                </div>
                        
            </div>
        </div>
    </body>
</html>
