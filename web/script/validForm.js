function validar(correcao) {
	var cont = 0;
	var resposta = [];
        var segment = window.location.pathname;
	$(':checked').each(
		function(i) {
			var p = $('p');
			resposta[i] = $(this).val();
			correcao[i] == resposta[i] ? ( $(p[i]).css('color', 'green'), cont++) : $(p[i]).css('color', 'red');
		}
	);
        $.ajax({
            method: "POST",
            url: "nota",
            data: {
                exercicio: segment,
                nota: cont * 10,
            },
        })
}