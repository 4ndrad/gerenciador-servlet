<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!--  importa a classe -->
<%@ page
	import="java.util.List,br.com.alura.gerenciador.servlet.Empresa"%>
<!--  importa uma biblioteca -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:url value="/gerenciador/removeEmpresa?id=${empresa.id}"
	var="removeEmpresa" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Java Standard Taglib</title>
</head>
<body>

	<c:if test="${not empty empresa}">
		Empresa ${empresa} cadastrada com sucesso !
	</c:if>

	<h4>Lista de empresas:</h4>

	<ul>
		<c:forEach items="${empresas}" var="empresa">
			<li>${empresa.nome}- <fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy" /> 
				<a href="/gerenciador/mostraEmpresa?id=${empresa.id}">editar</a> 
				<a href="/gerenciador/removeEmpresa?id=${empresa.id}">remove</a>
			</li>
		</c:forEach>
	</ul>

</body>
</html>