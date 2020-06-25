<%
	if(session.getAttribute("datos") == null){
		pageContext.forward("ServletEmpleado?tipo=cerrarSesion");
	}
%>