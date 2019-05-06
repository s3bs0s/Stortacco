<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">

        <link rel="icon" href="Estilos/imagenes/logoModificado.ico">

        <!-- contenidos de cabezera y pie de pagina -->
        <link rel="stylesheet" type="text/css" href="Estilos/css/header.css">
        <link rel="stylesheet" type="text/css" href="Estilos/css/footer.css">
        <!--- contenido de registro y acceso --->
        <link rel="stylesheet" type="text/css" href="Estilos/css/acceder.css">
        <link rel="stylesheet" type="text/css" href="Estilos/css/registrar.css">
        <!-- contenidos de los roles -->
        <link rel="stylesheet" type="text/css" href="Estilos/css/contenido.css">
        <link rel="stylesheet" type="text/css" href="Estilos/css/modoResponsive.css">
        <link rel="stylesheet" type="text/css" href="Estilos/css/contenidodellosRoles.css">
        <link rel="stylesheet" type="text/css" href="Estilos/css/sb-admin-2.css"/>
        <!-- contenido de nav social y icon -->
        <link rel="stylesheet" type="text/css" href="Estilos/fonts/fonts.css">
        <link rel="stylesheet" type="text/css" href="Estilos/fontsicon/css/font-awesome.min.css">
        <!-- contenido de las tables -->
        <link rel="stylesheet" type="text/css" href="Estilos/css/swiper.css">
        <link rel="stylesheet" type="text/css" href="Estilos/css/datatables.css">
        <link rel="stylesheet" type="text/css" href="Estilos/css/dataTables.bootstrap4.css">
        <!-- bootstrap-->
        <link rel="stylesheet" type="text/css" href="Estilos/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
        <title>Roles</title>
    </head>
    <body>


        <%
            HttpSession se = request.getSession();
            String rol = "invitado";
            String nombreU = "";
            int idU = 0;
            if (se.getAttribute("Rol") == null || se.getAttribute("Rol").equals("invitado")) {
                rol = "invitado";
            } else {
                rol = (String) se.getAttribute("Rol");
            }
            if (rol.equals("cliente")) {

        %>


        <!------------------------rol Usuario logeado------------------------------>       
        <nav class="nav">
            <div class="navlogoBL">
                <a href="indexUsuario.jsp"><img src="Estilos/imagenes/logoModificado.png" alt="Logo"></a>
            </div>
            <div class="navlogoVT">
                <a href="indexUsuario.jsp"><img src="Estilos/imagenes/logoModificado.png" alt="Logo Nav Sticky"></a>
            </div>

            <div class="toogle-menu fas fa-bars"></div>
            <div class="navmodu">
                <ul class="navuls">
                    <li><a href="#carta">LICORES</a></li>
                    <li><a href="RegistrarReserva.jsp">RESERVAS</a></li>
                </ul>
            </div>
            <div class="navsingup">
                <ul class="navuls">
                    <li><a href="perfil.jsp" class="far fa-address-card"></a></li>
                    <li><a href="Salir" class="fas fa-sign-in-alt"></a></li>
                </ul>
            </div>
        </nav>


        <!-------------------------rol invitado------------------------------------->

        <%  } else if (rol.equals("invitado")) {
        %>

        <nav class="nav">
            <div class="navlogoBL">
                <a href="indexUsuario.jsp"><img src="Estilos/imagenes/logoModificado.png" alt="Logo"></a>
            </div>
            <div class="navlogoVT">
                <a href="indexUsuario.jsp"><img src="Estilos/imagenes/logoModificado.png" alt="Logo Nav Sticky"></a>
            </div>
            <div class="toogle-menu fas fa-bars"></div>
            <div class="navmodu">
                <ul class="navuls">
                    <li><a href="#carta">LICORES</a></li>
                    <li><a href="#cont">CONTACTANOS</a></li>
                    <li><a href="#Dmas">DESCUBRE MAS</a></li>
                </ul>
            </div>       

            <div class="navsingup">
                <ul class="navuls">
                    <li><a href="Ingresar" class="fas fa-user"></a></li>
                    <li><a href="RegistrarUsuario.jsp" class="fas fa-vcard"></a></li>
                </ul>
            </div>
        </nav>


        <!-------------------------rol Administrador-------------------------------->      

        <%  } else if (rol.equals("administrador")) {
        %>
        <nav class="nav">
            <div class="navlogoBL">
                <a href="indexUsuario.jsp"><img src="Estilos/imagenes/logoModificado.png" alt="Logo"></a>
            </div>
            <div class="navlogoVT">
                <a href="indexUsuario.jsp"><img src="Estilos/imagenes/logoModificado.png" alt="Logo Nav Sticky"></a>
            </div>

            <div class="toogle-menu fas fa-bars"></div>
            <div class="navmodu">
                <ul class="navuls">

                    <li><a href="Ventas">VENTAS</a></li>
                    <li><a href="Proveedores">PROVEEDORES</a></li>
                    <li><a href="Productos">PRODUCTOS</a></li>
                    <li><a href="Reservas">RESERVAS</a></li>
                    <li><a href="Usuarios">USUARIOS</a></li>
                </ul>
            </div>
            <div class="navsingup">
                <ul class="navuls">
                    <li><a href="perfil.jsp"class="fas fa-user-tie"></a></li>
                    <li><a href="Salir" class="fas fa-sign-in-alt"></a></li>
                </ul>
            </div>
        </nav>
        <nav class="nav-rem">

        </nav>

        <!--------------------------rol Gerente-------------------------------------->  

        <%
        } else if (rol.equals("gerente")) {
        %>
        <nav class="nav">
            <div class="navlogoBL">
                <a href="indexUsuario.jsp"><img src="Estilos/imagenes/logoModificado.png" alt="Logo"></a>
            </div>
            <div class="navlogoVT">
                <a href="indexUsuario.jsp"><img src="Estilos/imagenes/logoModificado.png" alt="Logo Nav Sticky"></a>
            </div>

            <div class="toogle-menu fas fa-bars"></div>
            <div class="navmodu">
                <ul class="navuls">

                    <li><a href="Ventas">VENTAS</a></li>
                    <li><a href="Proveedores">PROVEEDORES</a></li>
                    <li><a href="Productos">PRODUCTOS</a></li>
                    <li><a href="Reservas">RESERVAS</a></li>
                    <li><a href="Usuarios">USUARIOS</a></li>
                </ul>
            </div>

            <div class="navsingup">
                <ul class="navuls">
                    <li><a href="perfil.jsp" class="fas fa-user-tie"></a></li>
                    <li><a href="Salir" class="fas fa-sign-in-alt"></a></li>
                </ul>
            </div>
        </nav>
        <nav class="nav-rem">

        </nav>
        <%}%>

    </body>
</html>

