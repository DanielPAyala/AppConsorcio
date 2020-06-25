package service;

import beans.EmpleadoDTO;
import dao.DAOFactory;
import interfaces.EmpleadoDAO;

public class EmpleadoService {
	DAOFactory fabrica = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
	EmpleadoDAO objEmp = fabrica.getEmpleado();
	
	public EmpleadoDTO iniciarSesion(String login) {
		return objEmp.iniciarSesion(login);
	}

}
