package com.org.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.org.DTO.UsuarioDTO;

public class UsuarioMapper implements RowMapper<UsuarioDTO> {
	public UsuarioDTO mapRow(ResultSet rs, int rowNum) throws SQLException{
		UsuarioDTO usuario = new UsuarioDTO(); 
		
		
		//Tienen que coincidir los parametros que recojo con los atributos de la tabla SQL
		usuario.setEmail(rs.getString("Email"));
		usuario.setPass(rs.getString("Pass"));
		usuario.setNombre(rs.getString("Nombre"));
		usuario.setTipo(rs.getInt("Tipo"));
		return usuario;
	}
}

	