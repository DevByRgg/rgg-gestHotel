package es.rgg.gesthotel.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import es.rgg.gesthotel.entities.Cliente;
import es.rgg.gesthotel.services.interfaces.IClienteService;

@Controller
public class ClienteController {

	@Autowired
	IClienteService clienteService;
	
	
	@GetMapping("admin/crearClienteControl")
	public String crearCliente(
			@RequestParam (name = "nombreCliente", required = true) String nombre,
			@RequestParam (name = "dniCliente", required = true) String dni,
			@RequestParam (name = "direccionCliente", required = true) String direccion,
			@RequestParam (name = "telefonoCliente", required = true) String telefono,
			@RequestParam (name = "emailCliente", required = true) String email,
			@RequestParam (name = "tarjetaCreditoCliente", required = true) String tarjetaCredito,
			@RequestParam (name = "fechaNacimientoCliente", required = true) String fechaNacimiento) {
		
		Cliente c = new Cliente(0, nombre, dni, direccion, telefono, email, tarjetaCredito, fechaNacimiento);
		
		clienteService.create(c);
		
		return "redirect:crearCliente";
	}
	
	
	@GetMapping("admin/mostrarClientes")
	public ModelAndView findAllClientes() {
		List<Cliente> listaClientes = clienteService.findAll();
		ModelAndView mav = new ModelAndView();
		mav.addObject("clientes", listaClientes);
		mav.setViewName("/admin/mostrarClientes");
		return mav;
	}
	

	@GetMapping("admin/borrarCliente")
	public String borrarCliente(
			@RequestParam(required = true) int id) {
		
		clienteService.delete(id);
		
		return "redirect:mostrarClientes";
		
	}
	
}
