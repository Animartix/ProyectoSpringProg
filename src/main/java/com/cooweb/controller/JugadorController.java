package com.cooweb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cooweb.dao.JugadorDao;
import com.cooweb.model.Jugador;

@SpringBootApplication
@RestController
public class JugadorController {
	
	@Autowired
	private JugadorDao jugadorDao;
	
	@RequestMapping(value="AltaJugador")
	public Jugador crearJugador() {
		Jugador jugador=new Jugador();
		jugador.setNombre("Juana");
		jugador.setApellido("Herrera");
		jugador.setDNI("38207789");
		jugador.setDireccion("Capilla del Rosario 1965");
		jugador.setEmail("juanita@hotmail.com");
		jugador.setPassword("123456789");
		jugador.setTelefono("2616633333");
		
		return jugador;
	}	
	
	
	@RequestMapping(value="ListarJugadores")
	public List<Jugador> Jugadores() {
		
		List<Jugador> user=jugadorDao.obtenerJugadores();
		
		return user;
	}
}