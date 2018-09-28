package com.org.DAO;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.org.DTO.CampañaDTO;
import com.org.DTO.UsuarioDTO;

@Repository
public class UsuarioDAOJdbc implements UsuariosDaoInterface{
	private JdbcTemplate jdbcTemplate;
	private DataSource dataSource;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.jdbcTemplate = new JdbcTemplate(dataSource); 
	}
	
	public UsuarioDTO LeerCredenciales(String Nickname){
		String sql = "select * from trabajadores where Email = ?";
		Object[ ] parametros = {Nickname}; 
		UsuarioMapper mapper = new UsuarioMapper();
		List<UsuarioDTO> usuarios = this.jdbcTemplate.query(sql, parametros, mapper);
		System.out.println(usuarios.get(0).getEmail());
		System.out.println(usuarios.get(0).getPass());
		if (usuarios.isEmpty()) return null;
		else return usuarios.get(0);
		
	}
	
	public UsuarioDTO ComprobarUsuario(String email) {
		String sql = "select * from trabajadores where Email = ?";
		Object[ ] parametros = {email}; 
		UsuarioMapper mapper = new UsuarioMapper();
		List<UsuarioDTO> usuarios = this.jdbcTemplate.query(sql, parametros, mapper);
		if(usuarios.isEmpty()) return null;
		else return usuarios.get(0); 
		}
	
	public void CrearTrabajador(UsuarioDTO user) {
		String sql = "insert into trabajadores (Email, Pass, Nombre, Tipo) values (?,?,?,?)";
		Object[ ] parametros= {user.getEmail(), user.getPass(), user.getNombre(), user.getTipo()};
		this.jdbcTemplate.update(sql,parametros);
		
	}
	
	public List<UsuarioDTO> ListarUsuarios(){
		String sql = "select * from trabajadores"; 
		UsuarioMapper mapper = new UsuarioMapper();
		List<UsuarioDTO> usuarios = this.jdbcTemplate.query(sql, mapper);
		return usuarios;
	}
	
		public void BorrarTrabajador(String email) {
			String sql = "delete from trabajadores where Email = ?";
			Object[ ] parametros = {email}; 
			this.jdbcTemplate.update(sql, parametros);
		}
		
		public void EditarTrabajador(UsuarioDTO user) {
			String sql = "update trabajadores set (Pass, Nombre, Tipo) where Email values (?,?,?,?)";
			Object [] parametros= {user.getPass(), user.getNombre(), user.getTipo(), user.getEmail()};
			UsuarioMapper mapper= new UsuarioMapper();
			this.jdbcTemplate.update(sql, parametros, mapper);
		}
	
		
}

	