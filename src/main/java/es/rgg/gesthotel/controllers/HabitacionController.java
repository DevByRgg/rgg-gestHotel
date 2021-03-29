package es.rgg.gesthotel.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import es.rgg.gesthotel.entities.Habitacion;
import es.rgg.gesthotel.entities.Hotel;
import es.rgg.gesthotel.services.interfaces.IHabitacionService;

@Controller
public class HabitacionController {
	
	@Autowired
	IHabitacionService habitacionService;
	
	
	@GetMapping("admin/crearHabitacionControl")
	public String crearHabitacion(
			@RequestParam (name = "idHotel", required = true) int idHotel,
			@RequestParam (name = "nombreHabitacion", required = true) String nombre,
			@RequestParam (required = true) int capacidad,
			@RequestParam (name = "descripcion", required = true) String descripcion,
			@RequestParam (name = "aireAcondicionado", defaultValue = "false", required = true) boolean aireAcondicionado,
			@RequestParam (name = "cajaFuerte", defaultValue = "false", required = true) boolean cajaFuerte,
			@RequestParam (name = "mascotas", defaultValue = "false", required = true) boolean mascotas,
			@RequestParam (name = "minibar", defaultValue = "false", required = true) boolean minibar,
			@RequestParam (name = "vistas", defaultValue = "false", required = true) boolean vistas,
			@RequestParam (name = "wifi", defaultValue = "false", required = true) boolean wifi,
			@RequestParam (name = "precio", required = true) int precioNoche,
			@RequestParam (name = "fotografia", required = true) String fotoHabitacion) {
		
		Habitacion h = new Habitacion(
				0, nombre, idHotel, capacidad, descripcion, aireAcondicionado, cajaFuerte, 
				mascotas, minibar, vistas, wifi, precioNoche, fotoHabitacion);
		
		habitacionService.create(h);
		
		return "redirect:crearHabitacion";
	}
		
	
	@GetMapping("admin/mostrarHabitaciones")
	public ModelAndView findAllHabitaciones() {
		List<Habitacion> listaHabitaciones = habitacionService.findAll();
		ModelAndView mav = new ModelAndView();
		mav.addObject("habitaciones", listaHabitaciones);
		mav.setViewName("/admin/mostrarHabitaciones");
		return mav;
	}
	

	@GetMapping("admin/borrarHabitacion")
	public String borrarHabitacion(
			@RequestParam(required = true) int id) {
		
		habitacionService.delete(id);
		
		return "redirect:mostrarHabitaciones";
	}


	


}
