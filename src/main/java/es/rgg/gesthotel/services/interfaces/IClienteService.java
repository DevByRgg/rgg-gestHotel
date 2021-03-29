package es.rgg.gesthotel.services.interfaces;

import java.util.List;

import es.rgg.gesthotel.entities.Cliente;


public interface IClienteService {
	public void create(Cliente c);
	public Cliente findById(int id);
	public List<Cliente> findAll();
	public void update(Cliente c);
	public void delete(int id);
	public void delete(Cliente c);
}
