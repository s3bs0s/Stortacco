<%@page import="com.Stortacco.beans.Productos"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Productos</title>
    </head>
    <%@include file="header.jsp" %>
    <body class="bodycont">


        <%String M = request.getParameter("mensaje");
            if (M != null) {%>

        <% if (M.equals("SI")) { %>
        <div class="alert alert-success alert-dismissible">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            <strong>Registro exitoso!</strong> El producto se a registrado.
        </div>
        <% } else if (M.equals("NO")) { %>
        <div class="alert alert-warning alert-dismissible">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            <strong>Error!</strong> No se pudo registrar!
        </div>
        <% } else if (M.equals("NBD")) { %>
        <div class="alert alert-warning alert-dismissible">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            <strong>Error!</strong> No se pudo registrar!
        </div>
        <%}%>
        <%}%>

        <!--Bienvenida-->
        <div class="Bienvenido">
            <div class="bi">  
                <p> Productos </p>
            </div>
        </div>

        <!--Registrar productos-->
        <div class="Productos">
            <div> 
                <section class="cuerpo">
                    <div class="cuerpoNav">
                        <button type="button" id="BtnListar" class="btn">Listar Productos</button>
                        <button type="button" id="BtnRegistrar" class="btn">Registrar Producto</button>
                    </div>
                    <article id="Registrar">
                        <form action="Producto" method="post" class="p-4 bg-dark-opaque" >
                            <h4 class="mb-4 text-center" id="h4">Registrar Producto</h4>

                            <div class="form-group" >
                                <label for="nom">Nombre</label>
                                <input  type="text" class="form-control"  maxlength="45"  id="nom" name="nom" required> </div>


                            <div class="form-group"> 
                                <label for="des">Descripcion del Producto</label>
                                <input type="text" class="form-control" id="des" name="des"> 
                            </div>

                            <div class="form-group"> 
                                <label for="can">Cantidad</label>
                                <input type="text" class="form-control"  maxlength="11" pattern="[0-9.]+" id="can" name="can" required>
                            </div>

                            <div class="form-group"> 
                                <label for="prec">Precio Compra</label>
                                <input type="text" class="form-control"  maxlength="14" pattern="[0-9.]+" id="prec" name="prec" required>
                            </div>

                            <div class="form-group"> 
                                <label for="prev">Precio Venta</label>
                                <input type="text" class="form-control"  maxlength="14" pattern="[0-9.]+" id="prev" name="prev" required>
                            </div>

                            <div class="form-group"> 
                                <label for="prove">Proveedor</label>
                                <select class="form-control" id="prove" name="prove">
                                    <option value="1">Fabrica de Licores</option>
                                    <option value="2">Pilsen</option>

                                </select>
                            </div>
                            <!-- botones de registrar -->
                            <div>
                                <button type="submit" class="btn Registrar" value="registrar"><b>Registrar</b></button>
                                <button type="button" class="btn Cancelar"><b>Cancelar</b></button>
                            </div>
                        </form>     
                    </article>





                    <!-- listar productos -->
                    <article id="Listar">
                        <%
                            ArrayList<Productos> apd = (ArrayList) request.getAttribute("lista");
                        %>
                        <table class="tablasListar table table-bordered ">
                            <thead>
                                <tr>
                                    <th>Nombre</th>
                                    <th>Cantidad</th>
                                    <th>Acciones</th>

                                </tr>
                            </thead>

                            <tbody>
                                <%
                                    for (Productos ap : apd) {
                                %>
                                <tr>
                                    <td><%=ap.getNombre()%></td>
                                    <td><%=ap.getCantidad()%></td>

                                    <td>
                                        <button type="button" class="btn btn-info" data-toggle="modal" data-target="#modal1" onclick="ProductosVer('<%=ap.getIdProductos()%>', '<%= ap.getDescripcionProducto()%>', '<%= ap.getFechaIngreso()%>', '<%= ap.getPrecioCompra()%>', '<%= ap.getPrecioVenta()%>', '<%= ap.getIdProveedor()%>')"><span class="fas fa-eye"></span></button>
                                        <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#modal2" onclick="ProductosActualizar('<%=ap.getIdProductos()%>', '<%=ap.getNombre()%>', '<%= ap.getDescripcionProducto()%>', '<%=ap.getCantidad()%>', '<%= ap.getPrecioCompra()%>', '<%= ap.getPrecioVenta()%>', '<%= ap.getIdProveedor()%>')"><span class="fas fa-edit"></span></button>
                                        <button type="button" class="btn btn-danger" onClick="window.location = 'EProducto?idP=' +<%= ap.getIdProductos()%>;"><span class="fas fa-trash-alt"></span></button>
                                    </td>
                                </tr>
                                <%}%>
                            </tbody>
                        </table>



                        <!-----Ventana modal de Listar------>    
                        <div class="modal fade" id="modal1" role="dialog">
                            <div class="modal-dialog modal-sm">


                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h4 class="modal-title"><span>Detalles Productos</span><span class="title-bottom"><span class="title-bottom fas fa-eye"></span></span></h4>
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="">
                                            <div>
                                                <div>
                                                    <p>idProductos:</p>
                                                    <p  id="idProductos"></p>
                                                </div>
                                                <div>
                                                    <p>Descripcion:</p>
                                                    <p  id="Descrip"></p>
                                                </div>
                                            </div>
                                            <hr>
                                            <div>
                                                <div>
                                                    <p>Fecha Ingreso:</p>
                                                    <p id="Fechai"></p>
                                                </div>
                                                <div>
                                                    <p>Precio Compra:</p>
                                                    <p  id="Precioc"></p>
                                                </div>
                                            </div>
                                            <hr>
                                            <div>
                                                <div>
                                                    <p >Precio Venta:</p>
                                                    <p  id="Preciov"></p>
                                                </div>
                                                <div>
                                                    <p>Id Proveedor:</p>
                                                    <p  id="idprovee"></p>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="modal fade" id="modal2" role="dialog">
                            <div class="modal-dialog modal-sm">


                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h4 class="modal-title"><span>Editar Producto</span><span class="title-bottom"><span class="fas fa-edit"></span></span></h4>
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    </div>
                                    <div class="modal-body">
                                        <form action="AProducto" method="post">
                                            <div class="form-group" style="visibility:hidden; position:absolute; top:0;"> 
                                                <label>idProductos</label>
                                                <input  type="text" class="form-control"   id="idproductos" name="idproductos" >
                                            </div>

                                            <div class="form-group" >
                                                <label for="nombre">Nombre</label>
                                                <input  type="text" class="form-control"  maxlength="45"  id="nombre" name="nombre" required> 
                                            </div>


                                            <div class="form-group"> 
                                                <label for="descripcionp">Descripcion del Producto</label>
                                                <input type="text" class="form-control" id="descripcionp" name="descripcionp"> 
                                            </div>

                                            <div class="form-group"> 
                                                <label for="cantidad">Cantidad</label>
                                                <input type="text" class="form-control"  maxlength="11" pattern="[0-9.]+" id="cantidad" name="cantidad" required>
                                            </div>

                                            <div class="form-group"> 
                                                <label for="precioc">Precio Compra</label>
                                                <input type="text" class="form-control"  maxlength="14" pattern="[0-9.]+" id="precioc" name="precioc" required>
                                            </div>

                                            <div class="form-group"> 
                                                <label for="preciov">Precio Venta</label>
                                                <input type="text" class="form-control"  maxlength="14" pattern="[0-9.]+" id="preciov" name="preciov" required>
                                            </div>

                                            <div class="form-group"> 
                                                <label for="proveedor">Proveedor</label>
                                                <select class="form-control" id="proveedor" name="proveedor">
                                                    <option value="1">Fabrica de Licores</option>
                                                    <option value="2">Pilsen</option>
                                                </select>
                                            </div>
                                            <!-- botones de registrar -->
                                            <div>
                                                <button type="submit" class="btn Registrar" ><b>Actualizar</b></button>
                                                <button type="button" class="btn Cancelar"><b>Cancelar</b></button>
                                            </div>
                                        </form>  
                                    </div>   
                                </div>
                            </div>
                        </div>
                    </article>
                </section>
            </div>
        </div>
    </body>

    <%@include file="footer.jsp" %>
</html>
