package com.org.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.org.DTO.ClienteDTO;

	public class ClienteMapper implements RowMapper<ClienteDTO> {
		public ClienteDTO mapRow(ResultSet rs, int rowNum) throws SQLException{
			ClienteDTO cliente = new ClienteDTO(); 
			
			
			//Tienen que coincidir los parametros que recojo con los atributos de la tabla SQL
			cliente.setId_cliente(rs.getInt("Id_cliente"));
			cliente.setNombre(rs.getString("Nombre"));
			return cliente;
		}
	}

