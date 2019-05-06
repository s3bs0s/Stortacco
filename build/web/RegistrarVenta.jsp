<%@page import="com.Stortacco.beans.Productos"%>
<%@page import="com.Stortacco.beans.Ventas"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Registrar Venta</title>

    </head>

    <%@include file="header.jsp" %>

    <body onload="mueveReloj()" class="bodycont">

        <!--Bienvenida-->
        <div class="Bienvenido">
            <div class="bi">
                <p> Registrar Venta </p>
            </div>
        </div>

        <!-- Listamiento de ventas incompleta -->
        <div class="Venta">
            <section class="cuerpo">
                <div class="cuerpoNav">
                    <button type="button" onclick="window.location = 'Ventas'" class="btn">Mesas</button>
                </div>
                <div class="cajRegistrarVenta">
                    <form>
                        <%  nombreU = "";
                            String numMesa = "";

                            if (se.getAttribute("Nombre") != null) {
                                nombreU = (String) se.getAttribute("Nombre");
                                numMesa = (String) request.getParameter("Mesa");
                            }%>
                        <div class="headerRegistrarVenta">
                            <div class="hUsuarioRegistrarVenta">
                                <label for="nomusuarioRV">Usuario:</label>
                                <input disabled value="<%= nombreU%>" type="text" class="form-control" id="nomusuarioRV" name="nomusuarioRV">
                            </div>
                            <div class="hFechaRegistrarVenta">
                                <label for="fechaRV">Fecha:</label>
                                <input disabled type="text" class="form-control" id="fechaRV" name="fechaRV">
                            </div>
                            <div class="hHoraRegistrarVenta">
                                <label for="horaRV">Hora:</label>
                                <input disabled type="text" class="form-control" id="horaRV" name="horaRV">
                            </div>
                            <div class="hMesaRegistrarVenta">
                                <label for="mesaRV">Mesa:</label>
                                <input disabled value="<%= numMesa%>" type="text" class="form-control" id="mesaRV" name="mesaRV">
                            </div>
                        </div>
                        <div class="aggRegistrarVenta">
                            <div>
                                <div class="aggCodigoRegistrarVenta">
                                    <label for="codigoRV">Código:</label>
                                    <input disabled type="text" class="form-control" id="codigoRV" name="codigoRV">
                                </div>
                                <div class="ui-widget aggNombreRegistrarVenta" >
                                    <label for="nombreRV">Nombre:</label>
                                    <select onchange="autocompletadoAggProducto(this.value)" class="form-control" name="nombreRV" id="nombreRV">
                                        <option value="">Seleccione</option>
                                        <% ArrayList<Productos> apr = (ArrayList) request.getAttribute("listaP");
                                            for (Productos pr : apr) {%>
                                                <option value="<%= pr.getIdProductos()%>;<%= pr.getPrecioVenta()%>"><%= pr.getNombre()%></option>
                                        <% } %>
                                    </select>
                                </div>



                                <div class="aggCantidadRegistrarVenta">
                                    <label for="cantidadRV">Cantidad:</label>
                                    <input type="text" onkeyup="cambioPrecioCantidad(this.value)" onkeypress="return acceptNum(event)" class="form-control" id="cantidadRV" name="cantidadRV">
                                </div>
                                <div class="aggPrecioRegistrarVenta">
                                    <label for="precioRV">Precio:</label>
                                    <input disabled  type="text" class="form-control" id="precioRV" name="precioRV">
                                </div>
                            </div>
                            <div>
                                <button type="button" id="buttonRV" class="btn">Agregar Producto</button>
                            </div>
                        </div>
                        <div class="bodyRegistrarVenta">
                            <div class="bodyTableRegistrarVenta">
                                <table class="table-bordered table">
                                    <thead>
                                        <tr>
                                            <th>Código</th>
                                            <th>Nombre</th>
                                            <th>Cantidad</th>
                                            <th>Precio</th>
                                            <th>Acciones</th>
                                        </tr>
                                    </thead>

                                    <tbody id="tablaProductos">

                                    </tbody>
                                </table>
                            </div>
                            <div class="bodyInfoRegistrarVenta">
                                <div class="bodyTotalRegistrarVenta">
                                    <label for="totalRV">Total:</label>
                                    <input disabled type="text" class="form-control" id="totalRV" name="totalRV">
                                </div>
                                <div class="bodyPagaRegistrarVenta">
                                    <label for="pagaRV">Paga:</label>
                                    <input type="text" onkeyup="formatPago(this.value)" class="form-control" onblur="agregarCambioDePago(this.value)"  onkeypress="return acceptNum(event)" id="pagaRV" name="pagaRV">
                                </div>
                                <div class="bodyCambioRegistrarVenta">
                                    <label for="cambioRV">Cambio:</label>
                                    <input disabled type="text" class="form-control" id="cambioRV" name="cambioRV">
                                </div>
                                <div class="bodyRegistrarRegistrarVenta">
                                    <button type="button" id="btnRV" class="btn">Registrar Venta</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </section>
        </div>
    </body>
    <%@include file="footer.jsp" %>
</html>
