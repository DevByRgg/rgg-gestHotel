package es.rgg.gesthotel.services.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import es.rgg.gesthotel.carrocompra.ICarroCompraService;
import es.rgg.gesthotel.carrocompra.Item;
import es.rgg.gesthotel.entities.Habitacion;
import es.rgg.gesthotel.services.interfaces.IReservaService;

@Service
public class ReservaServiceImpl implements IReservaService{
	
	@Autowired
	ICarroCompraService carroCompra;
	
	@Override
	public void reservarHabitacion(Habitacion h) {
		Item i = new Item (h, 0);
				
		carroCompra.addItem(i);
		carroCompra.showCart();
		
	}

	@Override
	public void borrarReservaHabitacion(Habitacion h, int cantidad) {
		Item i = new Item (h, cantidad);
		
		carroCompra.deleteItem(i);
		
	}
	
	@Override
	public int getNumeroReservas() {
		return carroCompra.getItemNumber();
	}

	@Override
	public float getImporteReservas() {
		return carroCompra.getAmount();
	}

	@Override
	public Map<String, Item> getReservas() {
		return carroCompra.getItems();
	}

	

	

}
