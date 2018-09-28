package com.org.Controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.org.DAO.CampañaDaoInterface;
import com.org.DAO.UsuariosDaoInterface;
import com.org.DTO.CampañaDTO;

@Controller
public class Campaña_Controller {
	private static final Logger logger = LoggerFactory.getLogger(Campaña_Controller.class);
	@Autowired
	private UsuariosDaoInterface dao;
	@Autowired
	private CampañaDaoInterface dao1;
	
	@RequestMapping(value="/Campaña_Nueva", method = RequestMethod.POST)
	public String añadir_campaña(HttpServletRequest request,Locale locale,HttpServletResponse response, Model model) {
	
		String id_campaña= request.getParameter("id_camp");
		System.out.println(id_campaña);
		int cliente=Integer.parseInt(request.getParameter("cliente"));
		System.out.println(cliente);
		String marca=request.getParameter("Marca");
		System.out.println(marca);
		String nombre_camp=request.getParameter("Nombre_camp");
		int cantidad_tiendas=Integer.parseInt(request.getParameter("cantidad_tiendas"));
		String localizacion_geo=request.getParameter("localizacion_geo");
		String briefing=request.getParameter("briefing");
		int estado=Integer.parseInt(request.getParameter("estado"));
		String fecha_in=request.getParameter("fecha_in");
		String fecha_fin=request.getParameter("fecha_fin");
		System.out.println(fecha_fin);
		String interlocutor=request.getParameter("interlocutor");
		String comentarios =request.getParameter("comentarios");		
		
		
		CampañaDTO campaña = new CampañaDTO(id_campaña,cliente, marca, nombre_camp, cantidad_tiendas, briefing,
				 localizacion_geo, comentarios, interlocutor, fecha_in, fecha_fin, estado);
		dao1.NuevaCampaña(campaña);
		return "Gestor_Cuentas";
	
	}
}
