<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="sl">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Vpis</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <<<<<<< HEAD
    <link type="text/css" rel="stylesheet" href="/lib/css/materialize.min.css" media="screen,projection" />
    <link rel="stylesheet" type="text/css" media="screen" href="/lib/css/style.css" />
    =======
    <link rel="stylesheet" type="text/css" href="materialize.min.css"  />
    <link rel="stylesheet" type="text/css" href="style.css" />
    <script src="main.js"></script>
</head>

<body>
<div class="teal lighten-5">
    <div class="navbar-fixed">
        <nav class=" teal darken-2 z-depth-3">
            <div class="nav-wrapper">
                <a href="index" class="brand-logo">Kulturnik</a>
                <a href="#" class="button-collapse" data-activates="mobile-sidenav">
                    <i class="material-icons">menu</i>
                </a>
                <ul class="right show-on-med-and-down">
                    <li>
                        <a href="search.html">
                            <i class="material-icons">search</i>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="material-icons">place</i>
                        </a>
                    </li>
                    <li>
                        <a class="dropdown-trigger" data-activates="dropdownPerson" href="#">
                            <i class="material-icons left">person</i>
                        </a>
                        <ul id='dropdownPerson' class='dropdown-content'>
                            <li>
                                <a href="events">Dodaj Dogodek</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="vpis">Vpis</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="registracija">Registracija</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#!">Moji Dogodki</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <ul id="nav-mobile" class="right hide-on-med-and-down">
                    <li class="active">
                        <a href="index">Domov</a>
                    </li>
                    <li>
                        <a href="events">Glasba</a>
                    </li>
                    <li>
                        <a href="events">Gledališče</a>
                    </li>
                    <li>
                        <a href="events">Razstave</a>
                    </li>
                    <li>
                        <a href="events">Športni dogodki</a>
                    </li>
                    <li>
                        <a href="events">Kino</a>
                    </li>
                </ul>
                <ul class="side-nav" id="mobile-sidenav">
                    <li class="active">
                        <a href="index">Home</a>
                    </li>
                    <li>
                        <a href="events">Glasba</a>
                    </li>
                    <li>
                        <a href="events">Gledališče</a>
                    </li>
                    <li>
                        <a href="events">Razstave</a>
                    </li>
                    <li>
                        <a href="events">Športni dogodki</a>
                    </li>
                    <li>
                        <a href="events">Kino</a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
    <div class="container">
        <h2 class="center-align">
            Vpis
        </h2>
        <form action="#" method="post">
            <div class="row">
                <div class="input-field col s10 offset-s1 col l8 offset-l2">
                    <input id="user" type="text" class="validate">
                    <label for="user">Uporabniško Ime</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s10 offset-s1 col l8 offset-l2">
                    <input id="password" type="password" class="validate">
                    <label for="password">Password</label>
                </div>
            </div>
            <div class="row">
                <div class="radio col s10 offset-s1 col l8 offset-l2">
                    <p>
                        <input type="checkbox" id="remember" />
                        <label for="remember">Zapomni si me</label>
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="input-field center-align">
                    <button id="signIn" class="btn btn-submit large" type="submit">Vpis</button>
                    <div class="input-field center-align">
                        <a href="registracija.html">Še nimate računa?</a>

                    </div>

                </div>



        </form>
    </div>
</div>
</body>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/materialize.min.js"></script>

<script>
    // Every page needs this dingy //
    $(document).ready(function () {
        $('.dropdown-button').dropdown({
            constrainWidth: false,
            hover: true,
            belowOrigin: true,
            alignment: 'left'
        });
        // Navbar //
        $('.button-collapse').sideNav();
        $('.dropdown-trigger').dropdown({
            constrainWidth: false,
            hover: true
        });

        // Page Specific //



    });
</script>

</html>