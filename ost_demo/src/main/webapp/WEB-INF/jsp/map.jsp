<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="sl">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Search</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="/lib/css/materialize.min.css" media="screen,projection"/>
    <link rel="stylesheet" type="text/css" media="screen" href="/lib/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="materialize.min.css"/>
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <script src="main.js"></script>

    <style>
        #map {
            height: 800px;
            width: 100%;
        }
    </style>
</head>

<body>

<% if (Boolean.valueOf(String.valueOf(session.getAttribute("uporabnikPrijavljen"))))
{
%>
Prijavljeni ste kot <%=
String.valueOf(session.getAttribute("imeUporabnika"))%>
<%= String.valueOf(session.getAttribute("priimekUporabnika"))

%><%}%>

<main class="teal lighten-5">
    <div class="navbar-fixed">
        <nav class=" teal darken-2 z-depth-3">
            <div class="nav-wrapper">

                <a href="index" class="brand-logo">Kulturnik</a>
                <a href="#" class="button-collapse" data-activates="mobile-sidenav">
                    <i class="material-icons">menu</i>
                </a>
                <ul class="right show-on-med-and-down">
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
                            <% if (Boolean.valueOf(String.valueOf(session.getAttribute("uporabnikPrijavljen"))))
                            { %>
                            <li class="collection-item avatar valign-wrapper">
                                <i class="material-icons right teal-text">person </i>
                                <form action="/events" method="get">
                                    <button class="btn-flat teal-text" name="event" value="Moji dogodki">
                                <span class="right ">
                                    <%=
                                    String.valueOf(session.getAttribute("imeUporabnika"))
                                    %>
                                  <%=
                                  String.valueOf(session.getAttribute("priimekUporabnika"))
                                  %>
                                </span>
                                    </button>
                                </form>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="add">
                                    <form action="/uredi" method="get">
                                        <button class="btn-flat teal-text" name="ime" value="dodajanje">Dodaj Dogodek
                                        </button>
                                    </form>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#!">
                                    <form action="/izpis" method="get">
                                        <button class="btn-flat teal-text">Izpis</button>
                                    </form>
                                </a>
                            </li>

                            <%  }  else { %>
                            <li class="collection-item avatar valign-wrapper">
                                <i class="material-icons right teal-text">person </i>
                                <span class="right ">

                                     <%="Neprijavljen uporabnik"%>

                                </span>

                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="vpis">
                                    <button class="btn-flat teal-text">Vpis</button>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="registracija">
                                    <button class="btn-flat teal-text">Registracija</button>
                                </a>
                            </li>
                            <%}%>
                        </ul>
                    </li>
                </ul>
                <ul id="nav-mobile" class="right hide-on-med-and-down">

                    <li class="active">
                        <a href="index">Domov</a>
                    </li>
                    <li>
                        <form action="/events" method="get">
                            <a class="dropdown-trigger" data-activates="dropdownEvents" href="#">
                                Dogodki
                                <i class="material-icons right">arrow_drop_down</i>
                            </a>
                            <ul id='dropdownEvents' class='dropdown-content'>
                                <li>
                                    <a href="#">
                                        <button class="btn-flat teal-text" type="submit" name="event" value="Glasba">
                                            Glasba
                                        </button>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="#">
                                        <button class="btn-flat teal-text" type="submit" name="event"
                                                value="Gledališče">Gledališče
                                        </button>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="#">
                                        <button class="btn-flat teal-text" type="submit" name="event" value="Razstava">
                                            Razstave
                                        </button>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="#">
                                        <button class="btn-flat teal-text" type="submit" name="event" value="Šport">
                                            Šport
                                        </button>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="#">
                                        <button class="btn-flat teal-text" type="submit" name="event" value="Film">
                                            Kino
                                        </button>
                                    </a>
                                </li>
                            </ul>
                        </form>
                    </li>
                </ul>
                <ul class="side-nav" id="mobile-sidenav">
                    <form action="/events" method="get">
                        <li class="active">
                            <a href="index">Home</a>
                        </li>
                        <li>
                            <button class="btn-flat" type="submit" name="event" value="Glasba">Glasba</button>
                        </li>
                        <li>
                            <button class="btn-flat" type="submit" name="event" value="Gledališče">Gledališče</button>
                        </li>
                        <li>
                            <button class="btn-flat" type="submit" name="event" value="Razstava">Razstave</button>
                        </li>
                        <li>
                            <button class="btn-flat" type="submit" name="event" value="Šport">Šport</button>
                        </li>
                        <li>
                            <button class="btn-flat" type="submit" name="event" value="Film">Kino</button>
                        </li>

                    </form>
                </ul>
            </div>
        </nav>
    </div>

    <div class="container">

        <div class="row">
            <h2 class="center-align">Lokacija dogodka ${naslovDogodka} </h2>
            <div id="map"></div>
            <script>




                var izbira = "${celZemljevid}";
                var lokacije = "${lokacijeDogodkov}";

                var locations=new Array();

                var x="";


                    for (var i = 0; i < lokacije.length; i++) {


                        if (lokacije[i] != ',')
                            x += lokacije[i];

                        else if (lokacije[i] === ',') {
                            locations.push(x);

                            x = "";

                        }

                        if (i === lokacije.length - 2)
                            locations.push(x);


                    }


                var geocoder;
                var map;
                var address = "${naslovLokacije}";
                function initMap() {
                    var map = new google.maps.Map(document.getElementById('map'), {
                        zoom: 15,
                        center: {lat: 46.554007, lng: 15.648498}
                    });
                    geocoder = new google.maps.Geocoder();


                    if(izbira==='true') {
                        for (var i = 0; i < locations.length; i++) {

                            setInfoWindow(i);
                        }

                        function setInfoWindow(i) {
                            geocoder.geocode({'address': locations[i]}, function (results, status) {
                                if (status === 'OK') {

                                    map.setCenter(46.0569465, 14.5057515);
                                    map.setZoom(8.5);
                                    var marker = new google.maps.Marker({
                                        map: map,
                                        position: results[0].geometry.location
                                    });

                                    marker.addListener('click', function() {


                                        var infowindow = new google.maps.InfoWindow({
                                            content: '<div id="content" class="flow-text" style=padding:16px; ;border-radius:5px;max-width:260px;box-shadow:none;">'
                                            +locations[i]+'<br><br>  ' +
                                            '<form action="/dogodkiPoLokaciji" method="get"><button type="submit"class="btn valign-wrapper right blue lighten-1 waves-effect" id="button" value="'+locations[i]+'" name="lokacija">Prikaži dogodke</button></form> ' +
                                            '</div>'




                                        });
                                        infowindow.open(map, marker);




                                    });




                                } else {
                                    alert('Prikaz na zemljevidu neuspešen zaradi: ' + status);
                                }


                            });


                        }
                    }

                   else{
                      codeAddress(geocoder, map);
                    }


                }


                function codeAddress(geocoder, map) {
                    geocoder.geocode({'address': address}, function(results, status) {

                        if (status === 'OK') {

                            map.setCenter(results[0].geometry.location);
                            var marker = new google.maps.Marker({
                                map: map,
                                position: results[0].geometry.location
                            });

                        } else {
                            alert('Prikaz na zemljevidu neuspešen zaradi: ' + status);
                        }
                    });
                }


            </script>
            <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAqDzfA85d4SVOfcH-NKKeRrWY5OMP480Y&callback=initMap">
            </script>

        </div>
    </div>


</main>
</body>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="/lib/javascript/materialize.min.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>

<script>




    Materialize.updateTextFields();
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