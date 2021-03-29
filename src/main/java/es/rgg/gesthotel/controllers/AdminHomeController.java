package es.rgg.gesthotel.controllers;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import es.rgg.gesthotel.entities.Hotel;
import es.rgg.gesthotel.services.interfaces.IHotelService;

@Controller
public class AdminHomeController {

	@Autowired
	IHotelService hotelService;
	
	
	@GetMapping("/admin")
	public ModelAndView mostrarHomePage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/admin");
		return mav;
	}

	@GetMapping("/admin/crearHotel")
	public ModelAndView crearPlantaPage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/crearHotel");
		return mav;
	}

	@GetMapping("/admin/crearHabitacion")
	public ModelAndView crearHabitacionPage() {
		ModelAndView mav = new ModelAndView();
		List<Hotel> listaHoteles = hotelService.findAll();
		mav.addObject("hoteles", listaHoteles);
		mav.setViewName("admin/crearHabitacion");
		return mav;
	}
	
	@GetMapping("/admin/crearCliente")
	public ModelAndView crearClientePage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/crearCliente");
		return mav;
	}
	
	
}