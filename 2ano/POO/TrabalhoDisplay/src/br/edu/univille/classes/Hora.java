package br.edu.univille.classes;

public class Hora {
	private int hora;
	private int minutos;
	
	public int getHora() {
		return hora;
	}
	public void setHora(int hora) {
		this.hora = hora;
	}
	public int getMinutos() {
		return minutos;
	}
	public void setMinutos(int minutos) {
		this.minutos = minutos;
	}
	
	public Hora(int hora, int minutos) {
		this.hora = hora;
		this.minutos = minutos;
	}
}
