package es.rgg.gesthotel.controllers;


import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Map;
import static java.time.temporal.ChronoUnit.DAYS;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import es.rgg.gesthotel.carrocompra.Item;
import es.rgg.gesthotel.entities.Habitacion;
import es.rgg.gesthotel.services.interfaces.IHabitacionService;
import es.rgg.gesthotel.services.interfaces.IReservaService;

@Controller
public class ReservaController {
	
	@Autowired
	IHabitacionService habitacionService;
	@Autowired
	IReservaService reservaService;
	
	
	@GetMapping("/reservarHabitacion")
	public String addHabitaciones(
		@RequestParam (name = "idHotel", required = true) int idHotel,
		@RequestParam (name = "idHabitacion", required = true) int idHabitacion) {
		
		Habitacion h = habitacionService.findById(idHabitacion);
		
		System.out.println("****************************************************" + h);
		
		reservaService.reservarHabitacion(h);
		
		return "redirect:/crearHomeHabitaciones?idHotel=" + idHotel;
		
	}

	
	@GetMapping("/verCestaCompra")
	public ModelAndView verReservas() {
		Map<String, Item> reservas = reservaService.getReservas();
		
		int numeroReservas = reservaService.getNumeroReservas();
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("numeroCesta", numeroReservas);
		mav.addObject("reservas", reservas);
		mav.setViewName("homeCestaCompra");
		
		return mav;
		
	}
	
	
	@GetMapping("/diasReserva")
	public ModelAndView getDiasReserva(
			@RequestParam (name = "fechaEntrada", required = true) String entrada,
			@RequestParam (name = "fechaSalida", required = true) String salida) {
		Map<String, Item> reservas = reservaService.getReservas();
		
		System.out.println(entrada);
		System.out.println(salida);
		
		DateTimeFormatter formateador = DateTimeFormatter.ofPattern("yyyy-MM-dd");

		LocalDate fechaEntrada = LocalDate.parse(entrada, formateador);
		LocalDate fechaSalida = LocalDate.parse(salida, formateador);

		System.out.println(fechaEntrada);
		System.out.println(fechaSalida);
		
		
		long diasReserva = DAYS.between(fechaEntrada, fechaSalida);
	
		int precioHabitaciones = (int)(reservaService.getImporteReservas());
		int precioTotal = (int)(precioHabitaciones * diasReserva);
		
		int numeroReservas = reservaService.getNumeroReservas();
		
		ModelAndView mav = new ModelAndView();
		
		
		mav.addObject("fechaEntrada", fechaEntrada);
		mav.addObject("fechaSalida", fechaSalida);
		mav.addObject("diasReserva", diasReserva);
		mav.addObject("precioTotal", precioTotal);
		
		mav.addObject("numeroCesta", numeroReservas);
		mav.addObject("reservas", reservas);
		mav.setViewName("homeCestaCompra");
		
		return mav;
		
	}
	
	
	@GetMapping("/anadirHabitacionCesta")
	public String addHabitacionesCesta(
		@RequestParam (name = "idHabitacion", required = true) int idHabitacion) {
		
		Habitacion h = habitacionService.findById(idHabitacion);
		
		reservaService.reservarHabitacion(h);
		
		return "redirect:/verCestaCompra";
		
	}
	
	
	@GetMapping("/eliminarHabitacionCesta")
	public String deleteHabitacionesCesta(
		@RequestParam (name = "idHabitacion", required = true) int idHabitacion,
		@RequestParam (name = "cantidad", required = true) int cantidad) {
		
		Habitacion h = habitacionService.findById(idHabitacion);
		
		reservaService.borrarReservaHabitacion(h, cantidad);
		
		return "redirect:/verCestaCompra";

	}
	
	
	@GetMapping("/quitarHabitacionCesta")
	public String deleteAllHabitacionesCesta(
		@RequestParam (name = "idHabitacion", required = true) int idHabitacion){
		
		Habitacion h = habitacionService.findById(idHabitacion);
		
		reservaService.borrarReservaHabitacion(h, 1);
		
		return "redirect:/verCestaCompra";
	
	}
	
}
