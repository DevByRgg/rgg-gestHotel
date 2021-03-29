package es.rgg.gesthotel.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import es.rgg.gesthotel.entities.Cliente;

public interface IClienteRepository extends JpaRepository<Cliente, Integer>{

}
