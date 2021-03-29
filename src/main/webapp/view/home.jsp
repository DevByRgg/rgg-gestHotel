<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="head.jsp"/>

<title>Homepage - Hotel</title>

</head>

<body>
	<!-- Barra de titulo corporativa -->
	
	<nav class="navbar bg-info mb-5">

		<!-- Logotipo corporativo -->

		<a class="navbar-brand text-light" href="/hotel"> <img
			src="./images/iconos/hotel_logo_512px.png" width="30" height="30"
			class="rounded float-left" alt="Volver a home">Home
		</a>
		
		<a class="btn btn-outline-light text-light font-weight-bold float-right" href="/hotel/admin">Login</a>
		
	</nav>


	<!-- Fichas de hoteles -->
	
	<div class="container-md w-75 mt-5">
		<div class="card-deck">

			<c:forEach items="${hoteles}" var="hotel">
				
				<div class="card">
										
					<img class="card-img-top" src="${hotel.fotoHotel}" height="300px"
						alt="Card image cap">

					<div class="card-body">
						<h5 class="card-title">${hotel.nombre}</h5>
					</div>

					<div class="card-footer">
						<a class="btn btn-info font-weight-bold float-right" href="/hotel/crearHomeHabitaciones?idHotel=${hotel.id}">Seleccionar</a>
					</div>
					
				</div>
				
			</c:forEach>

		</div>

	</div>

</body>

</html>