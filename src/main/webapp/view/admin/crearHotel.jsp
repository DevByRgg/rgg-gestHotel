<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ES">
<head>

<c:import url="../head.jsp"/>

<title>Zona Administracion - Crear Hotel</title>

</head>
<body>

	<c:import url="navbar.jsp"/>
	
	<div class="container-md w-50">
		<!-- Titulo -->
		<h2 class="paddingTop20">
			Planta <span class="badge badge-secondary bg-info text-white">CREAR</span>
		</h2>
		
		<!-- Forumulario -->
		<form action="/admin/crearHotelControl" method="GET">

			<!-- Id de la Hotel -->
			<div class="form-group mt-4">
				<label class="text-secondary font-weight-bold" for="idHotel">Id del hotel</label>
				<input type="number" class="form-control" name="idHotel" min="1" pattern="^[0-9]+" id="idHotel" placeholder="Id del hotel" required>
			</div>
			
			<!-- Nombre de la Hotel -->
			<div class="form-group mt-4">
				<label class="text-secondary font-weight-bold" for="nombreHotel">Nombre del hotel</label>
				<input type="text" class="form-control" name="nombreHotel" id="nombreHotel" placeholder="Nombre del hotel" required>
			</div>
			
			<!-- Imagen de la Hotel -->
			<div class="form-group mt-1">
				<label class="text-secondary font-weight-bold" for="fotoHotel">Fotografia</label>
				<input type="text" name="fotoHotel" class="form-control" id="fotoHotel" placeholder="Fotografia del Hotel" required>
			</div>
			
			<!-- Boton enviar formulario -->
			<div class="botonEnviar mt-4">
				<button type="submit" class="btn btn-outline-info btn-lg font-weight-bold">Crear</button>
			</div>
		</form>
	</div>

</body>
</html>