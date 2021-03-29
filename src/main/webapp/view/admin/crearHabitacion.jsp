<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="../head.jsp"/>

<title>Zona Administracion - Crear Habitacion</title>

</head>
<body>
	<c:import url="navbar.jsp"/>
	
	<div class="container-md w-75">
		<!-- Titulo -->
		<h2 class="paddingTop20">
			Habitacion <span class="badge badge-secondary bg-info text-white">CREAR</span>
		</h2>
		
		<!-- Forumulario -->
		<form action="/admin/crearHabitacionControl" method="GET">
			<!-- Id del Hotel -->
			<div class="form-group w-25 mt-1">
				<label class="text-secondary font-weight-bold" for="idHotel">Nombre del Hotel</label>
				<select	class="form-control" id="idHotel" name="idHotel">
					<c:forEach items="${hoteles}" var="hotel">
						<option value="${hotel.id}">${hotel.nombre}</option>
					</c:forEach>
				</select>
			</div>
			
			<!-- Nombre de la habitacion -->
			<div class="form-group mt-4">
				<label class="text-secondary font-weight-bold" for="nombreHabitacion">Nombre de la habitacion</label>
				<input type="text" class="form-control" name="nombreHabitacion" id="nombreHabitacion"	placeholder="Nombre de la habitacion" required>
			</div>
			
			<!-- Capacidad de la habitacion -->
			<div class="form-group w-25 mt-1">
				<label class="text-secondary font-weight-bold" for="capacidad">Capacidad</label> 
				<select	class="form-control" id="capacidad" name="capacidad">
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
					<option>5</option>
					<option>6</option>
				</select>
			</div>
			
			<!-- Descripcion de la habitacion -->
			<div class="form-group mt-4">
				<label class="text-secondary font-weight-bold" for="descripcion">Descripcion de la habitacion</label>
				<input type="text" class="form-control" name="descripcion" id="descripcion"	placeholder="Descripcion de la habitacion" required>
			</div>
			
			<!-- Opciones de la habitacion -->
			<div class="form-check mt-4">
				<input class="form-check-input" type="checkbox"	id="checkAireAcondicionado" name="aireAcondicionado"> 
				<label class="form-check-label text-secondary font-weight-bold" for="checkAireAcondicionado"> Aire acondicionado </label>
			</div>
			
			<div class="form-check mt-1">
				<input class="form-check-input" type="checkbox"	id="checkCajaFuerte" name="cajaFuerte"> 
				<label class="form-check-label text-secondary font-weight-bold" for="checkCajaFuerte"> Caja fuerte </label>
			</div>
						
			<div class="form-check mt-1">
				<input class="form-check-input" type="checkbox" id="checkMascotas"	name="mascotas">
				<label class="form-check-label text-secondary font-weight-bold"	for="checkMascotas"> Admite mascotas </label>
			</div>
			
			<div class="form-check mt-1">
				<input class="form-check-input" type="checkbox" id="checkMinibar"	name="minibar">
				<label class="form-check-label text-secondary font-weight-bold"	for="checkMinibar"> Tiene minibar </label>
			</div>
			
			<div class="form-check mt-1">
				<input class="form-check-input" type="checkbox" id="checkVistas" name="vistas">
				<label class="form-check-label text-secondary font-weight-bold" for="checkVistas"> Vistas al mar</label>
			</div>

			<div class="form-check mt-1">
				<input class="form-check-input" type="checkbox" id="checkWifi" name="wifi">
				<label class="form-check-label text-secondary font-weight-bold" for="checkWifi"> Tiene Wifi </label>
			</div>
			
			<!-- Precio de la habitacion -->
			<div class="form-group mt-4">
				<label class="text-secondary font-weight-bold" for="precio">Precio por noche</label>
				<input type="number" class="form-control" id="precio" name="precio" placeholder="Precio por noche" min="50" max="500" required>
			</div>
			
			<!-- Imagen de la habitacion -->
			<div class="form-group mt-1">
				<label class="text-secondary font-weight-bold" for="fotografia">Fotografia</label>
				<input type="text" name="fotografia" class="form-control" id="fotografia" placeholder="Fotografia" required>
			</div>
			
			<!-- Boton enviar formulario -->
			<div class="botonEnviar mt-4">
				<button type="submit" class="btn btn-outline-info btn-lg font-weight-bold">Crear</button>
			</div>
		</form>
	</div>

</body>
</html>