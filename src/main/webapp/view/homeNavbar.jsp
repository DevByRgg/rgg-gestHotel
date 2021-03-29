<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<nav class="navbar bg-info fixed-top">

		<!-- Logotipo corporativo -->
		<a class="navbar-brand text-light" href="/">
			<img src="./images/iconos/hotel_logo_512px.png" width="30" height="30" class="rounded float-left" alt="Volver a home">Home
		</a>


	<div class="container-md w-50">
		
		<div class="dropdown">
			
			<button class="btn btn-outline-light dropdown-toggle" type="button" id="dropdownMenuButton" title="Capacidad" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			    Capacidad
  			</button>
  			<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    			<a class="dropdown-item" href="/findByCapacidad?idHotel=${hotel.id}&capacidad=2">2 ó más</a>
    			<a class="dropdown-item" href="/findByCapacidad?idHotel=${hotel.id}&capacidad=3">3 ó más</a>
    			<a class="dropdown-item" href="/findByCapacidad?idHotel=${hotel.id}&capacidad=4">4 ó más</a>
    			<a class="dropdown-item" href="/findByCapacidad?idHotel=${hotel.id}&capacidad=5">5 ó más</a>
    			<a class="dropdown-item" href="/findByCapacidad?idHotel=${hotel.id}&capacidad=6">6 ó más</a>
  			</div>
		</div>
		
						
		<a type="button" class="btn btn-outline-light" href="/findByAireAcondicionado?idHotel=${hotel.id}">
			<img src="./images/iconos_svg/aire-acondicionado-white.svg" width="25" height="25" class="rounded" title="Aire acondicionado" alt="Aire acondicionado">
		</a>
		
		
		<a type="button" class="btn btn-outline-light" href="/findByCajaFuerte?idHotel=${hotel.id}">
			<img src="./images/iconos_svg/cajafuerte.svg" width="25" height="25" class="rounded" title="Caja fuerte" alt="Caja fuerte">
		</a>
		
		
		<a type="button" class="btn btn-outline-light" href="/findByMascotas?idHotel=${hotel.id}">
			<img src="./images/iconos/mascotas_512px.png" width="25" height="25" class="rounded" title="Mascotas" alt="Mascotas">
		</a>
		
		
		<a type="button" class="btn btn-outline-light" href="/findByMinibar?idHotel=${hotel.id}">
			<img src="./images/iconos/minibar_512px.png" width="25" height="25" class="rounded" title="Minibar" alt="Minibar">
		</a>
		
		
		<a type="button" class="btn btn-outline-light" href="/findByVistas?idHotel=${hotel.id}">
			<img src="./images/iconos/vistas_512px.png" width="25" height="25" class="rounded" title="Vistas al mar" alt="Vistas al mar">
		</a>
		
		
		<a type="button" class="btn btn-outline-light" href="/findByWifi?idHotel=${hotel.id}">
			<img src="./images/iconos_svg/wifi-white.svg" width="25" height="25" class="rounded" title="Wifi" alt="Wifi">
		</a>
		
		<a type="button" class="btn btn-outline-light" href="/crearHomeHabitaciones?idHotel=${hotel.id}">
			Ver todas
		</a>
		
	</div>
	
	<div class="float-right">
		
		<span class="navbar-text text-light">${hotel.nombre}</span>
		
		<a type="button" class="btn ml-2" href="/verCestaCompra">
			<c:choose>
				<c:when test="${numeroCesta != 0}">
					<img src="./images/iconos_svg/carro-lleno-white.svg" width="25" height="25" class="rounded"  title="Cesta compra" alt="Cesta compra"><span class="badge badge-info text-light align-top">${numeroCesta}</span>
				</c:when>
				<c:otherwise>
					<img src="./images/iconos_svg/carro-vacio-white.svg" width="25" height="25" class="rounded" title="Cesta compra" alt="Cesta compra">
				</c:otherwise>
			</c:choose>
			
		</a>

		
	</div>		
		
		
		
	
		
</nav>