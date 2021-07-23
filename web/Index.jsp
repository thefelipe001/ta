<%-- 
    Document   : Index
    Created on : 21/07/2021, 12:11:32 PM
    Author     : LENOVO
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <div>
            <h3>Personas</h3>
            <form action="Controlador" method="POST">
                <input type="submit" name="accion" value="Listar">
            </form>
        </div>
        <div>
            <table border="1">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>NOMBRES</th>
                        <th>CORREO</th>
                        <th>TELEFONO</th>
                        <th>ACCIONES</th>

                    </tr> 
                </thead>
                <tbody>
                    <c:forEach var="dato" items="${datos}">
                    <tr>
                        <td>${dato.getId()}</td>
                        <td>${dato.getNom()}</td>
                        <td>${dato.getCorreo()}</td>
                        <td>${dato.getTel()}</td>
                        <td>
                            <form>
                                <input type="submit" value="Editar">
                                <input type="submit" value="Eliminar">

                            </form>
                        </td>

                    </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </center>
    </body>
</html>
