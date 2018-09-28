package com.org.Controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.org.DAO.CampañaDaoInterface;
import com.org.DAO.UsuariosDaoInterface;
import com.org.DTO.CampañaDTO;
import com.org.DTO.ClienteDTO;
import com.org.DTO.UsuarioDTO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@Autowired
	private UsuariosDaoInterface dao;
	@Autowired
	private CampañaDaoInterface dao1;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		Cookie[ ] cookies = request.getCookies();
		String cookieName = "emailCookie";
		String email="";
		HttpSession session = request.getSession(true);
		if(cookies!=null) {
			for(Cookie cookie:cookies) {
				if(cookieName.equals(cookie.getName())) {
					email = cookie.getValue();
				}
			}
		}
		
		if(email.equals("")) {
			return "login";
		}
		else {
			UsuarioDTO usuario = dao.LeerCredenciales(email);
			if(usuario!=null) {
				session.setAttribute("usuario", usuario);
				
				if(usuario.getTipo()==1) {
					return "montadores";
				}
				else if(usuario.getTipo()==2) {
					
					List<ClienteDTO> cliente = dao1.Listar_Cliente_foreign();
					session.setAttribute("cliente", cliente);
					return  "Gestor_Cuentas";
				}
				else if(usuario.getTipo()==3) {
					return "Diseñador";
				}
				else {
					List<UsuarioDTO> trabajador =dao.ListarUsuarios();	
					System.out.println(trabajador.get(0).getEmail());
					session.setAttribute("trabajador", trabajador);
					return "administrador";
				}
				
			}
			
			else return "login";
			
		}
	}
	
	@RequestMapping(value = "/cerrar_sesion", method = RequestMethod.POST)
	public String cerrar_sesion(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		HttpSession session =request.getSession(true);
		session.removeAttribute("email");
		return "login";
	}
	@RequestMapping(value="/Login", method = RequestMethod.POST)
	public String login(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
		
			
			String nickname= request.getParameter("inputEmail");
			String pass= request.getParameter("inputPassword");
			HttpSession session =request.getSession(true);
			
			System.out.println(nickname+pass);
			UsuarioDTO usuario= new UsuarioDTO();
			usuario=dao.LeerCredenciales(nickname);
			
			
			if(usuario!=null) {
				if(usuario.getPass().equals(pass)) {
				
					session.setAttribute("usuario", usuario);
					Cookie c = new Cookie("emailCookie", usuario.getEmail());
					c.setMaxAge(60*60*24*31);//caducan cada mes
					c.setPath("/");
					response.addCookie(c);
					if(usuario.getTipo()==1) {
						return "montadores";
					}
					else if(usuario.getTipo()==2) {
						
						List<ClienteDTO> cliente = dao1.Listar_Cliente_foreign();
						session.setAttribute("cliente", cliente);
						return  "Gestor_Cuentas";
					}
					else if(usuario.getTipo()==3) {
						return "Diseñador";
					}
					else {
						List<UsuarioDTO> trabajador =dao.ListarUsuarios();	
						System.out.println(trabajador.get(0).getEmail());
						session.setAttribute("trabajador", trabajador);
						return "administrador";
					}
				
				} else return "login";
				
			}
			else return "login";
			
		}
	
	@RequestMapping(value = "/Logout", method = RequestMethod.POST)
	public String Logout(HttpServletRequest req,HttpServletResponse res, Model model) {
		HttpSession session = req.getSession(true);
		session.invalidate();
		Cookie c = new Cookie("emailCookie", ""); 
		c.setMaxAge(60*60*24*31);
		c.setPath("/");
		res.addCookie(c);
		return "login";
	}
		
	
	

	

	
			
	
}
