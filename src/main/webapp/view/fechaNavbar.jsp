<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<nav class="navbar bg-light mt-3">
	
	<div class="container-md w-75">
		<form action="/diasReserva" method="GET">
			<div class="btn-group btn-group-lg input-group input-daterange" id="selectorFechas">
  				<div class="btn btn-outline-white">Desde</div>
  				<input type="date" class="btn btn-outline-info fechas" id="fechaEntrada" name="fechaEntrada"></input>
  				<div class="btn btn-outline-white">Hasta</div>
  				<input type="date" class="btn btn-outline-info fechas" id="fechaSalida" name="fechaSalida"></input>
				<div class="btn btn-outline-white"></div>
				<button class="btn btn-info">Seleccionar</button>
			</div>
		</form>
	</div>
	
	<div class="float-right">
		<a class="btn btn-lg btn-info" href="#">
			<img src="./images/iconos_svg/carro-vacio-white.svg" width="25" height="25" class="rounded mr-3" alt="Vaciar cesta">Vaciar Cesta
		</a>
	</div>
	
	
	
		
</nav>


<script>
	const fechaEntrada = document.getElementById('fechaEntrada')
	const fechaSalida = document.getElementById('fechaSalida')
	
	
	
	var today = moment().format('YYYY-MM-DD')
	var tomorrow = moment(today).add(1, 'days').format('YYYY-MM-DD')
	
	fechaEntrada.setAttribute('value', today)
	fechaEntrada.setAttribute('min', today)
	fechaSalida.setAttribute('value', tomorrow)
     fechaSalida.setAttribute('min', tomorrow)
	
	$('#fechaEntrada').on('change', function(){
    	var date = new Date($('#fechaEntrada').val());
     	day = date.getDate();
     	month = date.getMonth() + 1;
     	year = date.getFullYear();
     	
     	var entrada = [year, month, day].join('-');
     	var limite = moment(entrada).add(1, 'days').format('YYYY-MM-DD')
     	
     	fechaSalida.setAttribute('value', limite)
     	fechaSalida.setAttribute('min', limite)
		
	});
	
		
	
	
</script>
	
	
