package com.cooweb.dao;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.cooweb.model.Equipo;

@Transactional
public interface EquipoDao {

	List<Equipo> obtenerEquipos();
}