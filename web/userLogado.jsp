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

        <title>RAGE NET</title>
    </head>
    <body class="w3-light-grey">

        <%String usuario = (String) session.getAttribute("usuLogado");%>
        <%String AOC_exercicio1 = (String) session.getAttribute("/projetoIntegrador/exercicios/AOC_exercicio1.html");%>
        <%String FWD_exercicio1 = (String) session.getAttribute("/projetoIntegrador/exercicios/FWD_exercicio1.html");%>
        <%String ING_exercicio1 = (String) session.getAttribute("/projetoIntegrador/exercicios/ING_exercicio1.html");%>
        <%String LP_exercicio1 = (String) session.getAttribute("/projetoIntegrador/exercicios/LP_exercicio1.html");%>
        <%String MC_Exercicio1 = (String) session.getAttribute("/projetoIntegrador/exercicios/MC_Exercicio1.html");%>
        <%String SO_exercicio1 = (String) session.getAttribute("/projetoIntegrador/exercicios/SO_exercicio1.html");%>
        <!-- Navbar -->
        <div class="w3-top">
            <div class="w3-bar w3-black w3-card">
                <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars fa-2x"></i></a>
                <a href="#" class="w3-bar-item"><img src="imagens/logo.png" style="width: 50px;"></a>
                <a href="#" class="w3-bar-item w3-button w3-padding-24 w3-hide-small">Início</a>
                <a href="#certificados" class="w3-bar-item w3-button w3-padding-24 w3-hide-small">Certificados</a>
                <a href="#contact" class="w3-bar-item w3-button w3-padding-24 w3-hide-small">Contato</a>
                <a href="#" onclick="document.getElementById('id01').style.display = 'block'" class="w3-bar-item w3-hover-red w3-right w3-button w3-padding-24 w3-hide-small">Sair</a>
            </div>
        </div>


        <!-- Navbar on small screens -->
        <div id="navDemo" class="w3-bar-block w3-black w3-hide w3-hide-large w3-hide-medium w3-top" style="margin-top:60px">
            <a href="#band" class="w3-bar-item w3-button w3-padding-24">Início</a>
            <a href="#tour" class="w3-bar-item w3-button w3-padding-24">Apresentação</a>
            <a href="#contact" class="w3-bar-item w3-button w3-padding-24">Cursos</a>
            <a href="#" onclick="document.getElementById('id01').style.display = 'block'" class="w3-bar-item w3-button w3-padding-24">Login</a>
            <a href="#" class="w3-bar-item w3-button w3-padding-24">Contato</a>
        </div>

        <!-- Page Container -->
        <div class="w3-content w3-margin-top w3-padding-64" style="max-width:1400px;">	

            <!-- The Grid -->
            <div class="w3-row-padding">

                <!-- Left Column -->
                <div class="w3-third">

                    <div class="w3-white w3-text-grey w3-card-4">
                        <div class="w3-container w3-card w3-white w3-margin-bottom">
                            <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-user-circle-o fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i><%= usuario%></h2>
                        </div>
                        <div class="w3-container">
                            <p class="w3-large"><b><i class="fa fa-asterisk fa-fw w3-margin-right w3-text-teal"></i>Cursos em andamento</b></p>
                            <p>Sistemas Operacionais</p>
                            <div class="w3-light-grey w3-round-xlarge w3-small">
                                <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:<%=SO_exercicio1 %>%"><%= SO_exercicio1%>%</div>
                            </div>
                            
                            <p>Lógica de programação</p>
                            <div class="w3-light-grey w3-round-xlarge w3-small">
                                <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:<%=LP_exercicio1 %>%"><%= LP_exercicio1%>%</div>
                            </div>
                            
                            <p>Inglês Instrumental</p>
                            <div class="w3-light-grey w3-round-xlarge w3-small">
                                <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:<%=ING_exercicio1 %>%"><%=ING_exercicio1%>%</div>
                            </div>
                            
                            <p>Fundamentos de Web Design</p>
                            <div class="w3-light-grey w3-round-xlarge w3-small">
                                <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:<%=FWD_exercicio1%>%"><%= FWD_exercicio1%>%</div>
                            </div>
                            
                            <p>Metodologia Científica</p>
                            <div class="w3-light-grey w3-round-xlarge w3-small">
                                <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:<%=MC_Exercicio1%>%"><%=MC_Exercicio1%>%</div>
                            </div>
                            
                            <p>Arquitetura e Organização de Computadores</p>
                            <div class="w3-light-grey w3-round-xlarge w3-small">
                                <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:<%=AOC_exercicio1%>%"><%= AOC_exercicio1%>%</div>
                            </div>
                            <br>

                            <!---Certificados--->

                            <div id="certificados" style="visibility:hidden;"></div>

                            <p class="w3-large w3-text-theme"><b><i class="fa fa-globe fa-fw w3-margin-right w3-text-deep-orange"></i>Certificados</b></p>
                            <p>Arquitetura e organização de computadores</p>
                            <div class="w3-light-grey w3-round-xlarge">
                                <a href="certificado.html" class="w3-deep-orange w3-button w3-padding-12 w3-hide-small">Emitir Certificado</a>
                            </div>
                            <p>Metodologia Científica</p>
                            <div class="w3-light-grey w3-round-xlarge">
                                <a href="" class="w3-deep-orange w3-button w3-padding-12 w3-hide-small">Emitir Certificado</a>
                            </div>
                            <br>
                        </div>
                    </div>
                    <br>


                    <!-- End Left Column -->
                </div>

                <!-- Right Column -->
                <div class="w3-twothird">


                    <div  class="w3-container w3-card w3-white w3-margin-bottom">
                        <h1><button onclick="myFunction('aoc')" class="w3-button w3-hover-white w3-block w3-white w3-center">Arquitetura e organização de computadores</button></h1>
                        <div id="aoc" class=" w3-hide">
                            <div class="w3-container w3-half">
                                <h5 class="w3-opacity"><b>Aula 1</b></h5>
                                <h1><i class="fa fa-youtube-play fa-fw w3-margin-right w3-text-red"></i><a href="exercicios/AOC_exercicio1.html" target="_blank"><i class="fa fa-book fa-fw w3-margin-right w3-text-dark-gray"></a></i><i class="fa fa-certificate w3-margin-right w3-text-dark-gray" aria-hidden="true"></i></h1>
                                <p>Nesta primeira aula você aprenderá sobre as funções básicas da interação entre um sistema operacional e um computador.</p>
                                <hr>
                            </div>
                            <div class="w3-container w3-half">
                                <h5 class="w3-opacity"><b>Aula 2</b></h5>
                                <h1><i class="fa fa-youtube-play fa-fw w3-margin-right w3-text-red"></i><a href="exercicios/AOC_exercicio2.html" target="_blank"><i class="fa fa-book fa-fw w3-margin-right w3-text-dark-gray"></a></i><i class="fa fa-certificate w3-margin-right w3-text-dark-gray" aria-hidden="true"></i></h1>
                                <p>Ao finalizar esta aula você estará pronto para realizar os exercícios e poderá emitir seu certificado.</p>
                                <hr>
                            </div>
                        </div>
                    </div>
                    
                     <div  class="w3-container w3-card w3-white w3-margin-bottom">
                        <h1><button onclick="myFunction('so')" class="w3-button w3-hover-white w3-block w3-white w3-center">Sistemas Operacionais</button></h1>
                        <div id="so" class=" w3-hide">
                            <div class="w3-container w3-half">
                                <h5 class="w3-opacity"><b>Aula 1</b></h5>
                                <h1><a href="videoAulas/aocAula1.html" target="_blank"><i class="fa fa-youtube-play fa-fw w3-margin-right w3-text-red"></a></i><a href="exercicios/SO_exercicio2.html" target="_blank"></i><i class="fa fa-book fa-fw w3-margin-right w3-text-dark-gray"></a></i><i class="fa fa-certificate w3-margin-right w3-text-dark-gray" aria-hidden="true"></i></h1>
                                <p>Nesta primeira aula você aprenderá sobre as funções básicas da interação entre um sistema operacional e um computador.</p>
                                <hr>
                            </div>
                            <div class="w3-container w3-half">
                                <h5 class="w3-opacity"><b>Aula 2</b></h5>
                                <h1><i class="fa fa-youtube-play fa-fw w3-margin-right w3-text-red"></i><a href="exercicios/SO_exercicio2.html" target="_blank"><i class="fa fa-book fa-fw w3-margin-right w3-text-dark-gray"></a></i><i class="fa fa-certificate w3-margin-right w3-text-dark-gray" aria-hidden="true"></i></h1>
                                <p>Ao finalizar esta aula você estará pronto para realizar os exercícios e poderá emitir seu certificado.</p>
                                <hr>
                            </div>
                        </div>
                    </div>
                    

                    <div  class="w3-container w3-card w3-white w3-margin-bottom">
                        <h1><button onclick="myFunction('logica')" class="w3-button w3-hover-white w3-block w3-white w3-center">Lógica de programação</button></h1>
                        <div id="logica" class=" w3-hide">
                            <div class="w3-container w3-half">
                                <h5 class="w3-opacity"><b>Aula 1</b></h5>
                                <h1><i class="fa fa-youtube-play fa-fw w3-margin-right w3-text-red"></i><a href="exercicios/LP_exercicio1.html" target="_blank"><i class="fa fa-book fa-fw w3-margin-right w3-text-dark-gray"></a></i><i class="fa fa-certificate w3-margin-right w3-text-dark-gray" aria-hidden="true"></i></h1>
                                <p>Nesta primeira aula você aprenderá sobre as funções básicas da interação entre um sistema operacional e um computador.</p>
                                <hr>
                            </div>
                            <div class="w3-container w3-half">
                                <h5 class="w3-opacity"><b>Aula 2</b></h5>
                                <h1><i class="fa fa-youtube-play fa-fw w3-margin-right w3-text-red"></i><a href="exercicios/LP_Exercicio2.html" target="_blank"><i class="fa fa-book fa-fw w3-margin-right w3-text-dark-gray"></a></i><i class="fa fa-certificate w3-margin-right w3-text-dark-gray" aria-hidden="true"></i></h1>
                                <p>Ao finalizar esta aula você estará pronto para realizar os exercícios e poderá emitir seu certificado.</p>
                                <hr>
                            </div>
                        </div>
                    </div>
                    
                     <div  class="w3-container w3-card w3-white w3-margin-bottom">
                        <h1><button onclick="myFunction('metodologia')" class="w3-button w3-hover-white w3-block w3-white w3-center">Metodologia Científica</button></h1>
                        <div id="metodologia" class=" w3-hide">
                            <div class="w3-container w3-half">
                                <h5 class="w3-opacity"><b>Aula 1</b></h5>
                                <h1><i class="fa fa-youtube-play fa-fw w3-margin-right w3-text-red"></i><a href="exercicios/MC_exercicio1.html" target="_blank"><i class="fa fa-book fa-fw w3-margin-right w3-text-dark-gray"></a></i><i class="fa fa-certificate w3-margin-right w3-text-dark-gray" aria-hidden="true"></i></h1>
                                <p>Nesta primeira aula você aprenderá sobre as funções básicas da interação entre um sistema operacional e um computador.</p>
                                <hr>
                            </div>
                            <div class="w3-container w3-half">
                                <h5 class="w3-opacity"><b>Aula 2</b></h5>
                                <h1><i class="fa fa-youtube-play fa-fw w3-margin-right w3-text-red"></i><a href="exercicios/LP_Exercicio2.html" target="_blank"><i class="fa fa-book fa-fw w3-margin-right w3-text-dark-gray"></a></i><i class="fa fa-certificate w3-margin-right w3-text-dark-gray" aria-hidden="true"></i></h1>
                                <p>Ao finalizar esta aula você estará pronto para realizar os exercícios e poderá emitir seu certificado.</p>
                                <hr>
                            </div>
                        </div>
                    </div>
                    
                     <div  class="w3-container w3-card w3-white w3-margin-bottom">
                        <h1><button onclick="myFunction('ingles')" class="w3-button w3-hover-white w3-block w3-white w3-center">Inglês Instrumental</button></h1>
                        <div id="ingles" class=" w3-hide">
                            <div class="w3-container w3-half">
                                <h5 class="w3-opacity"><b>Aula 1</b></h5>
                                <h1><i class="fa fa-youtube-play fa-fw w3-margin-right w3-text-red"></i><a href="exercicios/ING_exercicio1.html" target="_blank"><i class="fa fa-book fa-fw w3-margin-right w3-text-dark-gray"></a></i><i class="fa fa-certificate w3-margin-right w3-text-dark-gray" aria-hidden="true"></i></h1>
                                <p>Nesta primeira aula você aprenderá sobre as funções básicas da interação entre um sistema operacional e um computador.</p>
                                <hr>
                            </div>
                            <div class="w3-container w3-half">
                                <h5 class="w3-opacity"><b>Aula 2</b></h5>
                                <h1><i class="fa fa-youtube-play fa-fw w3-margin-right w3-text-red"></i><a href="exercicios/ING_exercicio2.html" target="_blank"><i class="fa fa-book fa-fw w3-margin-right w3-text-dark-gray"></a></i><i class="fa fa-certificate w3-margin-right w3-text-dark-gray" aria-hidden="true"></i></h1>
                                <p>Ao finalizar esta aula você estará pronto para realizar os exercícios e poderá emitir seu certificado.</p>
                                <hr>
                            </div>
                        </div>
                     </div>
                    
                     <div  class="w3-container w3-card w3-white w3-margin-bottom">
                        <h1><button onclick="myFunction('fundamentos')" class="w3-button w3-hover-white w3-block w3-white w3-center">Fundamentos de Web Design</i></button></h1>
                        <div id="fundamentos" class=" w3-hide">
                            <div class="w3-container w3-half">
                                <h5 class="w3-opacity"><b>Aula 1</b></h5>
                                <h1><i class="fa fa-youtube-play fa-fw w3-margin-right w3-text-red"></i><a href="exercicios/FWD_exercicio1.html" target="_blank"><i class="fa fa-book fa-fw w3-margin-right w3-text-dark-gray"></a></i><i class="fa fa-certificate w3-margin-right w3-text-dark-gray" aria-hidden="true"></i></h1>
                                <p>Nesta primeira aula você aprenderá sobre as funções básicas da interação entre um sistema operacional e um computador.</p>
                                <hr>
                            </div>
                            <div class="w3-container w3-half">
                                <h5 class="w3-opacity"><b>Aula 2</b></h5>
                                <h1><i class="fa fa-youtube-play fa-fw w3-margin-right w3-text-red"></i><a href="exercicios/FWD_exercicio2.html" target="_blank"><i class="fa fa-book fa-fw w3-margin-right w3-text-dark-gray"></a></i><i class="fa fa-certificate w3-margin-right w3-text-dark-gray" aria-hidden="true"></i></h1>
                                <p>Ao finalizar esta aula você estará pronto para realizar os exercícios e poderá emitir seu certificado.</p>
                                <hr>
                            </div>
                        </div>
                     </div>
                    
                    
                        
                    </div>
                    
                <!-- End Right Column -->
            </div>

            <!-- End Grid -->
        </div>

        <!-- End Page Container -->
    </div>

    <!-- Footer -->
    <footer class="w3-container w3-padding-64 w3-center w3-opacity w3-black w3-xlarge">
        <i class="fa fa-facebook-official w3-hover-opacity"></i>
        <i class="fa fa-instagram w3-hover-opacity"></i>
        <i class="fa fa-snapchat w3-hover-opacity"></i>
        <i class="fa fa-pinterest-p w3-hover-opacity"></i>
        <i class="fa fa-twitter w3-hover-opacity"></i>
        <i class="fa fa-linkedin w3-hover-opacity"></i>
        <p class="w3-medium">Todos os direitos reservados</p>
    </footer>

    <script>
        function myFunction(id) {
            var x = document.getElementById(id);
            if (x.className.indexOf("w3-show") == -1) {
                x.className += " w3-show";
            } else {
                x.className = x.className.replace(" w3-show", "");
            }
        }
        
        
    </script>
</body>
</html>