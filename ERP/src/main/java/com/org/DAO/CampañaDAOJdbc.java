package com.org.DAO;
import com.org.DTO.*;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class CampañaDAOJdbc implements CampañaDaoInterface {
	private JdbcTemplate jdbcTemplate;
	private DataSource dataSource;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcTemplate = new JdbcTemplate(dataSource); 
	}
	
	public void NuevaCampaña(CampañaDTO campaña) {
		//String sql = "insert into campanha (id_campanha, estado_general, Marca, Nombre, Cantidad_tiendas, Localizacion, Briefing, Comentarios, Interlocutor, fecha_inicio, fecha_fin) values (?,?,?,?,?,?,?,?,?,?,?)";
		//Object[ ] parametros= {campaña.getId_campaña(), campaña.getEstado(), campaña.getMarca(), campaña.getNombre(), campaña.getCantidad_tiendas(), campaña.getLocalizacion(), campaña.getBriefing(), campaña.getComentarios(), campaña.getInterlocutor(), campaña.getFecha_in(), campaña.getFecha_fin()};
		String sql = "insert into campanha (id_campanha, estado_general, Marca, Nombre, Cantidad_tiendas, Localizacion, Briefing, Comentarios, Interlocutor, fecha_inicio, fecha_fin, id_cliente) values (?,?,?,?,?,?,?,?,?,?,?,?)";
		Object[ ] parametros= {campaña.getId_campaña(), campaña.getEstado(), campaña.getMarca(), campaña.getNombre(), campaña.getCantidad_tiendas(), campaña.getLocalizacion(), campaña.getBriefing(), campaña.getComentarios(), campaña.getInterlocutor(), campaña.getFecha_in(), campaña.getFecha_fin(), campaña.getCliente()};
		CampañaMapper mapper = new CampañaMapper();
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

