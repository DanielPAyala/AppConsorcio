package service;

import java.util.List;

import beans.ProductoDTO;
import dao.DAOFactory;
import interfaces.ProductoDAO;

public class ProductoService {
	DAOFactory fabrica = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
	ProductoDAO objPro = fabrica.getProducto();
	
	public List<ProductoDTO> listaProducto(){
		return objPro.listarProductos();
	}

}
