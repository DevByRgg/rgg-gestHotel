package es.rgg.gesthotel.services.interfaces;

import java.util.List;

import es.rgg.gesthotel.entities.Hotel;

public interface IHotelService {
	public void create(Hotel h);
	public Hotel findById(int id);
	public List<Hotel> findAll();
	public void update(Hotel h);
	public void delete(int id);
	public void delete(Hotel h);
	
}
