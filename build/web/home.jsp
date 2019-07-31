<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <!-- Meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <!-- Bootstrap CSS -->
        <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/res/styles/styles_home.css">
        
        
        <title>Antena CPS</title>
        <link rel="shortcut icon" href="<%=request.getContextPath()%>/res/images/favicon.ico" />
        
    </head>
    <body>
        
        <!-- Header -->
        <%@include file="WEB-INF/jspf/header_footer/header.jspf"%>
        
        <!-- Home -->
        <div class="fundo jumbotron">
            <div class="container">
                <br/><br/>
                <h1 id="home" class="display-4">HOME - ANTENA CPS</h1>
                <div class="Entrar jumbrotron"> 
                    <button type="button" class="btn btn-danger btn-lg" id="openModal" data-toggle="modal" data-target="#modalLogin" style="width: 200px">ENTRAR</button>
                    <button hidden data-toggle="modal" data-target="#modalLogin" id="openModal2"></button>
                    <button hidden data-toggle="modal" data-target="#modalCont" id="openModalCont"></button>
                </div> 
            </div>
        </div>
        <div id="background">
            <br/><h1 id="capt">Captando INOVAÇÃO,</h1><br/>
            <h1 id="propg">propagando para os</h1><h1 id="anten">antenados</h1><br/><br/>
        </div> 
        
        <!-- Login -->
        <%@include file="data/login.jsp"%>
        
        <!-- Footer -->
        <%@include file="WEB-INF/jspf/header_footer/footer.jspf"%>
        
    </body>
</html>
