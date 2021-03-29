package es.rgg.gesthotel.services.impl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import es.rgg.gesthotel.entities.Hotel;
import es.rgg.gesthotel.repositories.IHotelRepository;
import es.rgg.gesthotel.services.interfaces.IHotelService;

@Service
public class HotelServiceImpl implements IHotelService{

	@Autowired
	IHotelRepository hotelRepository;
		
	@Override
	public void create(Hotel h) {
		hotelRepository.save(h);
		
	}

	@Override
	public Hotel findById(int id) {
		return hotelRepository.findById(id).orElse(null);
		
	}

	@Override
	public List<Hotel> findAll() {
		return hotelRepository.findAll();
	}

	@Override
	public void update(Hotel h) {
		hotelRepository.save(h);
		
	}

	@Override
	public void delete(int id) {
		hotelRepository.deleteById(id);
		
	}

	@Override
	public void delete(Hotel h) {
		hotelRepository.delete(h);
	}

	
}


