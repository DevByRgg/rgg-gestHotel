package es.rgg.gesthotel.carrocompra;

import java.util.HashMap;
import java.util.Map;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;
import org.springframework.web.context.WebApplicationContext;

import es.rgg.gesthotel.entities.Habitacion;

@Component
@Scope(value = WebApplicationContext.SCOPE_SESSION, proxyMode = ScopedProxyMode.TARGET_CLASS)
public class CarroCompraServiceImpl  implements ICarroCompraService{
	
	Map<String, Item> cestaCompra = new HashMap();
	
	
	@Override
	public void addItem(Item i) {
		Habitacion h = (Habitacion)(i.getProducto());
		String nombre = h.getNombre();
		
		if (cestaCompra.containsKey(nombre)) {
			Item itemCesta = cestaCompra.get(nombre);
			
			System.out.println("Existe");
			
			i.setUnidades(itemCesta.getUnidades()+1);
		
		} else {
			
			System.out.println(" NO Existe");
			
			i.setUnidades(1);
		
		}
		
		cestaCompra.put(nombre, i);
		
	}

	
	@Override
	public int getItemNumber() {
		int itemsNumber = 0;
		
		for(Item item : cestaCompra.values()) {
			itemsNumber += item.getUnidades();
			
		}
		
		return itemsNumber;
		
	}
	
	
	@Override
	public Map<String, Item> getItems() {
		return cestaCompra;
	}
	
	
	@Override
	public void showCart() {
			cestaCompra.forEach((k, v) -> System.out.println(k + ":" + v));
	}
	
	
	
	@Override
	public void deleteItem(Item i) {
		Habitacion h = (Habitacion)(i.getProducto());
		String nombre = h.getNombre();
		
		if (cestaCompra.containsKey(nombre)) {
			Item itemCesta = cestaCompra.get(nombre);
			itemCesta.setUnidades(i.getUnidades()-1);
			
			if (itemCesta.getUnidades() == 0) {
				cestaCompra.remove(nombre);
				
			} else {
				cestaCompra.put(nombre, itemCesta);
			}
	
		}
	
	}
	
	
	
	
	@Override
	public void deleteAll() {
		cestaCompra.clear();
		
	}

	@Override
	public float getAmount() {
		float amount = 0;
		for(Item item : cestaCompra.values()) {
			Habitacion h = (Habitacion)(item.getProducto());
			amount += h.getPrecioNoche() * item.getUnidades();
		}
		
		return amount;
		
	}


	

	
	
	
	
}
