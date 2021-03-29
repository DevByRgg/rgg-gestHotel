package es.rgg.gesthotel.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import es.rgg.gesthotel.entities.Habitacion;
import es.rgg.gesthotel.repositories.IHabitacionRepository;
import es.rgg.gesthotel.services.interfaces.IHabitacionService;

@Service
public class HabitacionServiceImpl implements IHabitacionService{
	
	@Autowired
	IHabitacionRepository habitacionRepository;
	
	@Override
	public void create(Habitacion h) {
		habitacionRepository.save(h);
		
	}

	@Override
	public Habitacion findById(int id) {
		return habitacionRepository.findById(id).orElse(null);
	}

	@Override
	public List<Habitacion> findByHotel(int idHotel) {
		return habitacionRepository.findHabitacionesByHotel(idHotel);
	}
	
	@Override
	public List<Habitacion> findAll() {
		return habitacionRepository.findAll();
	}

	@Override
	public List<Habitacion> findByCapacidad(int idHotel, int capacidad) {
		return habitacionRepository.findHabitacionesByCapacidad(idHotel, capacidad);
	}

	@Override
	public List<Habitacion> findByAireAcondicionado(int idHotel) {
		return habitacionRepository.findHabitacionesByAireAcondicionado(idHotel);
	}

	@Override
	public List<Habitacion> findByCajaFuerte(int idHotel) {
		return habitacionRepository.findHabitacionesByCajaFuerte(idHotel);
	}

	@Override
	public List<Habitacion> findByMascotas(int idHotel) {
		return habitacionRepository.findHabitacionesByMascotas(idHotel);
	}

	@Override
	public List<Habitacion> findByMinibar(int idHotel) {
		return habitacionRepository.findHabitacionesByMinibar(idHotel);
	}

	@Override
	public List<Habitacion> findByVistas(int idHotel) {
		return habitacionRepository.findHabitacionesByVistas(idHotel);
	}

	@Override
	public List<Habitacion> findByWifi(int idHotel) {
		return habitacionRepository.findHabitacionesByWifi(idHotel);
	}
	
	
	@Override
	public void update(Habitacion h) {
		habitacionRepository.save(h);
		
	}

	@Override
	public void delete(int id) {
		habitacionRepository.deleteById(id);
		
	}

	@Override
	public void delete(Habitacion h) {
		habitacionRepository.delete(h);
		
	}
	

}
