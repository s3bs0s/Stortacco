<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
    </head>
    <%@include file="header.jsp" %>

    <body class="bodycont">

        <!-- Index Invitado -->    
        <%
            rol = "invitado";

            if (se.getAttribute("Rol") == null || se.getAttribute("Rol").equals("invitado")) {
                rol = "invitado";
            } else {
                rol = (String) se.getAttribute("Rol");
                idU = (int) se.getAttribute("idUsuarios");
            }
            if (rol.equals("invitado") || rol == null) {

        %>


        <!--carrusel de Bienvenida-->
        <div class="container_carrusel">
            <ul class="carrusel">
                <li>
                    <img src="Estilos/imagenes/FotoUnoCarruselUsuario.jpg">
                    <section class="flex">
                        <p>¡Bienvenido!</p>
                    </section>
                </li>
                <li>
                    <img src="Estilos/imagenes/FotoCincoCarruselUsuario.jpg">
                    <section class="flex">
                        <p>¡Conócenos más!</p>
                    </section>
                </li>
                <li>
                    <img src="Estilos/imagenes/FotoTresCarruselUsuario.jpg">
                    <section class="flex">
                        <p>¡Registrate!</p>
                    </section>
                </li>
                <li>
                    <img src="Estilos/imagenes/FotoCuatroCarruselUsuario.jpg">
                    <section class="flex">
                        <p>¡Contactanos!</p>
                    </section>
                </li>
                <li>
                    <img src="Estilos/imagenes/FotoCincoCarruselUsuario.jpg">
                    <section class="flex">
                        <p>¡Ven y disfruta de nuestros productos!</p>
                    </section>
                </li>
            </ul>
        </div>


        <!-- Seccion de Cervezas -->
        <article class="container-fluid indexUsu-carta" id="carta">
            <div class="li">
                <h1>Licores</h1>
            </div>
            <!--contenido agregado de liscores-->
            <!-- contenido del swiper -->
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="imgBx">
                            <img src="Estilos/imagenes/cervezaAguila.jpg">
                        </div>
                        <div class="details">
                            <h3>Aguila</h3><button type="button" class="btn bP">Ver Más</button>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="imgBx">
                            <img src="Estilos/imagenes/cervezapilsen.jpg">
                        </div>
                        <div class="details">
                            <h3>Pilsen</h3><button type="button" class="btn bP">Ver Más</button>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="imgBx">
                            <img src="Estilos/imagenes/aguila-light.png">
                        </div>
                        <div class="details">
                            <h3>Aguila Cero</h3><button type="button" class="btn bP">Ver Más</button>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="imgBx">
                            <img src="Estilos/imagenes/cervezaHeineken.jpg">
                        </div>
                        <div class="details">
                            <h3>Heineken Pilsener</h3><button type="button" class="btn bP">Ver Más</button>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="imgBx">
                            <img src="Estilos/imagenes/artesanal.jpg">
                        </div>
                        <div class="details">
                            <h3>BBC Artesanal</h3><button type="button" class="btn bP">Ver Más</button>
                        </div> 
                    </div>
                    <div class="swiper-slide">
                        <div class="imgBx">
                            <img src="Estilos/imagenes/clubcolombia.png">
                        </div>
                        <div class="details">
                            <h3>Club Colombia</h3><button type="button" class="btn bP">Ver Más</button>
                        </div>
                    </div>
                </div>
                <!-- Paginacion -->
                <div class="swiper-pagination"></div>
            </div>
        </article> 


        <!----- contenido de los licores ------->
        <div class="licores">     
            <section>
                <article class=" indexUsu-carta">

                    <!--contenido agregado de liscores-->
                    <!-- contenido del swiper -->
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="imgBx">
                                    <img src="Estilos/imagenes/Vodka.jpg">
                                </div>

                                <div class="details">
                                    <h3>Abolute Vodka</h3><button type="button" class="btn bP">Ver Más</button>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="imgBx">
                                    <img src="Estilos/imagenes/tequilaR.jpg">
                                </div>
                                <div class="details">
                                    <h3>Tequila Reserva</h3><button type="button" class="btn bP">Ver Más</button>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="imgBx">
                                    <img src="Estilos/imagenes/AnC.jpg">
                                </div>
                                <div class="details">
                                    <h3>Aguardiente Antioqueño</h3><button type="button" class="btn bP">Ver Más</button>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="imgBx">
                                    <img src="Estilos/imagenes/Aan.png">
                                </div>
                                <div class="details">
                                    <h3>Aguardiente Antioqueño</h3><button type="button" class="btn bP">Ver Más</button>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="imgBx">
                                    <img src="Estilos/imagenes/tequilaS.jpg">
                                </div>
                                <div class="details">
                                    <h3>Tequila Silver</h3><button type="button" class="btn bP">Ver Más</button>
                                </div> 
                            </div>
                            <div class="swiper-slide">
                                <div class="imgBx">
                                    <img src="Estilos/imagenes/jack.jpg">
                                </div>
                                <div class="details">
                                    <h3>Whiskey Jack Daniels</h3><button type="button" class="btn bP">Ver Más</button>
                                </div>
                            </div>
                        </div>
                        <!-- Paginacion -->
                        <div class="swiper-pagination"></div>
                    </div>
                </article> 
            </section>
        </div>  




        <!--------------------- Sección Descubra Más ----------------------------->
        <div class="slide active" id="Dmas">
            <div class="card">
                <div class="card-img">

                    <div class="card-cont">
                        <p>
                            Stortacco en un momento de 
                            inspiración para nosotros y
                            queremos lograr cosas grandiosas
                            con este proyecto
                        </p>
                    </div>

                </div>
                <div class="card-content">
                    <p class="card-theme">Descubre más</p>
                    <h2 class="card-header">EL secreto De Stortacco</h2>
                </div>
            </div>
        </div>

        <div class="slide">
            <div class="card">
                <div class="card-img">

                    <div class="card-cont">
                        <p>
                            Ven y descubre nuestra gran
                            vriedad de lIcores en nuestra sección
                        </p>
                    </div>

                </div>
                <div class="card-content">
                    <p class="card-theme">Descubre más</p>
                    <h2 class="card-header">Los Mejores licores</h2>
                </div>
            </div>
        </div>


        <div class="slide">
            <div class="card">
                <div class="card-img">

                    <div class="card-cont">
                        <p>
                            asdfasdfafsadffasdfasd
                            sdafasdfasdfasdfsadfas
                            sdafsadfasdfasdfsadfas
                            asdfasdfasdfasdfsdafsf
                            sadfsadfsadfasdfsadfsa
                        </p>
                    </div>

                </div>
                <div class="card-content">
                    <p class="card-theme">Descubre más</p>
                    <h2 class="card-header">Reserva y conoce</h2>
                </div>
            </div>
        </div>


        <!-- Index Usuario logeado -->    
        <%  } else if (rol.equals("cliente")) {
        %>

        <!--carrusel de Bienvenida-->
        <div class="container_carrusel">
            <ul class="carrusel">
                <li>
                    <img src="Estilos/imagenes/FotoUnoCarruselCliente.jpg">
                    <section class="flex">
                        <p>¡Bienvenido!</p>
                    </section>
                </li>
                <li>
                    <img src="Estilos/imagenes/FotoDosCarruselCliente.jpg">
                    <section class="flex">
                        <p>¿Conócenos más!</p>
                    </section>
                </li>
                <li>
                    <img src="Estilos/imagenes/FotoTresCarruselCliente.jpg">
                    <section class="flex">
                        <p>¡Registrate!</p>
                    </section>
                </li>
                <li>
                    <img src="Estilos/imagenes/FotoCuatroCarruselCliente.jpg">
                    <section class="flex">
                        <p>¡Contactanos!</p>
                    </section>
                </li>
                <li>
                    <img src="Estilos/imagenes/FotoCincoCarruselCliente.jpg">
                    <section class="flex">
                        <p>¡Ven y disfruta de nuestros productos!</p>
                    </section>
                </li>
            </ul>
        </div>


        <!-- Seccion de Cervezas -->
        <article class="container-fluid indexUsu-carta" id="carta">
            <div class="">
                <h1>Licores</h1>
            </div>
            <!--contenido agregado de liscores-->
            <!-- contenido del swiper -->
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="imgBx">
                            <img src="Estilos/imagenes/cervezaAguila.jpg">
                        </div>
                        <div class="details">
                            <h3>Aguila</h3><button type="button" class="btn bP">Ver Más</button>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="imgBx">
                            <img src="Estilos/imagenes/cervezaPilsen.png">
                        </div>
                        <div class="details">
                            <h3>Pilsen</h3><button type="button" class="btn bP">Ver Más</button>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="imgBx">
                            <img src="Estilos/imagenes/aguila-light.png">
                        </div>
                        <div class="details">
                            <h3>Aguila Cero</h3><button type="button" class="btn bP">Ver Más</button>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="imgBx">
                            <img src="Estilos/imagenes/cervezaHeineken.jpg">
                        </div>
                        <div class="details">
                            <h3>Heineken Pilsener</h3><button type="button" class="btn bP">Ver Más</button>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="imgBx">
                            <img src="Estilos/imagenes/artesanal.jpg">
                        </div>
                        <div class="details">
                            <h3>BBC Artesanal</h3><button type="button" class="btn bP">Ver Más</button>
                        </div> 
                    </div>
                    <div class="swiper-slide">
                        <div class="imgBx">
                            <img src="Estilos/imagenes/clubcolombia.png">
                        </div>
                        <div class="details">
                            <h3>Club Colombia</h3><button type="button" class="btn bP">Ver Más</button>
                        </div>
                    </div>
                </div>
                <!-- Paginacion -->
                <div class="swiper-pagination"></div>
            </div>
        </article> 


        <!----- contenido de los licores ------->
        <div class="licores">     
            <section>
                <article class=" indexUsu-carta">

                    <!--contenido agregado de liscores-->
                    <!-- contenido del swiper -->
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="imgBx">
                                    <img src="Estilos/imagenes/Vodka.jpg">
                                </div>

                                <div class="details">
                                    <h3>Abolute Vodka</h3><button type="button" class="btn bP">Ver Más</button>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="imgBx">
                                    <img src="Estilos/imagenes/tequilaR.jpg">
                                </div>
                                <div class="details">
                                    <h3>Tequila Reserva</h3><button type="button" class="btn bP">Ver Más</button>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="imgBx">
                                    <img src="Estilos/imagenes/AnC.jpg">
                                </div>
                                <div class="details">
                                    <h3>Aguardiente Antioqueño</h3><button type="button" class="btn bP">Ver Más</button>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="imgBx">
                                    <img src="Estilos/imagenes/Aan.png">
                                </div>
                                <div class="details">
                                    <h3>Aguardiente Antioqueño</h3><button type="button" class="btn bP">Ver Más</button>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="imgBx">
                                    <img src="Estilos/imagenes/tequilaS.jpg">
                                </div>
                                <div class="details">
                                    <h3>Tequila Silver</h3><button type="button" class="btn bP">Ver Más</button>
                                </div> 
                            </div>
                            <div class="swiper-slide">
                                <div class="imgBx">
                                    <img src="Estilos/imagenes/jack.jpg">
                                </div>
                                <div class="details">
                                    <h3>Whiskey Jack Daniels</h3><button type="button" class="btn bP">Ver Más</button>
                                </div>
                            </div>
                        </div>
                        <!-- Paginacion -->
                        <div class="swiper-pagination"></div>
                    </div>
                </article> 
            </section>
        </div> 




        <!--------------------- Sección Descubra Más ----------------------------->
        <div class="slide active" id="Dmas">
            <div class="card">
                <div class="card-img">

                    <div class="card-cont">
                        <p>
                            Stortacco en un momento de 
                            inspiración para nosotros y
                            queremos lograr cosas grandiosas
                            con este proyecto
                        </p>
                    </div>

                </div>
                <div class="card-content">
                    <p class="card-theme">Descubre más</p>
                    <h2 class="card-header">EL secreto De Stortacco</h2>
                </div>
            </div>
        </div>

        <div class="slide">
            <div class="card">
                <div class="card-img">

                    <div class="card-cont">
                        <p>
                            Stortacco en un momento de 
                            inspiración para nosotros y
                            queremos lograr cosas grandiosas
                            con este proyecto
                        </p>
                    </div>

                </div>
                <div class="card-content">
                    <p class="card-theme">Descubre más</p>
                    <h2 class="card-header">Los Mejores licores</h2>
                </div>
            </div>
        </div>


        <div class="slide">
            <div class="card">
                <div class="card-img">

                    <div class="card-cont">
                        <p>
                            Stortacco en un momento de 
                            inspiración para nosotros y
                            queremos lograr cosas grandiosas
                            con este proyecto
                        </p>
                    </div>

                </div>
                <div class="card-content">
                    <p class="card-theme">Descubre más</p>
                    <h2 class="card-header">Reserva y conoce</h2>
                </div>
            </div>
        </div>


        <!-- Index Administrador -->    
        <%  } else if (rol.equals("administrador")) {
        %>

        <div class="Bienvenido-Admin">
            <div class="Admin">
                <p>Bienvenido Administrador</p>
            </div>
        </div>

        <!--         Secciones cartas           -->

        <div class="Administrador container">

        </div>


        <!-- Index Gerente -->
        <%
        } else if (rol.equals("gerente")) {
        %>

        <div class="Bienvenido-Ge">
            <div class=" Gere">  
                <p> Bienvenido Gerente </p>
            </div>
        </div>


        <!--         Secciones cartas           -->

        <div class="Administrador container">

        </div>


        <% }%>

    </body>
    <%@include file="footer.jsp" %>
</html>
