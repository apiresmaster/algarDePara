<!DOCTYPE html>
<!-- saved from url=(0039)http://getbootstrap.com/examples/theme/ -->
<html lang="en">

  <head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="${resource(dir:'images', file:'accenture_risk-control.ico')}" type="image/x-icon">
    <!--link rel="shortcut icon" href="${assetPath(src: 'accenture_risk-control.ico')}" type="image/x-icon"-->

    <title><g:layoutTitle default="Grails"/></title>
    

    <!-- Bootstrap core CSS -->
    <link rel= "stylesheet" href= "${resource(dir:'css', file:'bootstrap.min.css')}" />
    <!--asset:stylesheet src="boostrap/css/bootstrap.min.css"/-->
    <!-- Bootstrap theme -->
    <link rel= "stylesheet" href= "${resource(dir:'css', file:'bootstrap-theme.min.css')}" />
    <!--asset:stylesheet src="boostrap/css/bootstrap-theme.min.css"/-->
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link rel= "stylesheet" href= "${resource(dir:'css', file:'ie10-viewport-bug-workaround.css')}" />
    <!--asset:stylesheet src="boostrap/css/ie10-viewport-bug-workaround.css"/-->

    <!-- Custom styles for this template -->
    <link rel= "stylesheet" href= "${resource(dir:'css', file:'theme.css')}" />
    <!--asset:stylesheet src="boostrap/css/theme.css"/-->

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script type="text/javascript" src="${resource(dir:'js', file:'ie-emulation-modes-warning.js')}"></script>
    <!--asset:javascript src="boostrap/js/ie-emulation-modes-warning.js"/-->
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <script type="text/javascript" src="${resource(dir:'js', file:'custom.js')}"></script>
  </head>

  <body>

    <!-- Fixed navbar -->
    <!--nav class="navbar navbar-inverse navbar-fixed-top"-->
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Algar Integração</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <!--li class="active"><a href="http://getbootstrap.com/examples/theme/#">Home</a></li-->
            <li class="active dropdown">
              <a href="http://getbootstrap.com/examples/theme/#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Parametrização <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><g:link controller="integracao" action="index"><g:message code="menu.list.title"/></g:link></li>
                <li role="separator" class="divider"></li>
                <li><g:link controller="integracao" action="create"><g:message code="menu.create.title"/></g:link></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="http://getbootstrap.com/examples/theme/#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Tipo Informação <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><g:link controller="tipoInformacao" action="index"><g:message code="menu.list.title"/></g:link></li>
                <li role="separator" class="divider"></li>
                <li><g:link controller="tipoInformacao" action="create"><g:message code="menu.create.title"/></g:link></li>
              </ul>
            </li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container theme-showcase" role="main">

      <g:layoutBody/>

    </div> <!-- /container -->
    <asset:javascript src="boostrap/js/bootstrap.min.js"/>
    <script type="text/javascript" src="${resource(dir:'js',file:'jquery.min.js')}"></script>
    <script type="text/javascript" src="${resource(dir:'js',file:'bootstrap.min.js')}"></script>
    <script type="text/javascript" src="${resource(dir:'js',file:'docs.min.js')}"></script>
    <script type="text/javascript" src="${resource(dir:'js',file:'ie10-viewport-bug-workaround.js')}"></script>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
  
  </body>
</html>