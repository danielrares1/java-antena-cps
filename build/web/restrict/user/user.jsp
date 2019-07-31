<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

        <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
        <script src="https://apis.google.com/js/platform.js" async defer></script>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Fjalla+One&display=swap" rel="stylesheet">
        
        <!-- Bootstrap CSS -->
        <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/res/styles/styles_profile.css">
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Perfil - Antena CPS</title>
        <link rel="shortcut icon" href="<%=request.getContextPath()%>/res/images/favicon.ico" />
    </head>
    <body>
        <div class="background" id="border">
            <app-profile-navbar style="background-color: transparent"></app-profile-navbar>
            <div class="container" style="margin-top: 250px">
              <div class="row">
                <div class="col-md-4">
                  <div class="row" id="icons" style="margin-top: 120px; margin-left: -15px; margin-right: -50px;">
                    <div class="col-sm-3" id="icon"><a target="__blank"><img src="<%= request.getContextPath()%>/res/images/profile/iconAwards.png" alt=""></a>
                      <h6 style="margin-left: 20%; color: #ffff;">Prêmios</h6>
                    </div>
                    <div class="col-sm-3" id="icon"><a href="#/agenda"><img src="<%= request.getContextPath()%>/res/images/profile/iconEvent.png" alt=""></a>
                      <h6 style="margin-left: 20%; color: #ffff;">Eventos</h6>
                    </div>
                    <div class="col-sm-3" id="icon"><a target="_blank"><img src="<%= request.getContextPath()%>/res/images/profile/iconProj.png" alt=""></a>
                      <h6 style="margin-left: 20%; color: #ffff;">Projetos</h6>
                    </div>
                    <div class="col-sm-3" id="icon"><a target="_blank"><img src="<%= request.getContextPath()%>/res/images/profile/iconXP.png" alt=""></a>
                      <h6 style="margin-left: 45%; color: #ffff;">XP</h6>
                    </div>
                  </div>
                </div>
                <div class="col-md-4" id="profile">
                  <div class="profile-name" id="name">
                    <h1>Nome perfil</h1>
                  </div>
                  <div id="profile-image">
                    <img id="profile-pic" src="<%= request.getContextPath()%>/res/images/profile/profilePic.jpg" alt="" style="border: #72A5FF solid;">
                    <a href="#0" data-toggle="modal" data-target="#modalProfile"><i class="fas fa-cog fa-3x"
                        style="font-size: 2em"></i></a>
                  </div>
                  <div id="user-info">
                    <div class="" style="margin-top: -5px;">Fatec</div>
                    <div class="" style="margin-top: -5px;">20 anos</div>
                    <div class="" style="margin-top: -5px;">Estudante</div>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="row" style="margin-top: 150px; margin-left: -50px; margin-right: 0px;">
                    <div class="col-sm-3" id="">
                      <a target="_blank"><img class="social-icons" src="<%= request.getContextPath()%>/res/images/profile/iconGithub.png" alt=""></a>
                    </div>
                    <div class="col-sm-3 " id="icons-social">
                      <a target="_blank"><img class="social-icons" src="<%= request.getContextPath()%>/res/images/profile/iconFacebook.png" alt=""></a>
                    </div>
                    <div class="col-sm-3" id="icons-social">
                      <a target="_blank"><img class="social-icons" src="<%= request.getContextPath()%>/res/images/profile/iconTwitter.png" alt=""></a>
                    </div>
                    <div class="col-sm-3" id="icons-social">
                      <a target="_blank"><img class="social-icons" src="<%= request.getContextPath()%>/res/images/profile/iconLinkedin.png" alt=""></a>
                    </div>
                    <div class="col-sm-3" id="icons-social">
                      <a target="_blank"><img class="social-icons" src="<%= request.getContextPath()%>/res/images/profile/iconYoutube.png" alt=""></a>
                    </div>
                    <div class="col-sm-3" id="icons-social">
                      <a target="_blank"><img class="social-icons" src="<%= request.getContextPath()%>/res/images/profile/iconInstagram.png" alt=""></a>
                    </div>
                  </div>
                </div>
              </div>

              <!--P O R T F O L I O-->

              <div class="row" id="portfolio">
                <div id="port" class="row" style="margin-top:25px;">
                  <h4 style="color: #72A5FF;"><b>Meu Portfólio</b></h4>
                </div>
              </div>
              <div class="row" id="border">
                <div class="container">
                  <div class="row blog">
                    <div class="col-md-12">
                      <div id="blogCarousel" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                          <div class="carousel-item active">
                            <div class="row" style="margin-left: -15px; margin-right: 0px;">
                              <div class="col">
                                <a target="_blank">
                                  <img class="portfolio-item" src="<%= request.getContextPath()%>/res/images/profile/imgTeste.jpg" alt="Image" style="max-width:100%;">
                                  <div class="text-portfolio">nome projeto</div>
                                </a>
                              </div>
                              <div class="col">
                              </div>
                              <button type="button" class="btn-blue" data-toggle="modal" data-target="#modalProject"
                                style="max-height:100%!important;max-width:200px;margin: 0px 15px 0px 0px;">+</button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <!--D E S A F I O S-->

              <div class="row" id="desafios">
                <div id="port" class="row" style="margin-left: 15px; margin-top:25px;">
                  <h4 style="color: #72A5FF;"><b>Desafios</b></h4>
                </div>
              </div>
              <div class="row">
                <div class="col" style="max-width: 930px;">
                  <div id="carousel-desafio" class="carousel slide" data-ride="carousel" data-interval="false">
                    <div class="carousel-inner">
                      <div class="carousel-item active" style="max-width: 50%;">
                        <div class="container-desafio">
                          <img src="<%= request.getContextPath()%>/res/images/profile/imgTeste.jpg" alt="Image" class="image-desafio" style="max-width: 100%;">
                          <div class="text-image">Casco de navio com mínima resistência</div>
                          <div class="middle-desafio">
                            <a href="#0" data-toggle="modal" data-target=""><img class="btn-desafio" style="filter: invert(1);"
                                src="<%= request.getContextPath()%>/res/images/profile/search.svg" alt="Image"></a><br />
                            <a href="#0" data-toggle="modal" data-target=""><img class="btn-desafio" style="filter: invert(1);"
                                src="<%= request.getContextPath()%>/res/images/profile/favorite.svg" alt="Image"></a><br />
                            <a href="#0" data-toggle="modal" data-target="#EnviarMensagem"><img class="btn-desafio"
                                style="filter: invert(1);" src="<%= request.getContextPath()%>/res/images/profile/bubble.svg" alt="Image"></a><br />
                            <a href="#0" data-toggle="modal" data-target=""><img class="btn-desafio" style="filter: invert(1);"
                                src="<%= request.getContextPath()%>/res/images/profile/calendar.svg" alt="Image"></a><br />
                            <a href="#0" data-toggle="modal" data-target="#MentorDesafio"><img class="btn-desafio"
                                style="filter: invert(1);" src="<%= request.getContextPath()%>/res/images/profile/personAdd.svg" alt="Image"></a><br />
                            <a href="#0" data-toggle="modal" data-target="#CompDesafio"><img class="btn-desafio"
                                style="filter: invert(1);" src="<%= request.getContextPath()%>/res/images/profile/share.svg" alt="Image"></a><br />
                            <a href="#0" data-toggle="modal" data-target=""><img class="btn-desafio" style="filter: invert(1);"
                                src="<%= request.getContextPath()%>/res/images/profile/star.svg" alt="Image"></a><br />
                            <a href="#0" data-toggle="modal" data-target="#Tchun"><img class="btn-desafio"
                                style="transform: rotate(270deg); filter: invert(1);" src="<%= request.getContextPath()%>/res/images/profile/wifi.svg" alt="Image"></a><br />
                          </div>
                        </div>
                      </div>
                      <div class="carousel-item" style="max-width: 50%;">
                        <div class="container-desafio">
                          <img src="<%= request.getContextPath()%>/res/images/profile/imgTeste.jpg" alt="Image" class="image-desafio">
                          <div class="text-image">Aplicativo para estímulos psicomotores</div>
                          <div class="middle-desafio">
                            <a href="#0" data-toggle="modal" data-target=""><img class="btn-desafio" style="filter: invert(1);"
                                src="<%= request.getContextPath()%>/res/images/profile/search.svg" alt="Image"></a><br />
                            <a href="#0" data-toggle="modal" data-target=""><img class="btn-desafio" style="filter: invert(1);"
                                src="<%= request.getContextPath()%>/res/images/profile/favorite.svg" alt="Image"></a><br />
                            <a href="#0" data-toggle="modal" data-target="#EnviarMensagem"><img class="btn-desafio"
                                style="filter: invert(1);" src="<%= request.getContextPath()%>/res/images/profile/bubble.svg" alt="Image"></a><br />
                            <a href="#0" data-toggle="modal" data-target=""><img class="btn-desafio" style="filter: invert(1);"
                                src="<%= request.getContextPath()%>/res/images/profile/calendar.svg" alt="Image"></a><br />
                            <a href="#0" data-toggle="modal" data-target="#MentorDesafio"><img class="btn-desafio"
                                style="filter: invert(1);" src="<%= request.getContextPath()%>/res/images/profile/personAdd.svg" alt="Image"></a><br />
                            <a href="#0" data-toggle="modal" data-target="#CompDesafio"><img class="btn-desafio"
                                style="filter: invert(1);" src="<%= request.getContextPath()%>/res/images/profile/share.svg" alt="Image"></a><br />
                            <a href="#0" data-toggle="modal" data-target=""><img class="btn-desafio" style="filter: invert(1);"
                                src="<%= request.getContextPath()%>/res/images/profile/star.svg" alt="Image"></a><br />
                            <a href="#0" data-toggle="modal" data-target="#Tchun"><img class="btn-desafio"
                                style="transform: rotate(270deg); filter: invert(1);" src="<%= request.getContextPath()%>/res/images/profile/wifi.svg" alt="Image"></a><br />
                          </div>
                        </div>
                      </div>
                      <div class="carousel-item" style="max-width: 50%;">
                        <div class="container-desafio">
                          <img src="<%= request.getContextPath()%>/res/images/profile/imgTeste.jpg" alt="Image" class="image-desafio img-fluid d-block" style="max-width: 100%;">
                          <div class="text-image">IMAGEM 3</div>
                        </div>
                      </div>
                    </div>
                    <a class="carousel-control-prev" href="#carousel-desafio" style="width: 20px; height: 20px; 
                        margin-top: 15%; margin-left: -20px;" role="button" data-slide="prev">
                      <span class="carousel-control-prev-icon"></span>
                      <span class="sr-only">Anterior</span>
                    </a>
                    <a class="carousel-control-next" href="#carousel-desafio" style="width: 20px; height: 20px;
                        margin-top: 15%; margin-right: -20px;" role="button" data-slide="next">
                      <span class="carousel-control-next-icon"></span>
                      <span class="sr-only">Próximo</span>
                    </a>
                  </div>
                </div>
                <button type="button" class="btn-blue" data-toggle="modal" data-target="#modalProject"
                  style="max-height:100%!important;max-width:200px;margin-left: 15px;">+</button>
              </div>

              <!--E V E N T O S-->

              <div class="row" id="eventos">
                <div id="port" class="row" style="margin-left: 15px; margin-top:25px;">
                  <h4 style="color: #72A5FF;"><b>Próximos Eventos</b></h4>
                </div>
              </div>
              <div class="row" id="border">
                <div class="container">
                  <div class="row blog" style="margin-right: 0px;">
                    <div class="col-md-12">
                      <div id="blogCarousel" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                          <div class="carousel-item active">
                            <div class="row" style="margin-left: 0px;">
                              <div class="container-desafio">
                                <img src="<%= request.getContextPath()%>/res/images/profile/imgTeste.jpg" alt="Image" class="image-evento" style="max-width: 100%;">
                              </div>
                              <div class="col">
                              </div>
                              <button type="button" class="btn-blue" data-toggle="modal" data-target="#modalProject"
                                style="max-height:100%!important;max-width:200px;margin: 0px 15px 0px 0px;">+</button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <br />

              <!--N O T I C I A S-->

              <div class="row" id="ultimasnoticias">
                <div id="port" class="row">
                  <h4 style="color: #72A5FF;"><b>Últimas Noticías</b></h4>
                </div>
              </div>
              <div class="container">
                <div class="row">
                  <div class="col-md-6">
                    <img src="https://www.nih.no/globalassets/artikkel-toppbilde-1600x900/arbeidslivsdagen_1600.jpg" class="card1"
                      alt="..." style="height: 350px; width: 100%; margin-left: -15px;" />
                  </div>
                  <div class="col-md-6">
                    <img src="https://www.nih.no/globalassets/artikkel-toppbilde-1600x900/arbeidslivsdagen_1600.jpg" class="card2"
                      alt="..." style="height: 350px; width: 100%;" />
                  </div>
                </div>
                <br />
                <div class="row" style="margin-top: 25px;">
                  <div class="col-md-6">
                    <img src="https://www.nih.no/globalassets/artikkel-toppbilde-1600x900/arbeidslivsdagen_1600.jpg" class="card3"
                      alt="..." style="height: 350px; width: 100%; margin-left: -15px;" />
                  </div>
                  <div class="col-md-6">
                    <img src="https://portal6.com.br/wp-content/uploads/2017/04/robo2.jpeg" class="card4" alt="..."
                      style="height: 350px; width: 100%;" />
                  </div>
                </div>
              </div>
              <div class="padding"></div>
              <div class="padding"></div>
              <button hidden id="openModalFirst" data-toggle="modal" data-target="#modalFirst"></button>
            </div>
            <footer class="perfil-footer">
                <div class="footer-copyright text-muted text-center py-3">
                  <a data-toggle="modal" href="#TermosDeUso2" class="text-muted">Termos de Uso</a> | <a data-toggle="modal"
                    href="#PoliticaDP2" class="text-muted">Política de Privacidade e Segurança </a> | INOVA CPS - Centro Paula Souza
                  - 2019 ®
                </div>
             </footer>
          </div>
    </body>
</html>
