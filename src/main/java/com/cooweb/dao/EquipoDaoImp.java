package com.cooweb.dao;


import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cooweb.model.Equipo;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;


@Repository
@Transactional

public class EquipoDaoImp implements EquipoDao{
	
	@PersistenceContext
	private EntityManager entityManager;
	
	@Override
	public List<Equipo> obtenerEquipos() {
		
		String query="from Equipo";
		List<Equipo> resultadoEquipo=entityManager.createQuery(query) .getResultList();
		
		return resultadoEquipo;
	}

}