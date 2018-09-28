package com.org.DTO;

import java.util.Date;

public class CampañaDTO {
	private String id_campaña;
	private int cliente;
	private String marca;
	private String nombre;
	private int cantidad_tiendas;
	private String briefing; //puede que sea texto o una imagen
	private String localizacion;
	private String comentarios;
	private String interlocutor;
	private String fecha_in;
	private String fecha_fin;
	private int estado;
	
	
	public CampañaDTO() {
		super();
	}
	public CampañaDTO(String id_campaña,int cliente, String marca, String nombre, int cantidad_tiendas, String briefing,
			String localizacion, String comentarios, String interlocutor, String fecha_in, String fecha_fin,
			int estado) {
		super();
		this.id_campaña=id_campaña;
		this.cliente = cliente;
		this.marca = marca;
		this.nombre = nombre;
		this.cantidad_tiendas = cantidad_tiendas;
		this.briefing = briefing;
		this.localizacion = localizacion;
		this.comentarios = comentarios;
		this.interlocutor = interlocutor;
		this.fecha_in = fecha_in;
		this.fecha_fin = fecha_fin;
		this.estado = estado;
	}
	public int getCliente() {
		return cliente;
	}
	public void setCliente(int cliente) {
		this.cliente = cliente;
	}
	public String getMarca() {
		return marca;
	}
	public void setMarca(String marca) {
		this.marca = marca;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public int getCantidad_tiendas() {
		return cantidad_tiendas;
	}
	public void setCantidad_tiendas(int cantidad_tiendas) {
		this.cantidad_tiendas = cantidad_tiendas;
	}
	public String getBriefing() {
		return briefing;
	}
	public void setBriefing(String briefing) {
		this.briefing = briefing;
	}
	public String getLocalizacion() {
		return localizacion;
	}
	public void setLocalizacion(String localizacion) {
		this.localizacion = localizacion;
	}
	public String getComentarios() {
		return comentarios;
	}
	public void setComentarios(String comentarios) {
		this.comentarios = comentarios;
	}
	public String getInterlocutor() {
		return interlocutor;
	}
	public void setInterlocutor(String interlocutor) {
		this.interlocutor = interlocutor;
	}
	public String getFecha_in() {
		return fecha_in;
	}
	public void setFecha_in(String fecha_in) {
		this.fecha_in = fecha_in;
	}
	public String getFecha_fin() {
		return fecha_fin;
	}
	public void setFecha_fin(String fecha_fin) {
		this.fecha_fin = fecha_fin;
	}
	public int getEstado() {
		return estado;
	}
	public void setEstado(int estado) {
		this.estado = estado;
	}
	public String getId_campaña() {
		return id_campaña;
	}
	public void setId_campaña(String id_campaña) {
		this.id_campaña = id_campaña;
	}
	
	
}
