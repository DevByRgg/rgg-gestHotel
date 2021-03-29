package es.rgg.gesthotel.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import es.rgg.gesthotel.entities.Hotel;

public interface IHotelRepository extends JpaRepository<Hotel, Integer> {

}
