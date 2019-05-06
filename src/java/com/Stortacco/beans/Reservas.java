package com.Stortacco.beans;

import java.util.Date;

public class Reservas {

    private Integer idReservas;
    private Date fechaReserva;
    private Date horaReserva;
    private String numeroPersonas;
    private String habilitado;
    private String idUsuario;

    public Reservas() {
    }

    public Reservas(Integer idReservas) {
        this.idReservas = idReservas;
    }

    public Reservas(Integer idReservas, Date fechaReserva, Date horaReserva, String numeroPersonas, String habilitado) {
        this.idReservas = idReservas;
        this.fechaReserva = fechaReserva;
        this.horaReserva = horaReserva;
        this.numeroPersonas = numeroPersonas;
        this.habilitado = habilitado;
    }

    public Integer getIdReservas() {
        return idReservas;
    }

    public void setIdReservas(Integer idReservas) {
        this.idReservas = idReservas;
    }

    public Date getFechaReserva() {
        return fechaReserva;
    }

    public void setFechaReserva(Date fechaReserva) {
        this.fechaReserva = fechaReserva;
    }

    public Date getHoraReserva() {
        return horaReserva;
    }

    public void setHoraReserva(Date horaReserva) {
        this.horaReserva = horaReserva;
    }

    public String getNumeroPersonas() {
        return numeroPersonas;
    }

    public void setNumeroPersonas(String numeroPersonas) {
        this.numeroPersonas = numeroPersonas;
    }

    public String getHabilitado() {
        return habilitado;
    }

    public void setHabilitado(String habilitado) {
        this.habilitado = habilitado;
    }

    public String getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(String idUsuario) {
        this.idUsuario = idUsuario;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idReservas != null ? idReservas.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Reservas)) {
            return false;
        }
        Reservas other = (Reservas) object;
        if ((this.idReservas == null && other.idReservas != null) || (this.idReservas != null && !this.idReservas.equals(other.idReservas))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Stortacco.beans.Reservas[ idReservas=" + idReservas + " ]";
    }
    
}
