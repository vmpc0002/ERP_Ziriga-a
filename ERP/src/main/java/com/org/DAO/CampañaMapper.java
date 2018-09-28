package com.org.DAO;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

import com.org.DTO.Campa�aDTO;

public class Campa�aMapper {
		
	public Campa�aDTO mapRow(ResultSet rs, int rowNum) throws SQLException{
			Campa�aDTO campa�a = new Campa�aDTO(); 
			
			
			//Tienen que coincidir los parametros que recojo con los atributos de la tabla SQL
			campa�a.setCantidad_tiendas(rs.getInt("Cantidad_tiendas"));
			campa�a.setBriefing(rs.getString("Briefing"));
			campa�a.setCliente(rs.getInt("id_cliente"));
			campa�a.setComentarios(rs.getString("Comentarios"));
			campa�a.setEstado(rs.getInt("estado_general"));
			campa�a.setFecha_in(rs.getString("fecha_inicio"));
			campa�a.setFecha_fin(rs.getString("fecha_fin"));
			campa�a.setId_campa�a(rs.getString("id_campanha"));
			campa�a.setInterlocutor(rs.getString("Interlocutor"));
			campa�a.setLocalizacion(rs.getString("Localizacion"));
			campa�a.setMarca(rs.getString("Marca"));
			campa�a.setNombre(rs.getString("Nombre"));
			
			return campa�a;
		}
	}

