package com.org.DTO;


public class UsuarioDTO {

	private String email;
	private String pass;
	private String nombre;
	private int tipo;
	
	//Este constructor lo vamos a utilizar para validar
	
	public UsuarioDTO() {
		super();
		
	}

	public UsuarioDTO(String email, String pass, String nombre, int tipo) {
		super();
		this.email = email;
		this.pass = pass;
		this.nombre = nombre;
		this.tipo = tipo;
	}



	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getTipo() {
		return tipo;
	}
	public void setTipo(int tipo) {
		this.tipo = tipo;
	}


	public void setPass(String pass) {
		this.pass = pass;
	}


	public String getPass() {
		return pass;
	}






	
}
