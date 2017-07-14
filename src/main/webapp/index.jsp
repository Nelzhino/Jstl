<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page import="co.com.pruebas.controller.Conexion"%>
<%
	pageContext.setAttribute("productos", Conexion.getProductos());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pruebas Jstl</title>
</head>
<body>
	<div class="container">
		<h2>Pruebas con JSP</h2>
		<p>Listado de Productos con JSTL</p>
		<c:set var="salary" scope="session" value="${2000*2}" />
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Consecutivo</th>
					<th>Nombre del producto</th>
					<th>Valor</th>
					<th>Descuento (LB)</th>
					<th>Pais</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${productos}" var="producto">
					<tr>
						<td>${producto.id}</td>
						<td>${producto.nombre}</td>
						<td><fmt:formatNumber type="number" value="${producto.valor}"></fmt:formatNumber></td>
						<td><c:choose>
								<c:when test="${producto.valor>2000}">
									<span style="color: red"><fmt:formatNumber type="number"
											value="${producto.valor*0.5}"></fmt:formatNumber></span>
								</c:when>
								<c:when test="${producto.valor > 1500 && producto.valor <= 2000}">
									<span style="color: green"><fmt:formatNumber type="number"
											value="${producto.valor*0.15}"></fmt:formatNumber></span>
								</c:when>
								<c:otherwise>
									No Aplica
								</c:otherwise>
							</c:choose></td>
						<td>${producto.pais}</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
</body>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>