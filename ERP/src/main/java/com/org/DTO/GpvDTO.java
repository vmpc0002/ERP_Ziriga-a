package com.org.DTO;

public class GpvDTO {
	private String nombre_gpv;
	private Integer telefono;
	private String email;
	private String comunicaciones;
	
	
	
	
	
	public GpvDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getNombre_gpv() {
		return nombre_gpv;
	}
	public void setNombre_gpv(String nombre_gpv) {
		this.nombre_gpv = nombre_gpv;
	}
	public Integer getTelefono() {
		return telefono;
	}
	public void setTelefono(Integer telefono) {
		this.telefono = telefono;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getComunicaciones() {
		return comunicaciones;
	}
	public void setComunicaciones(String comunicaciones) {
		this.comunicaciones = comunicaciones;
	}
	
}
