/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Stortacco.beans;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author JONATHAN
 */
@Entity
@Table(name = "permisos")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Permisos.findAll", query = "SELECT p FROM Permisos p")
    , @NamedQuery(name = "Permisos.findByIdPermisos", query = "SELECT p FROM Permisos p WHERE p.idPermisos = :idPermisos")
    , @NamedQuery(name = "Permisos.findByRol", query = "SELECT p FROM Permisos p WHERE p.rol = :rol")
    , @NamedQuery(name = "Permisos.findByDetallesVentasInsert", query = "SELECT p FROM Permisos p WHERE p.detallesVentasInsert = :detallesVentasInsert")
    , @NamedQuery(name = "Permisos.findByDetallesVentasSelect", query = "SELECT p FROM Permisos p WHERE p.detallesVentasSelect = :detallesVentasSelect")
    , @NamedQuery(name = "Permisos.findByDetallesVentasUpdate", query = "SELECT p FROM Permisos p WHERE p.detallesVentasUpdate = :detallesVentasUpdate")
    , @NamedQuery(name = "Permisos.findByDetallesVentasDelet", query = "SELECT p FROM Permisos p WHERE p.detallesVentasDelet = :detallesVentasDelet")
    , @NamedQuery(name = "Permisos.findByInformacionUsuariosInsert", query = "SELECT p FROM Permisos p WHERE p.informacionUsuariosInsert = :informacionUsuariosInsert")
    , @NamedQuery(name = "Permisos.findByInformacionUsuariosSelect", query = "SELECT p FROM Permisos p WHERE p.informacionUsuariosSelect = :informacionUsuariosSelect")
    , @NamedQuery(name = "Permisos.findByInformacionUsuariosUpdate", query = "SELECT p FROM Permisos p WHERE p.informacionUsuariosUpdate = :informacionUsuariosUpdate")
    , @NamedQuery(name = "Permisos.findByInformacionUsuariosDelet", query = "SELECT p FROM Permisos p WHERE p.informacionUsuariosDelet = :informacionUsuariosDelet")
    , @NamedQuery(name = "Permisos.findByProductosInsert", query = "SELECT p FROM Permisos p WHERE p.productosInsert = :productosInsert")
    , @NamedQuery(name = "Permisos.findByProductosSelect", query = "SELECT p FROM Permisos p WHERE p.productosSelect = :productosSelect")
    , @NamedQuery(name = "Permisos.findByProductosUpdate", query = "SELECT p FROM Permisos p WHERE p.productosUpdate = :productosUpdate")
    , @NamedQuery(name = "Permisos.findByProductosDelet", query = "SELECT p FROM Permisos p WHERE p.productosDelet = :productosDelet")
    , @NamedQuery(name = "Permisos.findByProveedoresInsert", query = "SELECT p FROM Permisos p WHERE p.proveedoresInsert = :proveedoresInsert")
    , @NamedQuery(name = "Permisos.findByProveedoresSelect", query = "SELECT p FROM Permisos p WHERE p.proveedoresSelect = :proveedoresSelect")
    , @NamedQuery(name = "Permisos.findByProveedoresUpdate", query = "SELECT p FROM Permisos p WHERE p.proveedoresUpdate = :proveedoresUpdate")
    , @NamedQuery(name = "Permisos.findByProveedoresDelet", query = "SELECT p FROM Permisos p WHERE p.proveedoresDelet = :proveedoresDelet")
    , @NamedQuery(name = "Permisos.findByReservasInsert", query = "SELECT p FROM Permisos p WHERE p.reservasInsert = :reservasInsert")
    , @NamedQuery(name = "Permisos.findByReservasSelect", query = "SELECT p FROM Permisos p WHERE p.reservasSelect = :reservasSelect")
    , @NamedQuery(name = "Permisos.findByReservasUpdate", query = "SELECT p FROM Permisos p WHERE p.reservasUpdate = :reservasUpdate")
    , @NamedQuery(name = "Permisos.findByReservasDelet", query = "SELECT p FROM Permisos p WHERE p.reservasDelet = :reservasDelet")
    , @NamedQuery(name = "Permisos.findByUsuariosInsert", query = "SELECT p FROM Permisos p WHERE p.usuariosInsert = :usuariosInsert")
    , @NamedQuery(name = "Permisos.findByUsuariosSelect", query = "SELECT p FROM Permisos p WHERE p.usuariosSelect = :usuariosSelect")
    , @NamedQuery(name = "Permisos.findByUsuariosUpdate", query = "SELECT p FROM Permisos p WHERE p.usuariosUpdate = :usuariosUpdate")
    , @NamedQuery(name = "Permisos.findByUsuariosDelet", query = "SELECT p FROM Permisos p WHERE p.usuariosDelet = :usuariosDelet")
    , @NamedQuery(name = "Permisos.findByVentasInsert", query = "SELECT p FROM Permisos p WHERE p.ventasInsert = :ventasInsert")
    , @NamedQuery(name = "Permisos.findByVentasSelect", query = "SELECT p FROM Permisos p WHERE p.ventasSelect = :ventasSelect")
    , @NamedQuery(name = "Permisos.findByVentasUpdate", query = "SELECT p FROM Permisos p WHERE p.ventasUpdate = :ventasUpdate")
    , @NamedQuery(name = "Permisos.findByVentasDelet", query = "SELECT p FROM Permisos p WHERE p.ventasDelet = :ventasDelet")})
public class Permisos implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "idPermisos")
    private Integer idPermisos;
    @Basic(optional = false)
    @Column(name = "Rol")
    private String rol;
    @Column(name = "detalles_ventas_insert")
    private String detallesVentasInsert;
    @Column(name = "detalles_ventas_select")
    private String detallesVentasSelect;
    @Column(name = "detalles_ventas_update")
    private String detallesVentasUpdate;
    @Column(name = "detalles_ventas_delet")
    private String detallesVentasDelet;
    @Column(name = "informacion_usuarios_insert")
    private String informacionUsuariosInsert;
    @Column(name = "informacion_usuarios_select")
    private String informacionUsuariosSelect;
    @Column(name = "informacion_usuarios_update")
    private String informacionUsuariosUpdate;
    @Column(name = "informacion_usuarios_delet")
    private String informacionUsuariosDelet;
    @Column(name = "productos_insert")
    private String productosInsert;
    @Column(name = "productos_select")
    private String productosSelect;
    @Column(name = "productos_update")
    private String productosUpdate;
    @Column(name = "productos_delet")
    private String productosDelet;
    @Column(name = "proveedores_insert")
    private String proveedoresInsert;
    @Column(name = "proveedores_select")
    private String proveedoresSelect;
    @Column(name = "proveedores_update")
    private String proveedoresUpdate;
    @Column(name = "proveedores_delet")
    private String proveedoresDelet;
    @Column(name = "reservas_insert")
    private String reservasInsert;
    @Column(name = "reservas_select")
    private String reservasSelect;
    @Column(name = "reservas_update")
    private String reservasUpdate;
    @Column(name = "reservas_delet")
    private String reservasDelet;
    @Column(name = "usuarios_insert")
    private String usuariosInsert;
    @Column(name = "usuarios_select")
    private String usuariosSelect;
    @Column(name = "usuarios_update")
    private String usuariosUpdate;
    @Column(name = "usuarios_delet")
    private String usuariosDelet;
    @Column(name = "ventas_insert")
    private String ventasInsert;
    @Column(name = "ventas_select")
    private String ventasSelect;
    @Column(name = "ventas_update")
    private String ventasUpdate;
    @Column(name = "ventas_delet")
    private String ventasDelet;

    public Permisos() {
    }

    public Permisos(Integer idPermisos) {
        this.idPermisos = idPermisos;
    }

    public Permisos(Integer idPermisos, String rol) {
        this.idPermisos = idPermisos;
        this.rol = rol;
    }

    public Integer getIdPermisos() {
        return idPermisos;
    }

    public void setIdPermisos(Integer idPermisos) {
        this.idPermisos = idPermisos;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }

    public String getDetallesVentasInsert() {
        return detallesVentasInsert;
    }

    public void setDetallesVentasInsert(String detallesVentasInsert) {
        this.detallesVentasInsert = detallesVentasInsert;
    }

    public String getDetallesVentasSelect() {
        return detallesVentasSelect;
    }

    public void setDetallesVentasSelect(String detallesVentasSelect) {
        this.detallesVentasSelect = detallesVentasSelect;
    }

    public String getDetallesVentasUpdate() {
        return detallesVentasUpdate;
    }

    public void setDetallesVentasUpdate(String detallesVentasUpdate) {
        this.detallesVentasUpdate = detallesVentasUpdate;
    }

    public String getDetallesVentasDelet() {
        return detallesVentasDelet;
    }

    public void setDetallesVentasDelet(String detallesVentasDelet) {
        this.detallesVentasDelet = detallesVentasDelet;
    }

    public String getInformacionUsuariosInsert() {
        return informacionUsuariosInsert;
    }

    public void setInformacionUsuariosInsert(String informacionUsuariosInsert) {
        this.informacionUsuariosInsert = informacionUsuariosInsert;
    }

    public String getInformacionUsuariosSelect() {
        return informacionUsuariosSelect;
    }

    public void setInformacionUsuariosSelect(String informacionUsuariosSelect) {
        this.informacionUsuariosSelect = informacionUsuariosSelect;
    }

    public String getInformacionUsuariosUpdate() {
        return informacionUsuariosUpdate;
    }

    public void setInformacionUsuariosUpdate(String informacionUsuariosUpdate) {
        this.informacionUsuariosUpdate = informacionUsuariosUpdate;
    }

    public String getInformacionUsuariosDelet() {
        return informacionUsuariosDelet;
    }

    public void setInformacionUsuariosDelet(String informacionUsuariosDelet) {
        this.informacionUsuariosDelet = informacionUsuariosDelet;
    }

    public String getProductosInsert() {
        return productosInsert;
    }

    public void setProductosInsert(String productosInsert) {
        this.productosInsert = productosInsert;
    }

    public String getProductosSelect() {
        return productosSelect;
    }

    public void setProductosSelect(String productosSelect) {
        this.productosSelect = productosSelect;
    }

    public String getProductosUpdate() {
        return productosUpdate;
    }

    public void setProductosUpdate(String productosUpdate) {
        this.productosUpdate = productosUpdate;
    }

    public String getProductosDelet() {
        return productosDelet;
    }

    public void setProductosDelet(String productosDelet) {
        this.productosDelet = productosDelet;
    }

    public String getProveedoresInsert() {
        return proveedoresInsert;
    }

    public void setProveedoresInsert(String proveedoresInsert) {
        this.proveedoresInsert = proveedoresInsert;
    }

    public String getProveedoresSelect() {
        return proveedoresSelect;
    }

    public void setProveedoresSelect(String proveedoresSelect) {
        this.proveedoresSelect = proveedoresSelect;
    }

    public String getProveedoresUpdate() {
        return proveedoresUpdate;
    }

    public void setProveedoresUpdate(String proveedoresUpdate) {
        this.proveedoresUpdate = proveedoresUpdate;
    }

    public String getProveedoresDelet() {
        return proveedoresDelet;
    }

    public void setProveedoresDelet(String proveedoresDelet) {
        this.proveedoresDelet = proveedoresDelet;
    }

    public String getReservasInsert() {
        return reservasInsert;
    }

    public void setReservasInsert(String reservasInsert) {
        this.reservasInsert = reservasInsert;
    }

    public String getReservasSelect() {
        return reservasSelect;
    }

    public void setReservasSelect(String reservasSelect) {
        this.reservasSelect = reservasSelect;
    }

    public String getReservasUpdate() {
        return reservasUpdate;
    }

    public void setReservasUpdate(String reservasUpdate) {
        this.reservasUpdate = reservasUpdate;
    }

    public String getReservasDelet() {
        return reservasDelet;
    }

    public void setReservasDelet(String reservasDelet) {
        this.reservasDelet = reservasDelet;
    }

    public String getUsuariosInsert() {
        return usuariosInsert;
    }

    public void setUsuariosInsert(String usuariosInsert) {
        this.usuariosInsert = usuariosInsert;
    }

    public String getUsuariosSelect() {
        return usuariosSelect;
    }

    public void setUsuariosSelect(String usuariosSelect) {
        this.usuariosSelect = usuariosSelect;
    }

    public String getUsuariosUpdate() {
        return usuariosUpdate;
    }

    public void setUsuariosUpdate(String usuariosUpdate) {
        this.usuariosUpdate = usuariosUpdate;
    }

    public String getUsuariosDelet() {
        return usuariosDelet;
    }

    public void setUsuariosDelet(String usuariosDelet) {
        this.usuariosDelet = usuariosDelet;
    }

    public String getVentasInsert() {
        return ventasInsert;
    }

    public void setVentasInsert(String ventasInsert) {
        this.ventasInsert = ventasInsert;
    }

    public String getVentasSelect() {
        return ventasSelect;
    }

    public void setVentasSelect(String ventasSelect) {
        this.ventasSelect = ventasSelect;
    }

    public String getVentasUpdate() {
        return ventasUpdate;
    }

    public void setVentasUpdate(String ventasUpdate) {
        this.ventasUpdate = ventasUpdate;
    }

    public String getVentasDelet() {
        return ventasDelet;
    }

    public void setVentasDelet(String ventasDelet) {
        this.ventasDelet = ventasDelet;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idPermisos != null ? idPermisos.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Permisos)) {
            return false;
        }
        Permisos other = (Permisos) object;
        if ((this.idPermisos == null && other.idPermisos != null) || (this.idPermisos != null && !this.idPermisos.equals(other.idPermisos))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Stortacco.beans.Permisos[ idPermisos=" + idPermisos + " ]";
    }
    
}
