package com.org.Controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.org.DAO.UsuariosDaoInterface;
import com.org.DTO.UsuarioDTO;

@Controller
public class Trabajador_Controller {
	private static final Logger logger = LoggerFactory.getLogger(Trabajador_Controller.class);
	@Autowired
	private UsuariosDaoInterface dao;
	
	
	@RequestMapping(value="/Nuevo_trabajador", method = RequestMethod.POST)
	public String nuevo_trabajador(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		String nombre=request.getParameter("nombre_trabajador");
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		int tipo_trabajador=Integer.parseInt(request.getParameter("tipo_trabajadores"));
		UsuarioDTO user = new UsuarioDTO(email,pass, nombre, tipo_trabajador);
		if(dao.ComprobarUsuario(email)==null) {
			dao.CrearTrabajador(user);
			HttpSession session =request.getSession(true);
			List<UsuarioDTO> trabajador =dao.ListarUsuarios();	
			System.out.println(trabajador.get(0).getEmail());
			session.setAttribute("trabajador", trabajador);
			return "administrador";
		}
		else {
			return "Trabajador_existente";
		}
		
		
	}
	
	@RequestMapping(value="/borrar_trabajador", method = RequestMethod.POST)
	public String baja_trabajador(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		
		String email=request.getParameter("email");
		dao.BorrarTrabajador(email);
		
		HttpSession session =request.getSession(true);
		List<UsuarioDTO> trabajador =dao.ListarUsuarios();	
		System.out.println(trabajador.get(0).getEmail());
		session.setAttribute("trabajador", trabajador);
		
		return "administrador";
	
	}
	@RequestMapping(value="/Editar_trabajador",method = RequestMethod.POST)
	public String editar_trabajador(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		UsuarioDTO user= new UsuarioDTO();
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		String nombre=request.getParameter("nombre");
		int tipo=Integer.parseInt(request.getParameter("tipo"));
		dao.EditarTrabajador(user);
		
		HttpSession session =request.getSession(true);
		List<UsuarioDTO> trabajador =dao.ListarUsuarios();	
		System.out.println(trabajador.get(0).getEmail());
		session.setAttribute("trabajador", trabajador);
		
		return "administrador";
	
	}
}
