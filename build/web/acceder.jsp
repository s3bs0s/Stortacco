<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Acceder</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="Estilos/css/acceder.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">


        <%@include file="header.jsp" %>
    </head>

    <body class="body">


        <%String M = request.getParameter("mensaje");
            if (M != null) {%>

        <% if (M.equals("NBD")) { %>
        <div class="alert alert-danger alert-dismissible">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            <strong>Error!</strong> No se pudo acceder, por un error en la base de datos.
        </div>
        <% } else if (M.equals("NO")) { %>
        <div class="alert alert-warning alert-dismissible">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            <strong>Advertencia!</strong> No se pudo acceder, la contraseña o el email no existen!
        </div>
        <% } else if (M.equals("SI")) { %>
        <div class="alert alert-success alert-dismissible">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            <strong>Bienvenido!</strong> Ingresaste a Stortacco!
        </div>

        <%}%>
        <%}%>

        <!------ Ventana de acceso ------------>
        <div class="py-5" >
            <div class="row">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3"> </div>
                        <div class="col-lg-6 p-3 animate-in-down">
                            <form action="Acceder" method="POST" class="p-4 bg-dark-opaque">
                                <h4 class="mb-4 text-center" id="h4">Bienvenido Stortacco</h4>


                                <div class="form-group" > <label for="cor">Correo</label>
                                    <input type="email" class="form-control" placeholder="Ingrese su correo" id="email" name="email" > 
                                </div>

                                <div class="form-group"> <label for="con">Contraseña</label>
                                    <input type="password" class="form-control" placeholder="Ingrese su contraseña" id="pass" name="pass"> 
                                </div>

                                <div id="conOl">
                                    <li><a href="#">Olvido su contraseña</a></li>
                                </div>
                                <div>
                                    <button type="submit" class="btn mt-4 btn-block p-2" id="btnA" value="Acceder" ><b>Acceder</b></button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </body>
    <%@include file="footer.jsp" %>
</html>
