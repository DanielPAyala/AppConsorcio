<jsp:include page="validar.jsp"></jsp:include>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registrar Producto</title>
</head>
<body>
<jsp:include page="encabezado.jsp"></jsp:include>
	<form action="ServletProducto?tipo=registrar" method="post">
		<table align="center">
			<tr>
				<td>Descripcion</td>
				<td><input type="text" name="txt_des"/></td>
			</tr>
			<tr>
				<td>Precio</td>
				<td><input type="text" name="txt_pre"/></td>
			</tr>
			<tr>
				<td>Stock</td>
				<td><input type="text" name="txt_stock"/></td>
			</tr>
			<tr>
				<td>Marca</td>
				<td>
					<select name="cbo_marca" style="width: 150px;">
						<option value="0">[Seleccione]</option>
						<option value="1">SANSUNG</option>
						<option value="2">HP</option>
						<option value="3">SONY</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="right" style="width: 150px;">
					<input type="submit" value="Registrar" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>