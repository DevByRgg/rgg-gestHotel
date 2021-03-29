package es.rgg.gesthotel.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import es.rgg.gesthotel.entities.Habitacion;

public interface IHabitacionRepository extends JpaRepository<Habitacion, Integer>{
	@Query("SELECT h FROM Habitacion h WHERE h.idHotel = :idHotel")
	List<Habitacion> findHabitacionesByHotel(@Param("idHotel") Integer hotelSeleccionado);
	
	@Query("SELECT h FROM Habitacion h WHERE h.idHotel = :idHotel AND h.capacidad >= :capacidad")
	List<Habitacion> findHabitacionesByCapacidad(
			@Param("idHotel") Integer hotelSeleccionado,
			@Param("capacidad") Integer capacidadMinima);

	@Query("SELECT h FROM Habitacion h WHERE h.idHotel = :idHotel AND h.aireAcondicionado=true")
	List<Habitacion> findHabitacionesByAireAcondicionado(@Param("idHotel") Integer hotelSeleccionado);
	
	@Query("SELECT h FROM Habitacion h WHERE h.idHotel = :idHotel AND h.cajaFuerte=true")
	List<Habitacion> findHabitacionesByCajaFuerte(@Param("idHotel") Integer hotelSeleccionado);
	
	@Query("SELECT h FROM Habitacion h WHERE h.idHotel = :idHotel AND h.mascotas=true")
	List<Habitacion> findHabitacionesByMascotas(@Param("idHotel") Integer hotelSeleccionado);
	
	@Query("SELECT h FROM Habitacion h WHERE h.idHotel = :idHotel AND h.minibar=true")
	List<Habitacion> findHabitacionesByMinibar(@Param("idHotel") Integer hotelSeleccionado);
	
	@Query("SELECT h FROM Habitacion h WHERE h.idHotel = :idHotel AND h.vistas=true")
	List<Habitacion> findHabitacionesByVistas(@Param("idHotel") Integer hotelSeleccionado);
	
	@Query("SELECT h FROM Habitacion h WHERE h.idHotel = :idHotel AND h.wifi=true")
	List<Habitacion> findHabitacionesByWifi(@Param("idHotel") Integer hotelSeleccionado);
	
}
