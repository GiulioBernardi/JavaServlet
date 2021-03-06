<%@page import="java.util.List"%>
<%@page import="br.com.gerenciador.servlet.Empresa"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Java Standard Taglib</title>
</head>
<body>

	<c:if test="${ not empty empresa }">
		Empresa ${ empresa } cadastrada com sucesso!
	</c:if>
	<br>
	
	Lista de empresas cadastradas:

	<ul>
		<c:forEach items="${empresas}" var="empresa">
			<li>
				${ empresa.nome }- <fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy" />
				<a href="removeEmpresa?id=${empresa.id}">Remover</a>
				<a href="editaEmpresa?id=${empresa.id}">Editar</a>
				
			</li>
		
		</c:forEach>
		
	</ul>
</body>
</html>