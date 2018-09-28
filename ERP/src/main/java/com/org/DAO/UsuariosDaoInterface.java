package com.org.DAO;

import java.util.List;

import com.org.DTO.CampañaDTO;
import com.org.DTO.UsuarioDTO;


public interface UsuariosDaoInterface {

	
	 //public ArrayList<UsuarioDTO>leeUsuarios();
	 //public void NuevoUsuario(UsuarioDTO usuario);
	 //public UsuarioDTO LeerNickname(String Nickname);
	 //public void BorrarUsuario(String nickname);
	 public UsuarioDTO LeerCredenciales(String nickname);
	 //public void ActualizarDatos(String Nickname, String edad, String sexo, Boolean fumador, String peso, String contraseña);
	public UsuarioDTO ComprobarUsuario(String email);
	public void CrearTrabajador(UsuarioDTO user);
	public List<UsuarioDTO> ListarUsuarios();
	public void BorrarTrabajador(String email);
	public void EditarTrabajador(UsuarioDTO user);
	
}
