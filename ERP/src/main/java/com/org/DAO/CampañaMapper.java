package com.org.DAO;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

import com.org.DTO.CampañaDTO;

public class CampañaMapper {
		
	public CampañaDTO mapRow(ResultSet rs, int rowNum) throws SQLException{
			CampañaDTO campaña = new CampañaDTO(); 
			
			
			//Tienen que coincidir los parametros que recojo con los atributos de la tabla SQL
			campaña.setCantidad_tiendas(rs.getInt("Cantidad_tiendas"));
			campaña.setBriefing(rs.getString("Briefing"));
			campaña.setCliente(rs.getInt("id_cliente"));
			campaña.setComentarios(rs.getString("Comentarios"));
			campaña.setEstado(rs.getInt("estado_general"));
			campaña.setFecha_in(rs.getString("fecha_inicio"));
			campaña.setFecha_fin(rs.getString("fecha_fin"));
			campaña.setId_campaña(rs.getString("id_campanha"));
			campaña.setInterlocutor(rs.getString("Interlocutor"));
			campaña.setLocalizacion(rs.getString("Localizacion"));
			campaña.setMarca(rs.getString("Marca"));
			campaña.setNombre(rs.getString("Nombre"));
			
			return campaña;
		}
	}

