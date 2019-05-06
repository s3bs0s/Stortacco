package com.Stortacco.beans;

import java.util.Date;

public class InformacionUsuarios {

    private Integer idInformacionUsuarios;
    private Date fechaRegistro;
    private String nombre;
    private String apellidos;
    private Date fechaNacimiento;
    private String tarjetaIdentificacion;
    private String numeroIdentificacion;
    private String direccion;
    private String telefono;
    private int idUsuario;
    private String Email;
    private String Password;
    private String Rol;

    public InformacionUsuarios() {
    }

    public InformacionUsuarios(Integer idInformacionUsuarios) {
        this.idInformacionUsuarios = idInformacionUsuarios;
    }

    public InformacionUsuarios(Integer idInformacionUsuarios, Date fechaRegistro, String nombre, String apellidos, Date fechaNacimiento, String tarjetaIdentificacion, String numeroIdentificacion, String direccion, String telefono) {
        this.idInformacionUsuarios = idInformacionUsuarios;
        this.fechaRegistro = fechaRegistro;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.fechaNacimiento = fechaNacimiento;
        this.tarjetaIdentificacion = tarjetaIdentificacion;
        this.numeroIdentificacion = numeroIdentificacion;
        this.direccion = direccion;
        this.telefono = telefono;
    }

    public Integer getIdInformacionUsuarios() {
        return idInformacionUsuarios;
    }

    public void setIdInformacionUsuarios(Integer idInformacionUsuarios) {
        this.idInformacionUsuarios = idInformacionUsuarios;
    }

    public Date getFechaRegistro() {
        return fechaRegistro;
    }

    public void setFechaRegistro(Date fechaRegistro) {
        this.fechaRegistro = fechaRegistro;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public Date getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(Date fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    public String getTarjetaIdentificacion() {
        return tarjetaIdentificacion;
    }

    public void setTarjetaIdentificacion(String tarjetaIdentificacion) {
        this.tarjetaIdentificacion = tarjetaIdentificacion;
    }

    public String getNumeroIdentificacion() {
        return numeroIdentificacion;
    }

    public void setNumeroIdentificacion(String numeroIdentificacion) {
        this.numeroIdentificacion = numeroIdentificacion;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }
   
    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }
   
    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }
    
    public String getRol() {
        return Rol;
    }

    public void setRol(String Rol) {
        this.Rol = Rol;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idInformacionUsuarios != null ? idInformacionUsuarios.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof InformacionUsuarios)) {
            return false;
        }
        InformacionUsuarios other = (InformacionUsuarios) object;
        if ((this.idInformacionUsuarios == null && other.idInformacionUsuarios != null) || (this.idInformacionUsuarios != null && !this.idInformacionUsuarios.equals(other.idInformacionUsuarios))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Stortacco.beans.InformacionUsuarios[ idInformacionUsuarios=" + idInformacionUsuarios + " ]";
    }
    
}
