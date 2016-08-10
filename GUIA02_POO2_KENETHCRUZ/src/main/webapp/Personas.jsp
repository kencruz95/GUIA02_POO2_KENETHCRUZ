<%-- 
    Document   : Personas
    Created on : 08-10-2016, 05:23:08 PM
    Author     : Laboratorio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>GUIA 02 - POO</title>
    
     <!-- Normalize CSS -->
    <link rel="stylesheet" href="css/normalize.css">
    
     <!-- Materialize CSS -->
    <link rel="stylesheet" href="css/materialize.min.css">
    
     <!-- Material Design Iconic Font CSS -->
    <link rel="stylesheet" href="css/material-design-iconic-font.min.css">
    
    <!-- Malihu jQuery custom content scroller CSS -->
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
    
    <!-- Sweet Alert CSS -->
    <link rel="stylesheet" href="css/sweetalert.css">
    
    <!-- MaterialDark CSS -->
    <link rel="stylesheet" href="css/style.css">
    <script src="js/jquery.validate.js" type="text/javascript"></script>
</head>
<body>
    <!-- Nav Lateral -->
    <section class="NavLateral full-width">
        <div class="NavLateral-FontMenu full-width ShowHideMenu"></div>
        <div class="NavLateral-content full-width">
            <header class="NavLateral-title full-width center-align">
                JAVA WEB <i class="zmdi zmdi-close NavLateral-title-btn ShowHideMenu"></i>
            </header>
            <figure class="full-width NavLateral-logo">
                <img src="assets/img/logo.png" alt="material-logo" class="responsive-img center-box">
                <figcaption class="center-align">Guia de estudio</figcaption>
            </figure> 
            <div class="NavLateral-Nav">
                <ul class="full-width">
                    <li>
                        <a href="index.html" class="waves-effect waves-light"><i class="zmdi zmdi-view-web zmdi-hc-fw"></i> INICIO</a>
                    </li>
                    <li>
                        <a href="Personas.jsp" class="waves-effect waves-light"><i class="zmdi zmdi-desktop-windows zmdi-hc-fw"></i>Registros de personas</a>
                    </li>
                </ul>
            </div>  
        </div>  
    </section>

    <!-- Page content -->
    <section class="ContentPage full-width">
        <!-- Nav Info -->
        <div class="ContentPage-Nav full-width">
            <ul class="full-width">
                <li class="btn-MobileMenu ShowHideMenu"><a href="#" class="tooltipped waves-effect waves-light" data-position="bottom" data-delay="50" data-tooltip="Menu"><i class="zmdi zmdi-more-vert"></i></a></li>
                <li><figure><img src="assets/img/user.png" alt="UserImage"></figure></li>
                <li style="padding:0 5px;">Keneth Cruz</li>
                <li><a href="#" class="tooltipped waves-effect waves-light btn-ExitSystem" data-position="bottom" data-delay="50" data-tooltip="Cerrar sesion"><i class="zmdi zmdi-power"></i></a></li>
                <li><a href="#" class="tooltipped waves-effect waves-light btn-Search" data-position="bottom" data-delay="50" data-tooltip="Buscar"><i class="zmdi zmdi-search"></i></a></li>
               
            </ul>   
        </div>

        <!-- mantenimiento-->

        <div class="container">
            <div class="row">
                <h2 class="center-align">Registros de personal</h2>
                <div class="input-field col s6">
                    <h5>Movimiento realizado:</h5>
                </div>
                <div class="input-field col s6">
                    <center><h5>${mensAler}</h5></center>
                </div>
                
                
                <br><br>
                <form class="" method="post" action="DatosReportes/reporte1.jsp" target="_blank">
                <div class="row">
                    
                </div>
                        <br><br><br>
        <!--acciones-->
        <div class="container" style="margin-bottom: 128px;">
            <div class="row">
                
                <div class="col s12 center-align">
                     <input type="submit" class="waves-effect waves-light btn" id="boton"  name="cursBton" value="Generar reporte"/>
                </div>
            </div>
        </div>
                </form>
        
        <!--registros consultados-->
        
            </div>
        </div>
        
        <!--Icon Prefixes-->
        
            
        
        <br><br><br><br><br><br><br>
        <!-- Footer -->
        <footer class="footer-MaterialDark">
            <div class="container">
                <div class="row">
                    <div class="col l6 s12">
                        
                    </div>
                    <div class="col l4 offset-l2 s12">
                        
                    </div>
                </div>
            </div>
            <div class="NavLateralDivider"></div>
            <div class="footer-copyright">
                <div class="container center-align">
                    © 2016 Keneth Orlando Vasquez Cruz
                </div>
            </div>
        </footer>
    </section>
    
    <!-- Sweet Alert JS -->
    <script src="js/sweetalert.min.js"></script>
    
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/jquery-2.2.0.min.js"><\/script>')</script>
    
    <!-- Materialize JS -->
    <script src="js/materialize.min.js"></script>
    
    <!-- Malihu jQuery custom content scroller JS -->
    <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
    
    <!-- MaterialDark JS -->
    <script src="js/main.js"></script>
</body>
</html>
