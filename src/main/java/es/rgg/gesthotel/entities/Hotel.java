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
@Table(name = "tabla_hoteles")
@Data
@AllArgsConstructor
@NoArgsConstructor

public class Hotel {

	@Id
	@Column(name = "id")
	@NonNull
	private int id;
	
	@Column(name = "nombre")
	@NonNull
	private String nombre;
	
	@Column(name = "foto_hotel")
	@NonNull
	private String fotoHotel;

}
