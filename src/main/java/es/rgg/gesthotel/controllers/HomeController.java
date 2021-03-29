package es.rgg.gesthotel.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import es.rgg.gesthotel.entities.Habitacion;
import es.rgg.gesthotel.entities.Hotel;
import es.rgg.gesthotel.services.interfaces.IHabitacionService;
import es.rgg.gesthotel.services.interfaces.IHotelService;
import es.rgg.gesthotel.services.interfaces.IReservaService;

@Controller
public class HomeController {
	
	@Autowired
	IHotelService hotelService;
	@Autowired
	IHabitacionService habitacionService;
	@Autowired
	IReservaService reservaService;
	
	
	@RequestMapping (value = "/", method = RequestMethod.GET)
	public ModelAndView mostrarHomePage() {
		
		List<Hotel> listaHoteles = hotelService.findAll();
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("hoteles", listaHoteles);	
		mav.setViewName("home");
		return mav;
		
	}
	
	//Metodo que crea el ModelAndview para todos los metodos
	//-------------------------------------------------------------------------------------------------------
	private ModelAndView vistaHabitacion (List<Habitacion> listaHabitaciones, Hotel h, int numeroReservas) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("hotel", h);
		mav.addObject("numeroCesta", numeroReservas);
		mav.addObject("habitaciones", listaHabitaciones);	
		mav.setViewName("homeHabitaciones");
		return mav;
	}
	//-------------------------------------------------------------------------------------------------------
	
	
	@RequestMapping (value = "/crearHomeHabitaciones", method = RequestMethod.GET)
	public ModelAndView mostrarHomeHabitaciones(
			@RequestParam (name = "idHotel", required = true) int id) {
		
		List<Habitacion> listaHabitaciones = habitacionService.findByHotel(id);
		Hotel h = hotelService.findById(id);
		int numeroReservas = reservaService.getNumeroReservas();
		
		ModelAndView mav = vistaHabitacion (listaHabitaciones, h, numeroReservas);
		
		return mav;
	}

	
	
	// Es lo mismo que @GetMapping("/findByCapacidad")
	@RequestMapping (value = "/findByCapacidad", method = RequestMethod.GET)
	public ModelAndView findHabitacionesByCapacidad (
			@RequestParam (required = true) int idHotel,
			@RequestParam (required = true) int capacidad) {

		List<Habitacion> listaHabitaciones = habitacionService.findByCapacidad(idHotel, capacidad);
		Hotel h = hotelService.findById(idHotel);
		int numeroReservas = reservaService.getNumeroReservas();
		
		ModelAndView mav = vistaHabitacion (listaHabitaciones, h, numeroReservas);
		
		return mav;
	}
	
	@RequestMapping (value = "/findByAireAcondicionado", method = RequestMethod.GET)
	public ModelAndView findHabitacionesByAireAcondicionado (
			@RequestParam (required = true) int idHotel) {

		List<Habitacion> listaHabitaciones = habitacionService.findByAireAcondicionado(idHotel);
		Hotel h = hotelService.findById(idHotel);
		int numeroReservas = reservaService.getNumeroReservas();
		
		ModelAndView mav = vistaHabitacion (listaHabitaciones, h, numeroReservas);
		
		return mav;
	}
	
	@RequestMapping (value = "/findByCajaFuerte", method = RequestMethod.GET)
	public ModelAndView findHabitacionesByCajaFuerte (
			@RequestParam (required = true) int idHotel) {

		List<Habitacion> listaHabitaciones = habitacionService.findByCajaFuerte(idHotel);
		Hotel h = hotelService.findById(idHotel);
		int numeroReservas = reservaService.getNumeroReservas();
		
		ModelAndView mav = vistaHabitacion (listaHabitaciones, h, numeroReservas);
		
		return mav;
	}
	
	@RequestMapping (value = "/findByMascotas", method = RequestMethod.GET)
	public ModelAndView findHabitacionesByMascotas (
			@RequestParam (required = true) int idHotel) {

		List<Habitacion> listaHabitaciones = habitacionService.findByMascotas(idHotel);
		Hotel h = hotelService.findById(idHotel);
		int numeroReservas = reservaService.getNumeroReservas();
		
		ModelAndView mav = vistaHabitacion (listaHabitaciones, h, numeroReservas);
		
		return mav;
	}
	
	@RequestMapping (value = "/findByMinibar", method = RequestMethod.GET)
	public ModelAndView findHabitacionesByMinibar (
			@RequestParam (required = true) int idHotel) {

		List<Habitacion> listaHabitaciones = habitacionService.findByMinibar(idHotel);
		Hotel h = hotelService.findById(idHotel);
		int numeroReservas = reservaService.getNumeroReservas();
		
		ModelAndView mav = vistaHabitacion (listaHabitaciones, h, numeroReservas);
		
		return mav;
	}
	
	@RequestMapping (value = "/findByVistas", method = RequestMethod.GET)
	public ModelAndView findHabitacionesByVistas (
			@RequestParam (required = true) int idHotel) {

		List<Habitacion> listaHabitaciones = habitacionService.findByVistas(idHotel);
		Hotel h = hotelService.findById(idHotel);
		int numeroReservas = reservaService.getNumeroReservas();
		
		ModelAndView mav = vistaHabitacion (listaHabitaciones, h, numeroReservas);
		
		return mav;
	}
	
	@RequestMapping (value = "/findByWifi", method = RequestMethod.GET)
	public ModelAndView findHabitacionesByWifi (
			@RequestParam (required = true) int idHotel) {

		List<Habitacion> listaHabitaciones = habitacionService.findByWifi(idHotel);
		Hotel h = hotelService.findById(idHotel);
		int numeroReservas = reservaService.getNumeroReservas();
		
		ModelAndView mav = vistaHabitacion (listaHabitaciones, h, numeroReservas);
		
		return mav;
	}

	
}
