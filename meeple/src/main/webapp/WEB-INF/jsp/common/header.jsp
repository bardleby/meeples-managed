<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url var = "sitesCssUrl" value = "/css/meeple.css"/>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width" />
<title>Meeple Manager</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${sitesCssUrl}" />
<link href="css/TimeCircles.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="js/TimeCircles.js"></script>
<script src="js/timerControl.js"></script>
</head>
<body>
	<header>
		<nav class="navbar-inverse navbar-static-top" role="navigation">
			<div class="container-fluid">
                <div class="navbar-header">
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                  	<span class="sr-only">Toggle Navigation</span>
                  	<span class="icon-bar"></span>
                  	<span class="icon-bar"></span>
                  	<span class="icon-bar"></span>
                  </button>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                		<ul class="nav navbar-nav">
                  		<li><a href="#home">Home</a></li>
                  		<li><a href="#collection">Collection</a></li>
                 		<li><a href="#turnTimer">Turn Timer</a></li>
                 	</ul>
              	</div>
              </div>
            </nav>
      <div class="jumbotron">
        <div class="row">
          <div class="col-md-2"><img src="img/meeple.png" id="meeple-logo"/></div>
          <div class="col-md-8"><h1>Meeples, Managed</h1>
            <p>Organize your collection. Speed up your games. Bring more to the table.</p>
          </div>
          <div class="col-md-2"></div>
        </div>
      </div>
	</header>
	<div class="container-fluid">