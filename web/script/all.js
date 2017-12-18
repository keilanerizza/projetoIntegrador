function myToggleMenu() {
    var x = document.getElementById("navDemo");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else {
        x.className = x.className.replace(" w3-show", "");
    }
}

$(document).keydown(function (event) {
    if (event.keyCode == 27) {
        $('#id01').hide();
    }
});

var hash = window.location.hash;

if (hash === "#permissaoNegada" || hash === "#dadosIncorretos") {
    $("#btnLogin").click();
    $("input[name=usuario]").focus();
}

if (hash === "#dadosIncorretos") {
 $("#msgValidLogin").fadeIn();
} else {
    $("#msgValidLogin").fadeOut();
}

function validaUsuario(usuario) {
    var span = $('#spanUsuario');
    var regex1 = /^.{2,}$/;

    if (regex1.test(usuario)) {
        span.text("");
        return true;
    } else {
        span.hide();
        span.css('color', 'red');
        span.text("Nome de usuario incorreto !");
        span.fadeIn(1000);
        return false;
    }
}

function validaSenha(senha) {
    var span = $('#spanSenha');
    var regex2 = /^[A-Z]{2}\d{2}.{2,}$/;

    if (regex2.test(senha)) {
        span.text("");
        return true;
    } else {
        span.hide();
        span.css('color', 'red');
        span.text("A senha deve conter no minimo 6 caracteres, sendo pelo menos 2 letras maiusculas e 2 digitos !");
        span.fadeIn(1000);
        return false;
    }
}

$('#formLogin').submit(function () {
    var usuario = $('#usuario').val();
    var senha = $('#senha').val();

    var funcUsuario = validaUsuario(usuario);
    var funcSenha = validaSenha(senha);

    if (funcUsuario && funcSenha) {
        $.ajax({
            method: "POST",
            url: "../controle_login",
            data: {
                usuario: $("input[name=user]"),
                senha: $("input[name=senha]")
            },
        })
    }
    return false;
})
