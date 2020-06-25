package dao;

import interfaces.EmpleadoDAO;
import interfaces.ProductoDAO;

public abstract class DAOFactory {
	// posibles orígenes de datos
	public static final int MYSQL = 1;
	public static final int ORACLE = 2;
	public static final int DB2 = 3;
	public static final int SQLSERVER = 4;
	public static final int XML = 5;
	
	// registramos nuestros DAO's
	public abstract ProductoDAO getProducto();
	public abstract EmpleadoDAO getEmpleado();
	
	public static DAOFactory getDAOFactory(int whichFactory) {
		switch (whichFactory) {
		case MYSQL:
			return new MySqlDAOFactory();
		case ORACLE:
			return null;
		default:
			return null;
		}
	}
}
