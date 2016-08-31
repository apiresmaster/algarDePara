<!DOCTYPE html>
<html lang="en">
  	<head>
		<meta charset="utf-8">
		<title><g:layoutTitle default="Algar Integração"/></title>
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
		<!--meta name="viewport" content="width=device-width, initial-scale=1"-->
		<meta name="description" content="Sistema de importação de nota fiscal eletrônica para o Nasajon">
		<meta name="author" content="Alexandre Pires e Leandro Trocado">

		<!-- HTML5 shim for IE8 support of HTML5 elements -->
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<![endif]-->
		<link rel="stylesheet" href="${resource(dir: 'algarTemplate/css', file: 'bootstrap.min.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'algarTemplate/css', file: 'bootstrap-responsive.min.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'algarTemplate/css', file: 'font-awesome.min.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'algarTemplate/css', file: 'bootswatch.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'algarTemplate/css', file: 'bootstrap-theme.css')}" type="text/css">

  	</head>

  <!--body class="preview" id="top" data-spy="scroll" data-target=".subnav" data-offset="80"-->
  <body>

<br><br><br>
  <!-- Navbar
    ================================================== -->
 <div class="navbar navbar-fixed-top">
   <div class="navbar-inner">
     <div class="container">
       <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
         <span class="icon-bar"></span>
       </a>
       <a class="brand" href="../">Algar Integração</a>
       <div class="nav-collapse collapse" id="main-menu">
        <ul class="nav" id="main-menu-left">
          <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Integração<b class="caret"></b></a>
            <ul class="dropdown-menu" id="swatch-menu">
              <li><g:link controller="integracao" action="index">Listar</g:link></li>
              <li class="divider"></li>
              <li><g:link controller="integracao" action="create">Novo</g:link></li>
            </ul>
          </li>
          <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Tipo Informação<b class="caret"></b></a>
            <ul class="dropdown-menu" id="swatch-menu">
              <li><g:link controller="tipoInformacao" action="index">Listar</g:link></li>
              <li class="divider"></li>
              <li><g:link controller="tipoInformacao" action="create">Novo</g:link></li>
            </ul>
          </li>
        </ul>
        <ul class="nav pull-right" id="main-menu-right">
          <li>
            <a href="http://accenture.com.br"><asset:image src="grails_logo.png" alt="Accenture"/></a>
          </li>
        </ul>
       </div>
     </div>
   </div>
 </div>

    <div class="container">

    	<g:layoutBody/>

     <!-- Footer
      ================================================== -->
      <footer id="footer">
        <p class="pull-right"><a href="#top">Voltar para o Topo</a></p>
        Desenvolvido por <a href="http://www.accenture.com" rel="nofollow">Accenture</a><br/>
        
      </footer>

    </div><!-- /container -->

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript" src="${resource(dir:'algarTemplate/js',file:'jquery.smooth-scroll.min.js')}"></script>

    <script type="text/javascript" src="${resource(dir:'algarTemplate/js',file:'bootstrap.min.js')}"></script>
    <script type="text/javascript" src="${resource(dir:'algarTemplate/js',file:'bootswatch.js')}"></script>

  </body>
</html>
