<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Perfil</title>
    </head>
    <%@include file="header.jsp" %>
    <body class="bodycont">


        <div class="container-fluid contentper d-flex align-items-center">
            <div class="row">
                <div class="col-md-8">

                    <div class="cardUno">
                        <div class="card-head">
                            <h5 class="title">Perfil</h5>
                        </div>

                        <div class="card-body">
                            <form>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group has-label">
                                            <div class="mb-0">
                                                <label> Bar </label>
                                                <input aria-describedby="addon right addon left" type="text" placeholder="Stortacco" disabled="disable" class="form-control"/>
                                            </div>
                                        </div>
                                    </div>
                                    <!---->
                                    <div class="col-md-6">
                                        <div class="form-group has-label">
                                            <div class="mb-0">
                                                <label> Correo </label>
                                                <input aria-describedby="addon right addon left" type="text" placeholder="Cuadrosc99@gmail.com" class="form-control" />
                                            </div>
                                        </div>
                                    </div>
                                    <!---->

                                    <!---->
                                    <div class="col-md-4">
                                        <div class="form-group has-label">
                                            <div class="mb-0">
                                                <label> Nombres </label>
                                                <input aria-describedby="addon right addon left" type="text"
                                                       placeholder="Nombres" class="form-control" />
                                            </div>
                                        </div>
                                    </div>

                                    <!---->
                                    <div class="col-md-4">
                                        <div class="form-group has-label">
                                            <div class="mb-0">
                                                <label> Apellidos </label>
                                                <input aria-describedby="addon right addon left" type="text"
                                                       placeholder="Apellidos" class="form-control" />
                                            </div>
                                        </div>
                                    </div>


                                    <!---->
                                    <div class="col-md-4">
                                        <div class="form-group has-label">
                                            <div class="mb-0">
                                                <label> Dirección </label>
                                                <input aria-describedby="addon right addon left" type="text"
                                                       placeholder="Dirección" class="form-control" />
                                            </div>
                                        </div>
                                    </div>


                                    <!---->
                                    <div class="col-md-6">
                                        <div class="form-group has-label">
                                            <div class="mb-0">
                                                <label> Numero de Identificación </label>
                                                <input aria-describedby="addon right addon left" type="text" disabled="disable"
                                                       placeholder="1036687393" class="form-control" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group has-label">
                                            <div class="mb-0">
                                                <label> Pais </label>
                                                <input aria-describedby="addon right addon left" type="text"
                                                       placeholder="country" class="form-control" />
                                            </div>
                                        </div>
                                    </div>

                                    <!---->
                                    <div class="col-md-12">
                                        <div class="form-group has-label">
                                            <div class="mb-0">
                                                <label> Acerca de Stortacco </label>
                                                <textarea placeholder="Zip code" class="form-control">
                                                </textarea>
                                            </div>
                                        </div>
                                    </div>

                                    <!---->
                                    <div class="col-md-12">
                                        <button type="submit" class=" btn btn-block per py-2 "> Actualizar </button>
                                    </div>

                                </div>

                            </form>
                        </div>

                        <!-- Parte dos-->
                    </div>
                </div>

                <div class="col-md-4">

                    <!-- Cuerpo-->
                    <div class="card card-user">
                        <!-- Contenido-->
                        <div class="card-body">
                            <p class="card-text"></p>
                            <div class="autor">
                                <div class="block block-uno"></div>
                                <div class="block block-dos"></div>
                                <div class="block block-tres"></div>
                                <div class="block block-cuatro"></div>
                                <a href="">
                                    <img src="" alt="avatar" class="avatar" />
                                    <h5 class="title"> JuanJo </h5>
                                    <hr class="h">
                                </a>
                                <p class="description"> Administrador </p>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>


        <!---->
        <footer class="footerper">
            <div class="container-fluid">
                <ul class="navper">
                    <li class=""></li>
                    <li class=""></li>
                    <li class=""></li>
                </ul>
                <div class="copyright">

                </div>
            </div>
        </footer>
    </body>
    <%@include file="footer.jsp" %>
</html>
