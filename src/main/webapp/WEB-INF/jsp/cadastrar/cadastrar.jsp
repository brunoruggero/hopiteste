<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Hopi - Anuali</title>
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.1/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        
        <link href="css/glyphicon.css" media="all" rel="stylesheet" type="text/css"/>
        <link href="css/fileinput.min.css" media="all" rel="stylesheet" type="text/css"/>
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top"><img src="assets/img/logos/logo.png" alt="Logo" /></a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars ml-1"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase ml-auto">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="<c:url value="visitantes"/>">Visitantes</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead" id="login">
            <div class="container">
               
            </div>
        </header>
        <!-- cadastrar-->
        <section class="page-section" id="cadastrar">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Cadastre-se</h2>
                </div>
                
                <c:if test="${not empty errors}">
	                <div class="alert alert-danger" role="alert">
	                  <c:forEach var="error" items="${errors}">
	                 ${error.message}<br/>
	                  </c:forEach>
	                </div>
	            </c:if>
	            
                <form method="post" action="<c:url value="cadastrar/salvaUsuario"/>" enctype="multipart/form-data">
                    <div class="row justify-content-md-center mb-5 text-center">
                        <div class="col-md-12 align-self-center text-center">
                        	<div class="form-group input-login mx-auto">
                                <input id="input-id" type="file" name="usuario.imagem.file" class="file" data-preview-file-type="text">
                                 <p class="help-block text-danger"></p>
                             </div>
                            <div class="form-group input-login mx-auto">
                                <input name="usuario.nome" value="${usuario.nome}" class="form-control" id="nome" type="text" placeholder="Nome *" required="required" data-validation-required-message="Please enter your name." value="${ usuario.getNome() }" minlength="5" maxlength="100"/>
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group input-login mx-auto">
                                <input name="usuario.email"  value="${usuario.email}" class="form-control" id="email" type="email" placeholder="Email *" required="required" data-validation-required-message="Please enter your email address." value="${ usuario.getEmail() }" minlength="5" maxlength="100"/>
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group input-login mx-auto">
                                <input name="usuario.rg" value="${usuario.rg}" class="form-control" id="rg" type="text" placeholder="RG *" maxlength="12" size="12" required="required" data-validation-required-message="Please enter your RG" value="${ usuario.getRg() }"/>
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group input-login mx-auto">
                                <input name="usuario.telefone" value="${usuario.telefone}" class="form-control" id="tel" type="text" placeholder="Telefone *" required="required" data-validation-required-message="Please enter your phone." value="${ usuario.getTelefone() }" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group input-login mx-auto">
                                <input name="usuario.cidade" value="${usuario.cidade}" class="form-control" id="cidade" type="text" placeholder="Cidade *" required="required" data-validation-required-message="Please enter your city." value="${ usuario.getCidade() }"/>
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group input-login mx-auto">
                                <input class="form-control date-br" id="dtInicial" name="usuario.dtInicialEn" value="${usuario.dtInicial}"  type="date" placeholder="Data Inicial *" required="required" data-validation-required-message="Digite a data Inicial do Anuali" value="${ usuario.getDtinicial() }"/>
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group input-login mx-auto">
                                <input class="form-control date-br" id="dtFinal" name="usuario.dtFinalEn" value="${usuario.dtFinal}" type="date" placeholder="Data Final *" required="required" data-validation-required-message="Digite a data Final do Anuali" value="${ usuario.getDtfinal() }"/>
                                <p class="help-block text-danger"></p>
                            </div>
                            <button type="submit"  class="btn btn-primary btn-xl text-uppercase js-scroll-trigger">Cadastrar</button>
                        </div> 
                    </div>
                    
                </form>
            </div>
        </section>
    
        <!-- Footer-->
        <footer class="footer py-4">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-4 text-lg-left">Copyright © Hopi Hari 2021</div>
                    <div class="col-lg-4 my-3 my-lg-0">
                        <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                    <div class="col-lg-4 text-lg-right">
                        <a class="mr-3" href="#!">Privacy Policy</a>
                        <a href="#!">Terms of Use</a>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <!-- Contact form JS-->
        <script src="assets/mail/jqBootstrapValidation.js"></script>
        <script src="assets/mail/contact_me.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        
        <script src="js/jquery.mask.min.js"></script>
        <script src="js/fileinput/fileinput.min.js" type="text/javascript"></script>
        <script src="js/add-mask.js"></script>
        <script>

        </script>
    </body>
</html>
