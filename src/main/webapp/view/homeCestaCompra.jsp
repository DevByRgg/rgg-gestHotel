<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<c:import url="head.jsp" />

<title>Cesta de la Compra</title>

</head>

<body>

<!-- -------NAVBAR TITULO---------------------------------------------------------------------------------------------------------- -->	
	
	<nav class="navbar bg-info mb-0">
		<a class="navbar-brand text-light" href="/hotel">
			<img src="./images/iconos/hotel_logo_512px.png" width="30" height="30" class="rounded float-left" alt="Volver a home">Home
		</a>
		
		<h5 class="navbar-text text-light">Cesta de la compra</h5>
	
		<div class="float-right">
			<a type="button" class="btn mr-3" href="#">
				<c:choose>
					<c:when test="${numeroCesta != 0}">
						<img src="./images/iconos_svg/carro-lleno-white.svg" width="25" height="25" class="rounded" title="Cesta compra" alt="Cesta compra"><span class="badge badge-info text-light align-top">${numeroCesta}</span>
					</c:when>
					<c:otherwise>
						<img src="./images/iconos_svg/carro-vacio-white.svg" width="25" height="25" class="rounded" title="Cesta compra" alt="Cesta compra">
					</c:otherwise>
				</c:choose>			
			</a>
			
			<a class="btn btn-outline-light text-white" href="javascript:history.back()">
				<img src="./images/iconos_svg/flecha2-white-izq-fill.svg" width="25" height="25" class="float-left mr-2" alt="Volver">Volver
			</a>
			
		</div>	
			
	</nav>
	
	
<!-- -------BARRA SELECCION FECHAS---------------------------------------------------------------------------------------------------------- -->	
	
	<c:import url="fechaNavbar.jsp" />
	

<!-- -------CARD RESERVA HABITACIONES---------------------------------------------------------------------------------------------------------- -->	
	
	<div class="container-md w-75">
		
		<!-- Forumulario -->
		<div class="row">
			<div class="col-sm-8">
				
				<c:forEach items="${reservas}" var="reserva">
				
					<div class="card border-info mt-3">
  					
  						<div class="card-header">
  							<h5 class="w-75 float-left align-middle">${reserva.key}</h5>
  						
  							<div class="w-25 float-right">
    							<img class="rounded float-right" width="50%" alt="" src="${reserva.value.producto.fotoHabitacion}">
    						</div>
  						</div>
    					
    					<div id="accordion">
  							<div class="card-body" id="headingOne">
    							<h4 class="mb-0">
        							<a class="btn btn-link text-dark text-justify-left" data-toggle="collapse" data-target="#collapse${reserva.value.producto.id}" aria-expanded="true" aria-controls="collapseOne">
          								Descripción:
        							</a>
      							</h4>
    						</div>

    						<div id="collapse${reserva.value.producto.id}" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
      							<div class="card-text ml-3 mr-3">
        							<p>${reserva.value.producto.descripcion}</p>
        						</div>
    						</div>
  						</div>
    						
    					<div class="card-body">
    						<c:forEach var="i" begin="1" end="${reserva.value.producto.capacidad}">
								<img src="./images/iconos_svg/persona.svg" width="10" height="20" class="rounded" title="Capacidad" alt="Capacidad">
							</c:forEach>
    				
    						<c:choose>
								<c:when test="${reserva.value.producto.aireAcondicionado}">
									<img src="./images/iconos_svg/aire-acondicionado-black.svg" width="20" height="20" class="rounded ml-4" title="Aire acondicionado" alt="Aire acondicionado">
								</c:when>
							</c:choose>
    				
    						<c:choose>
								<c:when test="${reserva.value.producto.cajaFuerte}">
									<img src="./images/iconos_svg/cajafuerte.svg" width="20" height="20" class="rounded ml-4" title="Caja fuerte" alt="Caja fuerte">
								</c:when>
							</c:choose>
    				
    						<c:choose>
								<c:when test="${reserva.value.producto.mascotas}">
									<img src="./images/iconos/mascotas_512px.png" width="20" height="20" class="rounded ml-4" title="Admite mascotas" alt="Admite mascotas">
								</c:when>
							</c:choose>
    				
    						<c:choose>
								<c:when test="${reserva.value.producto.minibar}">
									<img src="./images/iconos/minibar_512px.png" width="20" height="20" class="rounded ml-4" title="Tiene minibar" alt="Tiene minibar">
								</c:when>
							</c:choose>
							
							<c:choose>
								<c:when test="${reserva.value.producto.vistas}">
									<img src="./images/iconos/vistas_512px.png" width="20" height="20" class="rounded ml-4" title="Vistas al mar" alt="Vistas al mar">
								</c:when>
							</c:choose>
							
							<c:choose>
								<c:when test="${reserva.value.producto.wifi}">
									<img src="./images/iconos_svg/wifi-black.svg" width="20" height="20" class="rounded ml-4" title="Wifi alta velocidad" alt="Wifi alta velocidad">
								</c:when>
							</c:choose>
    					
    					</div>	
    				
    				
    					<div class="card-footer">
							
							<h6 class="text-dark float-left">
    							<span class="card-subtitle text-muted small mr-2">Cantidad:</span>
    							
    							<c:choose>
									<c:when test="${reserva.value.unidades eq 1}">
    									<a class="btn-link mr-2 disabled" href="#">
    										<img width="16" height="16" title="Eliminar una habitacion" src="./images/iconos_svg/circulo-menos-disabled.svg" alt="menos">
    									</a>
    								</c:when>
    								<c:otherwise>
    									<a class="mr-2" href="/hotel/eliminarHabitacionCesta?idHabitacion=${reserva.value.producto.id}&cantidad=${reserva.value.unidades}">
    										<img width="16" height="16" title="Eliminar una habitacion" src="./images/iconos_svg/circulo-menos.svg" alt="menos">
    									</a>
    								</c:otherwise>
								</c:choose>
    							
    							<span class="mr-2">${reserva.value.unidades}</span>
    							
    							<a class="mr-4" href="/hotel/anadirHabitacionCesta?idHabitacion=${reserva.value.producto.id}">
    								<img width="16" height="16" title="Añadir una habitacion" src="./images/iconos_svg/circulo-mas.svg" alt="mas">
    							</a>
    							
    							<a class="mr-2" href="/hotel/quitarHabitacionCesta?idHabitacion=${reserva.value.producto.id}">
    								<img width="16" height="16" class="text-info" title="Eliminar todas" src="./images/icons_bootstrap/trash.svg" alt="eliminar">
    							</a>
    							
    						</h6>
							
    						<h6 class="text-dark float-right">
    							<span class="card-subtitle text-muted small">Precio noche: </span>${reserva.value.producto.precioNoche}€
    						</h6>
    					</div>
    				</div>
				
				</c:forEach>
			
			</div>
			
		
<!-- -------CARD RESUMEN---------------------------------------------------------------------------------------------------------- -->	
			<div class="col-sm-4">
				<div class="card border-info mt-3">
					
					<div class="card-header">
  						<h5 class="card-title">Resumen</h5>
  						<h6 class="card-text text-muted">Fecha entrada:<span class="float-right">${fechaEntrada}</span></h6>
  						<h6 class="card-text text-muted">Fecha salida:<span class="float-right">${fechaSalida}</span></h6>
  						
  						
  						
  					</div>
    				
    				<div class="card-body">
    					<c:forEach items="${reservas}" var="reserva">
  							<h6 class="card-title">${reserva.key}</h6>
  							<p class="card-text">Precio por noche:<span class="float-right">${reserva.value.producto.precioNoche}€</span></p>
  							<p class="card-text">Cantidad:<span class="float-right">x${reserva.value.unidades}</span></p>
  							
  							<c:choose>
								<c:when test="${diasReserva == null}">
  									<p class="card-text">Numero de dias<span class="float-right text-danger">Introduce Fechas</span></p>
  								</c:when>
  								<c:otherwise>
  									<p class="card-text">Numero de dias<span class="float-right">x${diasReserva}</span></p>
  								</c:otherwise>
							</c:choose>
  							
  							<p class="card-text mb-3 bg-secondary text-white">Total habitacion<span class="float-right">${reserva.value.producto.precioNoche*reserva.value.unidades*diasReserva}€</span></p>
  						</c:forEach>
  					</div>
  					
  					<div class="card-footer">
  						<h5 class="card-text mb-3 bg-info text-white">Total<span class="float-right">${precioTotal}€</span></h5>
  					
  						<a class="btn btn-outline-info btn-block" href="#">Reservar</a>
  					</div>
    				
    				
				</div>
			</div>
		</div>
	</div>
			
	<script src="./js/refrescarVentana.js"></script>
</body>

</html>