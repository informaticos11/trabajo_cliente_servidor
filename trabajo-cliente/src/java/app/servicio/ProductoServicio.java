/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.servicio;

import app.dao.ProductoDao;
import app.entidad.Producto;
import java.util.ArrayList;

/**
 *
 * @author Màx Kevin
 */
public class ProductoServicio {
            
    public void registrarProducto(Producto p) throws Exception{
        if(p==null) throw new Exception("El producto está vacío");
        ProductoDao dao= new ProductoDao(p);
        dao.registrar();        
    }
    
    public ArrayList listarProductos() throws Exception{
        return new ProductoDao().listar();
    }
}
