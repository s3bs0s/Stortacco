package com.Stortacco.beans;

public class DetallesVentas {

    private Integer idDetallesVentas;
    private String cantidad;
    private int idProducto;
    private int idVenta;

    public DetallesVentas() {
    }

    public DetallesVentas(Integer idDetallesVentas) {
        this.idDetallesVentas = idDetallesVentas;
    }

    public DetallesVentas(Integer idDetallesVentas, String cantidad) {
        this.idDetallesVentas = idDetallesVentas;
        this.cantidad = cantidad;
    }

    public Integer getIdDetallesVentas() {
        return idDetallesVentas;
    }

    public void setIdDetallesVentas(Integer idDetallesVentas) {
        this.idDetallesVentas = idDetallesVentas;
    }

    public String getCantidad() {
        return cantidad;
    }

    public void setCantidad(String cantidad) {
        this.cantidad = cantidad;
    }

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    public int getIdVenta() {
        return idVenta;
    }

    public void setIdVenta(int idVenta) {
        this.idVenta = idVenta;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idDetallesVentas != null ? idDetallesVentas.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof DetallesVentas)) {
            return false;
        }
        DetallesVentas other = (DetallesVentas) object;
        if ((this.idDetallesVentas == null && other.idDetallesVentas != null) || (this.idDetallesVentas != null && !this.idDetallesVentas.equals(other.idDetallesVentas))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Stortacco.beans.DetallesVentas[ idDetallesVentas=" + idDetallesVentas + " ]";
    }
    
}
