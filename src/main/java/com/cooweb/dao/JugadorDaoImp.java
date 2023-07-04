package com.cooweb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cooweb.dao.EquipoDao;
import com.cooweb.model.Equipo;

@SpringBootApplication
@RestController

public class EquipoController {
	
	@Autowired
	private EquipoDao equipoDao;

	@RequestMapping(value="AltaEquipo")
	public Equipo crearEquipo( ) {
		Equipo equipo=new Equipo();
		equiposetNombreEquipo("Las Brótolas");
		equipo.setDeporte("fútbol");
		equipo.setCant_Jugadores(12);
		equipo.setClub("Regatas");
		
		return equipo;
	}
	
	
		@RequestMapping(value="ListarEquipos")
		public List<Equipo> getJugadores() {
			
			List<Equipo> product=equipoDao.obtenerEquipos();
			
			return equipo;
		}
}