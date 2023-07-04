package com.cooweb.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="equipo")
public class Equipo {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id", length = 11)
	private int id;
	
	@Column(name="nombreEquipo", length = 50)
	private String nombreEquipo;
	
	@Column(name="deporte", length = 50)
	private String deporteEquipo;
	
	@Column(name="cantJugadores")
	private int cantJugadores;
	
	@Column(name="club")
	private String clubEquipo;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombreEquipo() {
		return nombreEquipo;
	}

	public void setNombreEquipo(String nombreEquipo) {
		this.nombreEquipo = nombreEquipo;
	}

	public String deporte() {
		return deporte;
	}

	public void setDeporte(String deporte) {
		this.deporte = deporte;
	}

	public int getCantJugadores() {
		return CantJugadores;
	}

	public void setPCantJugadores(int CantJugadores) {
		this.cantJugadores = cantJugadores;
	}

	public String getClub() {
		return stock;
	}

	public void setClub(String club) {
		this.club= club;
	}
	
}
