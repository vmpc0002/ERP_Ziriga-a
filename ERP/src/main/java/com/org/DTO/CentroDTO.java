package com.org.DTO;

import java.util.ArrayList;

public class CentroDTO {

	private String nombre_centro;
	private String cadena;
	private String zona;
	private String estado_activacion;
	private String direccion;
	private String localidad;
	private String tipologia_cliente;
	private String provincia;
	private String detalle_exposicion;
	private String fecha_prevista_desmontaje;
	private String fecha_prevista_montaje;
	
	private ArrayList<Error> errors;
	
	public CentroDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getNombre_centro() {
		return nombre_centro;
	}
	public void setNombre_centro(String nombre_centro) {
		this.nombre_centro = nombre_centro;
	}
	public String getCadena() {
		return cadena;
	}
	public void setCadena(String cadena) {
		this.cadena = cadena;
	}
	public String getZona() {
		return zona;
	}
	public void setZona(String zona) {
		this.zona = zona;
	}
	public String getEstado_activacion() {
		return estado_activacion;
	}
	public void setEstado_activacion(String estado_activacion) {
		this.estado_activacion = estado_activacion;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public String getLocalidad() {
		return localidad;
	}
	public void setLocalidad(String localidad) {
		this.localidad = localidad;
	}
	public String getTipologia_cliente() {
		return tipologia_cliente;
	}
	public void setTipologia_cliente(String tipologia_cliente) {
		this.tipologia_cliente = tipologia_cliente;
	}
	public String getProvincia() {
		return provincia;
	}
	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}
	public String getDetalle_exposicion() {
		return detalle_exposicion;
	}
	public void setDetalle_exposicion(String detalle_exposicion) {
		this.detalle_exposicion = detalle_exposicion;
	}
	public String getFecha_prevista_desmontaje() {
		return fecha_prevista_desmontaje;
	}
	public void setFecha_prevista_desmontaje(String fecha_prevista_desmontaje) {
		this.fecha_prevista_desmontaje = fecha_prevista_desmontaje;
	}
	public String getFecha_prevista_montaje() {
		return fecha_prevista_montaje;
	}
	public void setFecha_prevista_montaje(String fecha_prevista_montaje) {
		this.fecha_prevista_montaje = fecha_prevista_montaje;
	}
	
	
	
}
