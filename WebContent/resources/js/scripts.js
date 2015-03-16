function finalizaAgora(id) {
	$.post("finalizaTarefa", {
		'id' : id
	}, function(resposta) {
		// selecionando o elemento html atraves da
		// id e alterando o html dele
		$("#tarefa_" + id).html(resposta);
	});
}

function removeAgora(id) {
	$.post("removeTarefa", {
		'id' : id
	}, function() {
		$("#tarefa_" + id).closest("tr").hide();
	});
}
