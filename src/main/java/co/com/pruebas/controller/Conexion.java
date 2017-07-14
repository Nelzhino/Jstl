package co.com.pruebas.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import co.com.pruebas.model.Producto;

public class Conexion {

	public static List<Producto> getProductos() {
		List<Producto> productos = new ArrayList<Producto>();
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/course", "root", "");
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery("select * from productos");

			while (resultSet.next()) {
				Producto producto = new Producto();
				producto.setId(resultSet.getInt("idproductos"));
				producto.setNombre(resultSet.getString("nombre"));
				producto.setSalario(resultSet.getFloat("valor"));
				producto.setPais(resultSet.getString("pais"));
				productos.add(producto);
			}
			resultSet.close();
			connection.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} catch (ClassNotFoundException e) {
			System.out.println(e.getMessage());
		}

		return productos;

	}
}
