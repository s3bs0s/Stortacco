<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registra tu reserva</title>

        <%@include file="header.jsp" %>
    </head>
    <body>


        <h2 class="Rreserva"> Haz tu reserva hoy </h2>

        <div class="contenedorReserva container-fluid">
            <div>
                <!-- seccion uno de formulario -->
                <form>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group has-label">
                                <div class="mb-0">
                                    <label class="re"> Fecha de la reserva </label>
                                    <input aria-describedby="addon right addon left" type="date" placeholder="Stortacco" class="form-control"/>
                                </div>
                            </div>
                        </div>
                    </div>   
                    <div class="row">   
                        <div class="col-md-12">
                            <div class="form-group has-label">
                                <div class="mb-0">
                                    <label class="re"> Hora de la reserva </label>
                                    <input aria-describedby="addon right addon left" type="datetime" placeholder="Stortacco" class="form-control"/>
                                </div>
                            </div>
                        </div>
                    </div>   
                </form>
            </div>
        </div>
    </body>
</html>
