<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<script type="text/javascript">
function loginTeste() {
    location.href="/restrict/user/user.jsp";
}
</script>

<div class="modal fade" id="modalLogin" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div>
                <h5 class="modal-title" id="exampleModalLongTitle" style="margin-left: 16%; 
                    margin-top: 5%"><b>BEM-VINDO DE VOLTA, ANTENADX!</b></h5>
                <h6 class="modal-title" id="exampleModalLongTitle2" 
                    style="margin-left: 38%">Acesse sua conta</h6>
            </div>
            <div class="modal-body">
                <div>
                    <form>
                    <label id="labelEmail" for="email">E-mail</label>
                    <br/>
                    <input type="text" id="username" value="" class="camposform" name="email"/>
                    <br/><br/>
                    <label id="labelSenha" for="password">Senha</label>
                    <br/>
                    <input type="password" id="password" class="camposform" name="password"/>
                    <label id="ouAcesse"> Ou acesse: </label> 
                    <button id="btnEntrar" class="btn btn-lg btn-danger" type="button" 
                        onClick="loginTeste()" style="margin-left: -82%;"><b>ENTRAR</b>
                    </button> 
                    <br/>
                    <a data-toggle="modal" id="clickPassword" data-target="#passwordModal" data-dismiss="modal"
                        href="#0" style="font-size: 12px; margin-left: 7%">Esqueceu sua senha?</a>
                    <div id="iconF">  
                        <a><img id="facebookImage" src="<%= request.getContextPath()%>/res/images/fbAccessBt.png"
                            style="max-width: 27px" alt=""/></a>
                    </div>
                    <div id="iconL">
                        <a><img id="linkedinImage" src="<%= request.getContextPath()%>/res/images/inAccessBt.png"
                            style="max-width: 27px" alt=""/></a>
                    </div>
                    <div id="iconG">
                        <a><img id="googleImage" src="<%= request.getContextPath()%>/res/images/gglAccessBt.png"
                            style="max-width: 27px" alt=""/></a>
                    </div>
                    <br/><br/>
                    <div id="primeiroAcesso">
                        <p>Primeiro acesso? Cadastre-se <a href="/restrict/user/register.jsp">aqui</a>.</p>
                    </div>
                    <div>
                        <button id="close-modal-login" type="text" class="close" data-dismiss="modal"
                            aria-label="Close" style="margin-right: 80%; font-size: 10px"><u>VOLTAR</u>
                        </button>
                        <br/>
                    </div>
                    <!-- <div id="center">
                        <button type="button"  size="lg" class="btn btn-primary" id="fbcolor" ><i class="fab fa-facebook-f left"></i></button>
                        <button (click)="lgGoogle()" size="lg"  class="btn btn-secundary" id="ggcolor" >G</button>
                    </div> -->
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="passwordModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel" style="text-align: center;">
                    PREENCHA O SEU E-MAIL NO CAMPO ABAIXO PARA RECUPERAR SUA SENHA
                </h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <form name="form">
                    <label for="email">E-mail</label>
                    <input id="email" type="email" class="form-control" name="email"/>
                    <div class="invalid-feedback">
                        <!--<div *ngIf="email.errors.required">Digite seu e-mail.</div>
                        <div *ngIf="email.errors.email">Digite um e-mail válido.</div>-->
                    </div>
                    <div class="form-group">
                        <button class="btn btn-danger" hidden id="sendPassword">Enviar</button>
                    </div>
                </form>
            </div>
            <div style="text-align: center">
                <h6>Ainda não é um Antenadx? <a href="/#/cadastro" 
                    data-dismiss="modal">Clique aqui</a></h6>
                <h6 id="back-login"><a data-target="#modalLogin" data-toggle="modal" 
                    data-dismiss="modal" href="#0">Voltar para o login</a></h6>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" 
                    data-dismiss="modal">Recuperar senha</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="modalCont" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Bem-vindo de volta!</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">x</span></button>
            </div>
            <div class="modal-body">
                <div style="text-align: center">
                    <div style="margin-bottom: 20px;">
                        <button id="btnUser" class="btn btn-info" data-dismiss="modal" 
                            data-toggle="modal" data-target="#modalLogin" >Continuar como</button>
                    </div>
                    <div>
                        <button class="btn btn-danger" data-dismiss="modal" data-toggle="modal" 
                            data-target="#modalLogin">Entrar com outra conta</button>
                    </div>
                </div>
            </div>
            <div class="modal-footer" style="text-align: center">
                <p>Ainda não é cadastrado ? Cadastre se <a href="/#/cadastro" 
                    data-dismiss="modal"> aqui.</a></p>
            </div>
        </div>
    </div>
</div>
