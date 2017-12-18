function validar(correcao) {
    var cont = 0;
    var validCont = 0;
    var resposta = [];
    var segment = window.location.pathname;
    $(':checked').each(
            function (i) {
                validCont++;
                var p = $('p');
                resposta[i] = $(this).val();
                correcao[i] == resposta[i] ? ($(p[i]).css({color: 'green', fontSize: '20px'}), cont++) : $(p[i]).css({color: 'red', fontSize: '20px'});
            }
    );
    if (validCont === 10) {
        $.ajax({
            method: "POST",
            url: "../nota",
            data: {
                exercicio: segment,
                nota: cont * 10,
            },
        }).done(function () {
            $('input.botao:first').val('Fechar');
            $('input.botao:last').hide();
            $('input.botao:first').click(function () {
                window.close();
            });
        })
    } else {
        $("p").css('color', 'white');
        toggleError();
    }
}

function toggleError() {
    var x = document.getElementById("snackbar")
    x.html
    x.className = "show";
    setTimeout(function () {
        x.className = x.className.replace("show", "");
    }, 5000);
}