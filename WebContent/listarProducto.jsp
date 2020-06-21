<%@page import="beans.ProductoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Productos</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>CODIGO</th>
				<th>DESCRIPCION</th>
				<th>PRECIO</th>
				<th>STOCK</th>
				<th>MARCA</th>
				<th colspan="2">ACCCIONES</th>
			</tr>
		</thead>
		<tbody>
			<%
			ArrayList<ProductoDTO> lista = (ArrayList<ProductoDTO>)request.getAttribute("data");
			if(lista!=null){
				for(ProductoDTO x: lista){
			%>
			<tr>
				<td><%=x.getCodigo() %></td>
				<td><%=x.getDescripcion() %></td>
				<td><%=x.getPrecio() %></td>
				<td><%=x.getStock() %></td>
				<td><%=x.getNomMarca() %></td>
				<td align="center"><a href="ServletProducto?tipo=buscar&cod=<%=x.getCodigo() %>">Editar</a></td>
				<td align="center"><a href="ServletProducto?tipo=eliminar&cod=<%=x.getCodigo() %>">Eliminar</a></td>
			</tr>
			<%
				}
			}
			%>
		</tbody>
	</table>
</body>
</html>