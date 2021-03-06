/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.dao;

import app.entidad.Producto;
import base.datos.BaseDatos;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Màx Kevin
 */
public class ProductoDao {
    private Producto producto;
    
    public ProductoDao(){
        
    }
    
    public ProductoDao(Producto p){
        this.producto=p;
    }
    
    public void registrar() throws Exception{
        BaseDatos.conectar();
        String sql="INSERT INTO Producto (descripcion,precio,stock,estado) ";
        sql+="VALUES('"+producto.getDescripcion()+"',";
        sql+=producto.getPrecio()+","+producto.getStock()+",1)";
        BaseDatos.ejecutar(sql);
        BaseDatos.desconectar();
    }
    
    public void eliminar() throws Exception{
        
    }
    
    public void modificar() throws Exception {
        
    }
    
    public void buscarPorID(int id) throws Exception {
        
    }
    
    public ArrayList listar() throws Exception {
        BaseDatos.conectar();
        String sql="SELECT * FROM Producto WHERE estado=1 ";        
        ResultSet rs = BaseDatos.consultar(sql);
        ArrayList<Producto> productos = new ArrayList<Producto>();
        while(rs.next()){
            Producto temp= new Producto(rs.getInt("id"),
                    rs.getString("descripcion"),
                    rs.getDouble("precio"),
                    rs.getDouble("stock"));
            productos.add(temp);
        }
        BaseDatos.desconectar();
        return productos;        
    }

    public Producto getProducto() {
        return producto;
    }

    public void setProducto(Producto producto) {
        this.producto = producto;
    }
}
