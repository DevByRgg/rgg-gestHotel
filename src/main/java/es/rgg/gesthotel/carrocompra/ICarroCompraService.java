package es.rgg.gesthotel.carrocompra;

import java.util.Map;

import es.rgg.gesthotel.carrocompra.Item;

public interface ICarroCompraService {
	public void addItem(Item i);
	public int getItemNumber();
	public Map<String, Item> getItems();
	public void showCart();
	public void deleteItem(Item i);
	public void deleteAll();
	public float getAmount();

}
