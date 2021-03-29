package es.rgg.gesthotel.errorcontroller;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class CustomErrorController implements ErrorController{

	@RequestMapping
	public ModelAndView showErrorPage() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("mensaje", "Ha ocurrido un error Contacte con el CAU");
		mav.setViewName("genericError");
		return mav;
	}
	
	
	
	@Override
	public String getErrorPath() {
		// TODO Auto-generated method stub
		return null;
	}

}
