package es.rgg.gesthotel.entities;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@Entity
@Table(name = "tabla_clientes")
@Data
@AllArgsConstructor
@NoArgsConstructor


public class Cliente {

	@Id
	@Column(name = "id")
	@NonNull
	private int id;
	
	@Column(name = "nombre")
	@NonNull
	private String nombre;

	@Column(name = "dni")
	@NonNull
	private String dni;
	
	@Column(name = "direccion")
	@NonNull
	private String direccion;
	
	@Column(name = "telefono")
	@NonNull
	private String telefono;
	
	@Column(name = "email")
	@NonNull
	private String email;
	
	@Column(name = "tarjeta_credito")
	@NonNull
	private String tarjetaCredito;

	@Column(name = "fecha_nacimiento")
	@NonNull
	private String fechaNacimiento;

}
