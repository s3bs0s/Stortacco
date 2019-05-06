$(document).ready(function () {
    document.getElementById("codigoRV").value = "Seleccione";
    document.getElementById("precioRV").value = "Seleccione";
    $("#cantidadRV").attr('disabled', '');
    document.getElementById("cantidadRV").value = "Seleccione";
    document.getElementById("pagaRV").value = 0;
    document.getElementById("cambioRV").value = 0;
    document.getElementById("totalRV").value = "0"; 
});
function autocompletadoAggProducto(infoproducto){
    if (infoproducto !== ""){
        var info = infoproducto.split(";");
        for (var i = 0; i < info.length; i++) {
            if (i===0){
                document.getElementById("codigoRV").value = info[i];
            }else {
                document.getElementById("precioRV").value = info[i];
            }
        }
        $("#cantidadRV").removeAttr('disabled');
        document.getElementById("cantidadRV").value = 1;
    }else{
        document.getElementById("codigoRV").value = "Seleccione";
        document.getElementById("precioRV").value = "Seleccione";
        $("#cantidadRV").attr('disabled', '');
        document.getElementById("cantidadRV").value = "Seleccione";
    }
}
var nav4 = window.Event ? true : false; 
function acceptNum(evt){
    var key = nav4 ? evt.which : evt.keyCode;
    return (key >= 48 && key <= 57);
}
function cambioPrecioCantidad(contenidoInput){
    if(contenidoInput!=="" && contenidoInput!== "0" && contenidoInput.length < 3){
        var infoPro= document.getElementById("nombreRV").value;
        var arrPrecio = infoPro.split(";");
        var precioCant = arrPrecio[1]*contenidoInput;
        document.getElementById("precioRV").value = precioCant;
    }else {
        document.getElementById("cantidadRV").value = 1;
    }
}
function agregarProducto(){
    if (document.getElementById("codigoRV").value !== "Seleccione"){
        document.getElementById("tablaProductos").innerHTML = document.getElementById("tablaProductos").innerHTML + "<tr id=\""+document.getElementById("codigoRV").value+"\"><td>"+document.getElementById("codigoRV").value+"</td><td>"+document.getElementById("nombreRV").options[document.getElementById("nombreRV").selectedIndex].text+"</td><td>"+document.getElementById("cantidadRV").value+"</td><td>"+document.getElementById("precioRV").value+"</td><td><button type=\"button\" class=\"btn btn-danger\"><span class=\"fas fa-trash-alt\"></span> Remover</button></td></tr>";
        
        var precio = document.getElementById("precioRV").value;
        document.getElementById("codigoRV").value = "Seleccione";
        document.getElementById("nombreRV").value = "";
        document.getElementById("cantidadRV").value = "Seleccione";
        $("#cantidadRV").attr('disabled', '');
        document.getElementById("precioRV").value = "Seleccione";
        var total = document.getElementById("totalRV");
        total.value = parseInt(total.value)+parseInt(precio);
        
    }
}
function agregarCambioDePago(contenidoInput){
    if(contenidoInput!=="" && contenidoInput.length < 15){
        var total = document.getElementById("totalRV").value;
        var cambio = parseInt(contenidoInput)-parseInt(total);
        document.getElementById("cambioRV").value = cambio;
    }else {
        document.getElementById("pagaRV").value = 0;
    }
}

//Codigo nuevo AV 

