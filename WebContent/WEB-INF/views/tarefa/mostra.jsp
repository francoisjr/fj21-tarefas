<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="caelum"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mostra Tarefa</title>

<link type="text/css" href="resources/css/jquery-ui.css" rel="stylesheet">
<script type="text/javascript" src="resources/js/jquery.js"></script>
<script type="text/javascript" src="resources/js/jquery-ui.js"></script>
</head>
<body>

	<h3>Altera tarefa - ${tarefa.id}</h3>

	<form action="alteraTarefa" method="post">
		<input type="hidden" name="id" value="${tarefa.id}" /> 
		<span>Descrição:</span>
		<br />
		<textarea name="descricao" cols="100" rows="5">
			${tarefa.descricao}
		</textarea>
		<br /> 
		<span>Finalizado?</span> 
		<input type="checkbox"
			name="finalizado" value="true" ${tarefa.finalizado? 'checked' : '' } />
		<br /> 
		<span>Data de Finalização:</span> 
		<br /> 
		
		<fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="dd/MM/yyyy" 
			var="dataFormatada"/>			
		<caelum:mostraData id="dataFinalizacao" val="${dataFormatada}"/>
		
		<br /> 
		<input type="submit" value="Alterar" />
	</form>

</body>
</html>