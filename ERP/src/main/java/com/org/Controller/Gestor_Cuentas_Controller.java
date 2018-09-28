package com.org.Controller;

import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.RequestParam;

import com.org.DAO.CampañaDaoInterface;
import com.org.DAO.UsuariosDaoInterface;

@Controller
public class Gestor_Cuentas_Controller {

	private static final Logger logger = LoggerFactory.getLogger(Gestor_Cuentas_Controller.class);
	@Autowired
	private UsuariosDaoInterface dao;
	@Autowired
	private CampañaDaoInterface dao1;
	
	@RequestMapping(value="/agregar_evento", method = RequestMethod.POST)
	public String agregar_evento(@RequestParam(value="titulo") String titulo, @RequestParam(value="fechainicio") String fecha_in,
			@RequestParam(value="fechafinal") String fecha_fin, @RequestParam(value="horainicio") String hora_in,
			@RequestParam(value="horafinal") String hora_fin, @RequestParam(value="descripcion") String descripcion,
			@RequestParam(value="miembros")ArrayList<String> miembros) {
		
		return null;
	}
}
