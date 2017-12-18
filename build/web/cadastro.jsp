<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="css/w3.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="fonts/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="fonts/roboto/roboto.css">
        <link rel="icon" href="imagens/rage-icon.ico" type="image/x-icon">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <title>RAGE NET Cursos Online</title>
    </head>
    <body>

        <!-- Navbar -->
        <div class="w3-top">
            <div class="w3-bar w3-black w3-card">
                <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars fa-2x"></i></a>
                <a href="#" class="w3-bar-item"><img src="imagens/logo.png" style="width: 50px;"></a>
                <a href="index.html" class="w3-bar-item w3-button w3-padding-24 w3-hide-small">Início</a>
                <a href="#certificados" class="w3-bar-item w3-button w3-padding-24 w3-hide-small">Certificados</a>
                <a href="#contact" class="w3-bar-item w3-button w3-padding-24 w3-hide-small">Contato</a>
                <a href="#" onclick="document.getElementById('id01').style.display = 'block'" class="w3-bar-item w3-hover-red w3-right w3-button w3-padding-24 w3-hide-small">Login</a>
            </div>
        </div>


        <!-- Navbar on small screens -->
        <div id="navDemo" class="w3-bar-block w3-black w3-hide w3-hide-large w3-hide-medium w3-top" style="margin-top:60px">
            <a href="index.html" class="w3-bar-item w3-button w3-padding-24">Início</a>
            <a href="#tour" class="w3-bar-item w3-button w3-padding-24">Apresentação</a>
            <a href="#contact" class="w3-bar-item w3-button w3-padding-24">Cursos</a>
            <a href="#" onclick="document.getElementById('id01').style.display = 'block'" class="w3-bar-item w3-button w3-padding-24">Login</a>
            <a href="#" class="w3-bar-item w3-button w3-padding-24">Contato</a>

        </div>

        <!--Modal-Login-->
        <div class="w3-container" >
            <div id="id01" class="w3-modal" >
                <div class="w3-modal-content w3-animate-top" style="width:350px;">
                    <header class="w3-container w3-black"> 
                        <h2>Login</h2>
                    </header>
                    <span onclick="document.getElementById('id01').style.display = 'none'" class="w3-button w3-black w3-hover-red w3-display-topright">&times;</span>
                    <form class="w3-container" action="/action_page.php">
                        <p>      
                            <label class="w3-text-black"><b>Usuário:</b></label>
                            <input class="w3-input w3-border w3-light-gray" name="usuario" type="text"></p>
                        <p>      
                            <label class="w3-text-black"><b>Senha:</b></label>
                            <input class="w3-input w3-border w3-light-gray" name="senha" type="password"></p>
                        <p>
                        <p class="w3-center">Não possui um login? <a href="cadastro.jsp">Cadastre-se!<a/></p>
                        <div class="w3-center">
                            <button class="w3-btn w3-red">Login</button></p>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!---Conteudo---> 
        <div class="w3-container w3-content w3-padding-64" style="max-width:800px" id="band">
            <h2 class="w3-wide" style="visibility:hidden;">Cadastre-se e tenha acesso a todo conteúdo.</h2>
            <h2 class="w3-wide">Cadastre-se e tenha acesso a todo conteúdo.</h2>

            <form class="w3-container w3-card-4 w3-padding-16 w3-white" action="/action_page.php" target="_blank">
                <div class="w3-section">      
                    <label>Name</label>
                    <input class="w3-input" type="text" name="Name" required="">
                </div>
                <div class="w3-section">      
                    <label>Email</label>
                    <input class="w3-input" type="text" name="Email" required="">
                </div>
                <div class="w3-section">      
                    <label>Message</label>
                    <input class="w3-input" type="text" name="Message" required="">
                </div>  
                <input class="w3-check" type="checkbox" checked="" name="Like">
                <label>I Like it!</label>
                <button type="submit" class="w3-button w3-right w3-theme">Send</button>
            </form>
        </div>

        <!-- Contato -->
        <div class="w3-black">
            <div class="w3-container w3-content w3-padding-64" style="max-width:800px" id="contact">
                <h2 class="w3-wide w3-center">CONTATO</h2>
                <p class="w3-opacity w3-center"><i>Gostaria de dar uma sugestão? Entre em contato.</i></p>
                <div class="w3-row w3-padding-32">
                    <div class="w3-col m6 w3-large w3-margin-bottom">
                        <a href="https://goo.gl/maps/i67KiMp56D32" target="_blank" style="text-decoration:none;"><i class="fa fa-map-marker" style="width:30px"></i> Uberlândia, MG</a><br>
                        <i class="fa fa-envelope" style="width:30px"> </i> Email: ragepontonet@gmail.com<br>
                    </div>
                    <div class="w3-col m6">
                        <form action="/action_page.php" target="_blank">
                            <div class="w3-row-padding" style="margin:0 -16px 8px -16px">
                                <div class="w3-half">
                                    <input class="w3-input w3-border" type="text" placeholder="Nome" required name="nome">
                                </div>
                                <div class="w3-half">
                                    <input class="w3-input w3-border" type="text" placeholder="Email" required name="email">
                                </div>
                            </div>
                            <input class="w3-input w3-border" type="text" placeholder="Mensagem" required name="mensagem">
                            <button class="w3-button w3-black w3-section w3-right" type="submit">Enviar</button>
                        </form>
                    </div>
                </div>
            </div>




            <!-- Footer -->
            <footer class="w3-container w3-padding-64 w3-center w3-opacity w3-light-grey w3-xlarge">
                <i class="fa fa-facebook-official w3-hover-opacity"></i>
                <i class="fa fa-instagram w3-hover-opacity"></i>
                <i class="fa fa-snapchat w3-hover-opacity"></i>
                <i class="fa fa-pinterest-p w3-hover-opacity"></i>
                <i class="fa fa-twitter w3-hover-opacity"></i>
                <i class="fa fa-linkedin w3-hover-opacity"></i>
                <p class="w3-medium">Todos os direitos reservados</p>
            </footer>



            <script>
                // Used to toggle the menu on small screens when clicking on the menu button
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



            </script>

    </body>
</head>
</html>