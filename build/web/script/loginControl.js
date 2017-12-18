/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$("#logout").click(function(){
    $.ajax({
            method: "POST",
            url: "logout",
    }).done(function(){
        window.location.href = "index.html";
    })
});