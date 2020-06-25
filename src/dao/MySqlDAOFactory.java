package dao;

import interfaces.EmpleadoDAO;
import interfaces.ProductoDAO;

public class MySqlDAOFactory extends DAOFactory {

	@Override
	public ProductoDAO getProducto() {
		return new MySqlProductoDAO();
	}

	@Override
	public EmpleadoDAO getEmpleado() {
		return new MySqlEmpleadoDAO();
	}

}
