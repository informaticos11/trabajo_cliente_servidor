<%-- 
    Document   : vistaRegistrarProducto
    Created on : 18-oct-2015, 18:02:57
    Author     : Màx Kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="app.entidad.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de producto</h1>
        <%
            String error = (String) request.getAttribute("error");
            if (error != null) {
                out.println("No se pudo registrar producto debido "
                        + "al siguiente error:" + error);
            } else {
                Producto p = (Producto) request.getAttribute("producto");
                out.println(p.getDescripcion() + "registrado exitosamente");
            }
        %>
        

    </body>
</html>
