<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Nova Empresa Cadastrada</title>
</head>
<!--pega o request.setAttribute  -->
<body>
	<c:if test="${not empty empresa}">
		Empresa ${empresa} cadastrada com sucesso !
	</c:if>
	<c:if test="${empty empresa}">
		Nenhuma empresa cadastrada !
	</c:if>

</body>
</html>