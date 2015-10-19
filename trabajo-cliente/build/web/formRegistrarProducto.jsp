<%-- 
    Document   : formRegistrarProducto
    Created on : 18-oct-2015, 18:00:26
    Author     : Màx Kevin
--%>

<<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Nuevo producto</h1>
        <table>
            <form action="ControladorProducto">
                <tr>
                    <td>Descripción</td>
                    <td><input type="text" name="txtDescripcion"/></td>
                </tr>
                <tr>
                    <td>Precio</td>
                    <td><input type="text" name="txtPrecio"/></td>
                </tr>
                <tr>
                    <td>Stock</td>
                    <td><input type="text" name="txtStock"/></td>
                </tr>
                <tr>
                    <td><input type="submit" name="operacion" value="Registrar"/></td>
                    <td><input type="submit" name="operacion" value="Cancelar"/></td>
                </tr>
            </form>
        </table>

    </body>
</html>

