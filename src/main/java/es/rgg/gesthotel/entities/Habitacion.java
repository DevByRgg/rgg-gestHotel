package es.rgg.gesthotel.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@Entity
@Table(name = "tabla_habitaciones")
@Data
@AllArgsConstructor
@NoArgsConstructor

public class Habitacion {

	@Id
	@Column(name = "id")
	@NonNull
	private int id;
	
	@Column(name = "nombre")
	@NonNull
	private String nombre;

	@Column(name = "id_hotel")
	@NonNull
	private int idHotel;
	
	@Column(name = "capacidad")
	@NonNull
	private int capacidad;
	
	@Column(name = "descripcion")
	@NonNull
	private String descripcion;
	
	@Column(name = "aire_acondicionado")
	@NonNull
	private boolean aireAcondicionado;
	
	@Column(name = "caja_fuerte")
	@NonNull
	private boolean cajaFuerte;
		
	@Column(name = "mascotas")
	@NonNull
	private boolean mascotas;
	
	@Column(name = "minibar")
	@NonNull
	private boolean minibar;
	
	@Column(name = "vistas")
	@NonNull
	private boolean vistas;
	
	@Column(name = "wifi")
	@NonNull
	private boolean wifi;
	
	@Column(name = "precio")
	@NonNull
	private int precioNoche;
	
	@Column(name = "fotografia")
	@NonNull
	private String fotoHabitacion;
	
}
