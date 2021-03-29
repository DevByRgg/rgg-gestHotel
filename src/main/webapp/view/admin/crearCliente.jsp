<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="../head.jsp"/>

<title>Zona Administracion - Crear Cliente</title>

</head>
<body>
	<c:import url="navbar.jsp"/>
	
	<div class="container-md w-75">
		<!-- Titulo -->
		<h2 class="paddingTop20">
			Cliente <span class="badge badge-secondary bg-info text-white">CREAR</span>
		</h2>
		
		<!-- Forumulario -->
		<form action="/admin/crearClienteControl" method="GET">
						
			<!-- Nombre del hotel -->
			<div class="form-group mt-4">
				<label class="text-secondary font-weight-bold" for="nombreCliente">Nombre</label>
				<input type="text" class="form-control" name="nombreCliente" id="nombreCliente"	placeholder="Nombre" required>
			</div>
			
			<!-- CIF -->
			<div class="form-group mt-4">
				<label class="text-secondary font-weight-bold" for="dniCliente">D.N.I.</label>
				<input type="text" class="form-control" name="dniCliente" id="dniCliente"	placeholder="00000000A " required>
			</div>
			
			<!-- Direccion del hotel -->
			<div class="form-group mt-4">
				<label class="text-secondary font-weight-bold" for="direccionCliente">Direccion</label>
				<input type="text" class="form-control" name="direccionCliente" id="direccionCliente"	placeholder="Direccion" required>
			</div>
			
			<!-- Telefono del hotel -->
			<div class="form-group mt-4">
				<label class="text-secondary font-weight-bold" for="telefonoCliente">Telefono</label>
				<input type="text" class="form-control" name="telefonoCliente" id="telefonoCliente"	placeholder="Telefono" required>
			</div>
			
			<!-- Email del hotel -->
			<div class="form-group mt-4">
				<label class="text-secondary font-weight-bold" for="emailCliente">Email</label>
				<input type="text" class="form-control" name="emailCliente" id="emailCliente"	placeholder="hotel@dominio.es" required>
			</div>
			
			<!-- Email del hotel -->
			<div class="form-group mt-4">
				<label class="text-secondary font-weight-bold" for="tarjetaCreditoCliente">Numero tarjeta de credito</label>
				<input type="text" class="form-control" name="tarjetaCreditoCliente" id="tarjetaCreditoCliente"	placeholder="0000 0000 0000 0000" required>
			</div>
			
			<!-- Email del hotel -->
			<div class="form-group mt-4">
				<label class="text-secondary font-weight-bold" for="fechaNacimientoCliente">Fecha de nacimiento</label>
				<input type="date" class="form-control" name="fechaNacimientoCliente" id="fechaNacimientoCliente"	placeholder="Fecha de nacimiento" required>
			</div>
			
			
			
			<!-- Boton enviar formulario -->
			<div class="botonEnviar mt-4">
				<button type="submit" class="btn btn-outline-info btn-lg font-weight-bold">Crear</button>
			</div>
		</form>
	</div>

</body>
</html>