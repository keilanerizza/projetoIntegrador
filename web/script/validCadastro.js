function myFunction() {
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

function validaNome(nome) {
    var span = $('#spanNome');
    var regex1 = /^[a-z]{2,}$/i;

    if (regex1.test(nome)) {
        span.text("");
        return true;
    } else {
        span.hide();
        span.text("Nome deve conter no minimo duas letras !");
        span.fadeIn(1000);
        return false;
    }
}

function validaUsuario(usuario) {
    var span = $('#spanUsuario');
    var regex1 = /^.{2,}$/;

    if (regex1.test(usuario)) {
        span.text("");
        return true;
    } else {
        span.hide();
        span.text("Nome de usuario deve conter no minimo dois caracteres !");
        span.fadeIn(1000);
        return false;
    }
}

function validaEmail(email) {
    var span = $('#spanEmail');
    var regex2 = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/;

    if (regex2.test(email)) {
        span.text("");
        return true;
    } else {
        span.hide();
        span.text("Email invalido !");
        span.fadeIn(1000);
        return false;
    }
}

function validaSenha(senha) {
    var span = $('#spanSenha');
    var regex2 = /[A-Z]{2,}\d{2,}.{2,}/;

    if (regex2.test(senha)) {
        span.text("");
        return true;
    } else {
        span.hide();
        span.text("A senha deve conter no minimo 6 caracteres, sendo pelo menos 2 letras maiusculas e 2 digitos !");
        span.fadeIn(1000);
        return false;
    }
}

function confirmaSenha(senha, cSenha) {
    var span = $('#spanCSenha');
    if (senha === cSenha) {
        return true;
    } else {
        span.hide();
        span.text("As senhas não são correspondentes !");
        span.fadeIn(1000);
        return false;
    }
}

$('#form1').submit(function () {
    var nome = $('#Pnome').val();
    var usuario = $('#nomeUsuario').val();
    var email = $('#email').val();
    var senha = $('#senha').val();
    var cSenha = $('#cSenha').val();

    var funcNome = validaNome(nome);
    var funcUsuario = validaUsuario(usuario);
    var funcEmail = validaEmail(email);
    var funcSenha = validaSenha(senha);
    var funcConfirm = confirmaSenha(senha, cSenha);

    if (funcNome && funcUsuario && funcEmail && funcSenha && funcConfirm) {
        $.ajax({
            method: "POST",
            url: "../insere",
            data: {
                nome: $("input[name=nome]"),
                user: $("input[name=user]"),
                email: $("input[name=email]"),
                senha: $("input[name=senha]")
            },
        })
    }


    return false;

})