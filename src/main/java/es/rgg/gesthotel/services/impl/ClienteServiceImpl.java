package es.rgg.gesthotel.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import es.rgg.gesthotel.entities.Cliente;
import es.rgg.gesthotel.repositories.IClienteRepository;
import es.rgg.gesthotel.services.interfaces.IClienteService;

@Service
public class ClienteServiceImpl implements IClienteService{
	
	@Autowired
	IClienteRepository clienteRepository;
	
	@Override
	public void create(Cliente c) {
		
		clienteRepository.save(c);
	}

	@Override
	public Cliente findById(int id) {
		
		return clienteRepository.findById(id).orElse(null);
	}

	@Override
	public List<Cliente> findAll() {
		
		return clienteRepository.findAll();
	}

	@Override
	public void update(Cliente c) {
		
		clienteRepository.save(c);
	}

	@Override
	public void delete(int id) {
		
		clienteRepository.deleteById(id);
	}

	@Override
	public void delete(Cliente c) {
		
		clienteRepository.delete(c);
	}

}
