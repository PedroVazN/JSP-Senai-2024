document.addEventListener('DOMContentLoaded', function(){
	//Manipular o formulário de aluguel
	var form = document.getElementById('alugar-form');
	var select = document.getElementById('filme-select');
	var alugadosList = document.getElementById('alugados');

	form.addEventListener('submit', function(event) {
		event.preventDefault();
		var filmeSelecionado = select.value;
		alugadosList.innerHTML += '<li>' + filmeSelecionado + '</li>';
		
	});
});