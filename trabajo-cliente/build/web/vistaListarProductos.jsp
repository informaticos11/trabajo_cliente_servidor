<%-- 
    Document   : vistaListarProductos
    Created on : 18-oct-2015, 18:02:02
    Author     : Màx Kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,app.entidad.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <h1>Listado de productos</h1>
        <table>
            <%
                ArrayList<Producto> productos = (ArrayList) request.getAttribute("productos");
                if (productos != null) {
                    for (Producto p : productos) {
                        out.println("<tr> <td>" + p.getDescripcion() + "</td>"
                                + "<td>" + p.getPrecio() + "</td>"
                                + "<td> " + p.getStock() + " </td> </tr>");
                    }
                } else {
                    out.println("No hay datos de productos");
                }
            %>
        </table>
    </body>
</html>
