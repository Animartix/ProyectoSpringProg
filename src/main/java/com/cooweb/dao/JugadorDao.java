package com.cooweb.dao;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.cooweb.model.Jugador;

@Transactional
public interface JugadorDao{

	List<Jugador> obtenerJugadores();
}