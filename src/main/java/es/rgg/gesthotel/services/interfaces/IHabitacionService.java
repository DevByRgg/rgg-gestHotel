package es.rgg.gesthotel.services.interfaces;

import java.util.List;

import es.rgg.gesthotel.entities.Habitacion;

public interface IHabitacionService {
	public void create(Habitacion h);
	public Habitacion findById(int id);
	public List<Habitacion> findByHotel(int idHotel);
	public List<Habitacion> findByCapacidad(int idHotel, int capacidad);
	public List<Habitacion> findByAireAcondicionado(int idHotel);
	public List<Habitacion> findByCajaFuerte(int idHotel);
	public List<Habitacion> findByMascotas(int idHotel);
	public List<Habitacion> findByMinibar(int idHotel);
	public List<Habitacion> findByVistas(int idHotel);
	public List<Habitacion> findByWifi(int idHotel);
	public List<Habitacion> findAll();
	public void update(Habitacion h);
	public void delete(int id);
	public void delete(Habitacion h);
}
