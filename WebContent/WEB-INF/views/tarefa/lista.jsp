<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista de Tarefas</title>
<script type="text/javascript" src="resources/js/jquery.js"></script>
<script type="text/javascript" src="resources/js/scripts.js"></script>
<link type="text/css" href="resources/css/style.css" rel="stylesheet" />

</head>
<body>
	<a href="novaTarefa">Criar nova tarefa</a>
	<br />
	<br />

	<table>
		<tr>
			<th>ID</th>
			<th>Descrição</th>
			<th>Finalizado?</th>
			<th>Data de finalização</th>
		</tr>
		<c:forEach items="${tarefas}" var="tarefa">
			
			<tr id="tarefa_${tarefa.id}" >
				<td>${tarefa.id}</td>
				<td>${tarefa.descricao}</td>
				
				<c:if test="${tarefa.finalizado eq true}">
					<td>Finalizado</td>
				</c:if>
				
				<c:if test="${tarefa.finalizado eq false}">

					<td>
						<a href="#" onclick="finalizaAgora(${tarefa.id})">
					 		Finalizar
					 	</a>
					 </td>

				</c:if>
				
				<td>
					<fmt:formatDate 
						value="${tarefa.dataFinalizacao.time}"
						pattern="dd/MM/yyyy" />
				</td>
					
				<td><a href="removeTarefa?id=${tarefa.id}">Remover</a></td>
				<td><a href="mostraTarefa?id=${tarefa.id}">Alterar</a></td>
			</tr>
		</c:forEach>

	</table>

</body>
</html>