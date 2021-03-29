package es.rgg.gesthotel.services.interfaces;

import es.rgg.gesthotel.carrocompra.Item;
import es.rgg.gesthotel.entities.Habitacion;

import java.util.Map;

public interface IReservaService {

	public void reservarHabitacion(Habitacion h);
	public void borrarReservaHabitacion(Habitacion h, int cantidad);
	public int getNumeroReservas();
	public float getImporteReservas();
	public Map<String, Item> getReservas();
	
	
}
