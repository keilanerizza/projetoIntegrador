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

if(hash === "#permissaoNegada" || hash === "#dadosIncorretos") {
    $("#btnLogin").click();
    $("input[name=usuario]").focus();
}