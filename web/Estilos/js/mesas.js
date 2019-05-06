$(document).ready(function () {
    document.getElementById("codigoRV").value = "Seleccione";
    document.getElementById("nombreRV").value = "";
    document.getElementById("precioRV").value = "Seleccione";
    $("#cantidadRV").attr('disabled', '');
    document.getElementById("cantidadRV").value = "Seleccione";
    document.getElementById("pagaRV").value = 0;
    document.getElementById("cambioRV").value = 0;
});
function formatNumber(numero) {
    var resultado = "";
    var nuevoNumero = numero.toString();
    for (var j, i = nuevoNumero.length - 1, j = 0; i >= 0; i--, j++) {
        resultado = nuevoNumero.charAt(i) + ((j > 0) && (j % 3 === 0) ? "." : "") + resultado;
    }
    return resultado;
}
function formatPago(numero) {
    var pago = "";
    var nuevoNumero = resetNumber(numero);
    for (var j, i = nuevoNumero.length - 1, j = 0; i >= 0; i--, j++) {
        pago = nuevoNumero.charAt(i) + ((j > 0) && (j % 3 === 0) ? "." : "") + pago;
    }
    document.getElementById("pagaRV").value = pago;
    
}
function resetNumber(numero) {
    var resultado = numero.replace(/\./g, '');
    return resultado;
}


function autocompletadoAggProducto(infoproducto){
    if (infoproducto !== ""){
        
        document.getElementById("codigoRV").value;
        $("#cantidadRV").removeAttr('disabled');
        document.getElementById("cantidadRV").value = 1;
        var info = infoproducto.split(";");
        document.getElementById("codigoRV").value = info[0];
        document.getElementById("precioRV").value = formatNumber(info[1]);
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
    if(contenidoInput.length < 3){
        var infoPro= document.getElementById("nombreRV").value;
        var arrPrecio = infoPro.split(";");
        var precioCant = formatNumber(arrPrecio[1]*contenidoInput);;
        document.getElementById("precioRV").value = precioCant;
    }else {
        document.getElementById("cantidadRV").value = 1;
    }
}
function agregarCambioDePago(contenidoInput){
    if(contenidoInput!=="" && contenidoInput.length < 15){
        var total = document.getElementById("totalRV").value;
        var cambio = formatCambio(parseInt(resetNumber(contenidoInput))-parseInt(resetNumber(total)));
        document.getElementById("cambioRV").value = cambio;
    }else {
        document.getElementById("pagaRV").value = 0;
    }
}


let ls = localStorage,
    input_codigo = document.getElementById("codigoRV"),
    input_nombre = document.getElementById("nombreRV"),
    input_precio = document.getElementById("precioRV"),
    input_cantidad = document.getElementById("cantidadRV"),
    button = document.getElementById("buttonRV"),
    tablaProductos = document.getElementById("tablaProductos");

class producto{
    constructor(codigo, nombre, precio, cantidad){
        this.codigo = codigo;
        this.nombre = nombre;
        this.precio = precio;
        this.cantidad = cantidad;
    }       
}

class productos{
    constructor(key){
        this.key = key;
        if (!ls.getItem(this.key)) {
           ls.setItem(this.key, JSON.stringify([]));
        }
        this.addProduct = this.addProduct.bind(this);
        this.remove = this.remove.bind(this);

    }
    addProduct(e){
        e.preventDefault();
        let valueCodigo = input_codigo.value;
        let valueNombre = input_nombre.value;
        let valuePrecio;
        let valueCantidad;
        if (input_cantidad.value.length < 1 || input_cantidad.value === 0 || input_cantidad.value === "0"){
            valueCantidad = 1;
            var arrPrecio= document.getElementById("nombreRV").value.split(";");
            valuePrecio = arrPrecio[1];
        } else {
            valueCantidad = input_cantidad.value;
            valuePrecio = input_precio.value;
        }
 
        if (valueCodigo !== null){
            const productoObject = new producto(valueCodigo, valueNombre, resetNumber(valuePrecio), valueCantidad);

            let productos = JSON.parse(ls.getItem(this.key));
            productos.push(productoObject);
            ls.setItem(this.key, JSON.stringify(productos));
           
          if (productoObject(valueCodigo) === productoObject(valueCodigo)){
           
              productoObject.forEach(function (valueCantidad) {
              total += parseInt(valueCantidad);
            productoObject(valueCantidad).replace.total;         
             });
         }
     
            
            document.getElementById("codigoRV").value = "Seleccione";
            document.getElementById("nombreRV").value = "";
            document.getElementById("cantidadRV").value = "Seleccione";
            $("#cantidadRV").attr('disabled', '');
            document.getElementById("precioRV").value = "Seleccione";
            
            this.renderProducts(productoObject);
        }
    }
    remove(e){
        if (e.target.tagName === "BUTTON") {
            e.preventDefault();
            let productos = JSON.parse(ls.getItem(this.key)),
            indice = productos.findIndex(producto => producto.codigo.toString() === e.target.dataset.codigo);
            var total = document.getElementById("totalRV");
            total.value = parseInt(total.value)-parseInt(productos[indice].precio);
            productos.splice(indice,1);
            ls.setItem(this.key, JSON.stringify(productos));
            e.target.parentElement.parentElement.remove();
        }
    }
    renderProducts(producto){
        let templateTask = `
        <tr>
            <td>${producto.codigo}</td>
            <td>${producto.nombre}</td>
            <td>${producto.cantidad}</td>
            <td>${formatNumber(producto.precio)}</td>
            <td>
                <button type="button" class="btn btn-danger" data-codigo="${producto.codigo}"><span class="fas fa-trash-alt"></span> Remover</button>
            </td>
        </tr>
        `;
        var total = document.getElementById("totalRV");
        total.value = formatNumber(parseInt(resetNumber(total.value))+parseInt(producto.precio));
        tablaProductos.insertAdjacentHTML("beforeend",templateTask);
    }
    render(){
        let Arrayproductos = JSON.parse(ls.getItem(this.key));
        Arrayproductos.forEach(task => this.renderProducts(task));
    }
    actions(){
        button.addEventListener("click", this.addProduct);
        tablaProductos.addEventListener("click",this.remove);
    }
    
}
const productosObject = new productos("mesa"+document.getElementById("mesaRV").value);
productosObject.actions();
document.getElementById("totalRV").value = "0";
productosObject.render();