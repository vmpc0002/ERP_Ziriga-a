package com.org.DAO;
import com.org.DTO.*;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class Campa�aDAOJdbc implements Campa�aDaoInterface {
	private JdbcTemplate jdbcTemplate;
	private DataSource dataSource;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcTemplate = new JdbcTemplate(dataSource); 
	}
	
	public void NuevaCampa�a(Campa�aDTO campa�a) {
		//String sql = "insert into campanha (id_campanha, estado_general, Marca, Nombre, Cantidad_tiendas, Localizacion, Briefing, Comentarios, Interlocutor, fecha_inicio, fecha_fin) values (?,?,?,?,?,?,?,?,?,?,?)";
		//Object[ ] parametros= {campa�a.getId_campa�a(), campa�a.getEstado(), campa�a.getMarca(), campa�a.getNombre(), campa�a.getCantidad_tiendas(), campa�a.getLocalizacion(), campa�a.getBriefing(), campa�a.getComentarios(), campa�a.getInterlocutor(), campa�a.getFecha_in(), campa�a.getFecha_fin()};
		String sql = "insert into campanha (id_campanha, estado_general, Marca, Nombre, Cantidad_tiendas, Localizacion, Briefing, Comentarios, Interlocutor, fecha_inicio, fecha_fin, id_cliente) values (?,?,?,?,?,?,?,?,?,?,?,?)";
		Object[ ] parametros= {campa�a.getId_campa�a(), campa�a.getEstado(), campa�a.getMarca(), campa�a.getNombre(), campa�a.getCantidad_tiendas(), campa�a.getLocalizacion(), campa�a.getBriefing(), campa�a.getComentarios(), campa�a.getInterlocutor(), campa�a.getFecha_in(), campa�a.getFecha_fin(), campa�a.getCliente()};
		Campa�aMapper mapper = new Campa�aMapper();
		this.jdbcTemplate.update(sql,parametros);
		
	}
	
	public List<ClienteDTO> Listar_Cliente_foreign(){
			String sql = "select * from cliente";
			ClienteMapper mapper = new ClienteMapper();
			List<ClienteDTO> clientes = this.jdbcTemplate.query(sql, mapper);
			if(clientes.isEmpty()) return null;
			else return clientes; 
			}
		
		
}

