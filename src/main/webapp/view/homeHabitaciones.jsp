<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<c:import url="head.jsp" />

<title>${hotel.nombre} </title>

</head>

<body class="pt-4">

	<!-- Barra de formulario -->
	<c:import url="homeNavbar.jsp" />
	
		
	<!-- Carrusel fotografico -->
	<c:choose>
		<c:when test="${hotel.id == 1}">
			<c:import url="public/carruselRivieraMaya.jsp" />
		</c:when>
		<c:when test="${hotel.id == 2}">
			<c:import url="public/carruselPuntaCana.jsp" />
		</c:when>
		<c:when test="${hotel.id == 3}">
			<c:import url="public/carruselMadrid.jsp" />
		</c:when>
	</c:choose>
	
	
		<!-- Habitaciones -->
	<div class="container-md w-75">

		<c:forEach items="${habitaciones}" var="habitacion">
			<div class="border border-info rounded w-100 mt-5 p-2 float-left">

				<div class="w-50 float-left">
					<img class="w-75" src="${habitacion.fotoHabitacion}" alt="Card image cap">
				</div>

				<div class="w-50 text-left float-left">
					<h5 class="card-title">${habitacion.nombre}</h5>
					<p class="card-text w-100">${habitacion.descripcion}</p>
				</div>

				<div class="w-100 float-left mt-4">
					<div class="mr-5 float-left">
						<c:forEach var="i" begin="1" end="${habitacion.capacidad}">
							<img src="./images/iconos_svg/persona.svg" width="10" height="20" class="rounded" title="Capacidad" alt="Capacidad">
						</c:forEach>
					</div>

					<c:choose>
						<c:when test="${habitacion.aireAcondicionado}">
							<img src="./images/iconos_svg/aire-acondicionado-black.svg"
								width="25" height="25" class="rounded float-left mr-5" 
								title="Aire acondicionado" alt="Aire acondicionado">
						</c:when>
						<c:otherwise>
							<img src="./images/iconos_svg/aire-acondicionado-black-disabled.svg"
								width="25" height="25" class="rounded float-left mr-5"
								title="No tiene aire acondicionado" alt="No tiene aire acondicionado">
						</c:otherwise>
					</c:choose>

					<c:choose>
						<c:when test="${habitacion.cajaFuerte}">
							<img src="./images/iconos_svg/cajafuerte.svg" width="25" height="25"
								class="rounded float-left mr-5" title="Caja fuerte" alt="Caja fuerte">
						</c:when>
						<c:otherwise>
							<img src="./images/iconos_svg/cajafuerte-disabled.svg" width="30"
								height="30" class="rounded float-left mr-5"
								title="No tiene caja fuerte" alt="No tiene caja fuerte">
						</c:otherwise>
					</c:choose>

					<c:choose>
						<c:when test="${habitacion.mascotas}">
							<img src="./images/iconos/mascotas_512px.png" width="25" height="25"
								class="rounded float-left mr-5" title="Admite mascotas" alt="Admite mascotas">
						</c:when>
						<c:otherwise>
							<img src="./images/iconos/mascotas_512px_disabled.png" width="25"
								height="25" class="rounded float-left mr-5"
								title="No admite mascotas" alt="No admite mascotas">
						</c:otherwise>
					</c:choose>

					<c:choose>
						<c:when test="${habitacion.minibar}">
							<img src="./images/iconos/minibar_512px.png" width="25" height="25"
								class="rounded float-left mr-5" title="Minibar" alt="Minibar">
						</c:when>
						<c:otherwise>
							<img src="./images/iconos/minibar_512px_disabled.png" width="25"
								height="25" class="rounded float-left mr-5"
								title="No tiene minibar" alt="No tiene minibar">
						</c:otherwise>
					</c:choose>

					<c:choose>
						<c:when test="${habitacion.vistas}">
							<img src="./images/iconos/vistas_512px.png" width="25" height="25"
								class="rounded float-left mr-5" title="Vistas al mar" alt="Vistas al mar">
						</c:when>
						<c:otherwise>
							<img src="./images/iconos/vistas_512px_disabled.png" width="25"
								height="25" class="rounded float-left mr-5"
								title="Vistas a la piscina" alt="Vistas a la piscina">
						</c:otherwise>
					</c:choose>

					<c:choose>
						<c:when test="${habitacion.wifi}">
							<img src="./images/iconos_svg/wifi-black.svg" width="25" height="25"
								class="rounded float-left mr-5" title="Tiene wifi" alt="Tiene wifi">
						</c:when>
						<c:otherwise>
							<img src="./images/iconos_svg/wifi-black-disabled.svg" width="25"
								height="25" class="rounded float-left mr-5" title="No tiene wifi" alt="No tiene wifi">
						</c:otherwise>
					</c:choose>

					
					<a type="button" class="btn btn-info float-right" href="/reservarHabitacion?idHotel=${hotel.id}&idHabitacion=${habitacion.id}">Reservar</a>
					
					<h4 class="card-text mr-5 float-right">${habitacion.precioNoche}€</h4>
					
					
				</div>


			</div>
		</c:forEach>
	</div>
	
	<script src="./js/refrescarVentana.js"></script>
</body>

</html>