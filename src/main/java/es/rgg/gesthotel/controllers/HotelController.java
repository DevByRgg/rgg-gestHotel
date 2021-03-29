package es.rgg.gesthotel.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import es.rgg.gesthotel.entities.Hotel;
import es.rgg.gesthotel.services.interfaces.IHotelService;

@Controller
public class HotelController {
	
	@Autowired
	IHotelService hotelService;
	
	@GetMapping("admin/crearHotelControl")
	public String crearHotel(
			@RequestParam (name = "idHotel", required = true) int id,
			@RequestParam (name = "nombreHotel", required = true) String nombre,
			@RequestParam (name = "fotoHotel", required = true) String fotoHotel) {
		
		Hotel h = new Hotel(id, nombre, fotoHotel);
		
		hotelService.create(h);
		
		return "redirect:crearHotel";
	}
	
	@GetMapping("admin/mostrarHoteles")
	public ModelAndView findAllHoteles() {
		List<Hotel> listaHoteles = hotelService.findAll();
		ModelAndView mav = new ModelAndView();
		mav.addObject("hoteles", listaHoteles);
		mav.setViewName("admin/mostrarHoteles");
		return mav;
	}
	
	@GetMapping("admin/borrarHotel")
	public String borrarHotel(
			@RequestParam(required = true) int id){
		hotelService.delete(id);
		
		return "redirect:mostrarHoteles";
	}
	
}
