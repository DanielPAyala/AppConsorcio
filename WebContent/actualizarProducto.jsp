<jsp:include page="validar.jsp"></jsp:include>
<%@page import="beans.ProductoDTO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Actualizar Producto</title>
</head>
<body>
<jsp:include page="encabezado.jsp"></jsp:include>
<%
	ProductoDTO obj = (ProductoDTO)request.getAttribute("Producto");
%>
	<form action="ServletProducto?tipo=actualizar" method="post">
		<input type="hidden" name="txt_cod" value="${requestScope.Producto.codigo}"/>
		<table align="center">
			<tr>
				<td>Descripcion</td>
				<td><input type="text" name="txt_des" value="${requestScope.Producto.descripcion}"/></td>
			</tr>
			<tr>
				<td>Precio</td>
				<td><input type="text" name="txt_pre" value="${requestScope.Producto.precio}"/></td>
			</tr>
			<tr>
				<td>Stock</td>
				<td><input type="text" name="txt_stock" value="${requestScope.Producto.stock}"/></td>
			</tr>
			<tr>
				<td>Marca</td>
				<td>
					<select name="cbo_marca" style="width: 150px;">
					<%
						String marca[] = {"[Seleccione]", "SANSUNG", "HP", "SONY"};
						String estado = "";
						for(int i=0; i<marca.length; i++){
							if(obj.getCodMarca() == i){
								estado = "selected";
							}
							else {
								estado = "";
							}
					%>
						<option value="<%=i %>" <%=estado %>><%=marca[i] %></option>
					<%
						}
					%>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="right" style="width: 150px;">
					<input type="submit" value="Actualizar" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>