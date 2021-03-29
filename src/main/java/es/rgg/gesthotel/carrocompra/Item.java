package es.rgg.gesthotel.carrocompra;

public class Item<T> {
	private T producto;
	private int unidades;
	
	public Item(T producto, int unidades) {
		super();
		this.producto = producto;
		this.unidades = unidades;
	}

	public T getProducto() {
		return producto;
	}

	public void setProducto(T producto) {
		this.producto = producto;
	}

	public int getUnidades() {
		return unidades;
	}

	public void setUnidades(int unidades) {
		this.unidades = unidades;
	}

	@Override
	public String toString() {
		return "Item [producto=" + producto + ", unidades=" + unidades + "]";
	}

	
}
