<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ES">
<head>
<c:import url="../head.jsp" />

<script>
		var idCliente;
		function configurarBorrado(id){
			idCliente=id;
		}
		function borrar(){
			window.location.href = "borrarCliente?id=" + idCliente;
		}
</script>

<title>Zona Administracion - Mostrar Clientes</title>

</head>
<body>

	<c:import url="navbar.jsp" />

	<div class="container-fluid w-75">
		<!-- Titulo -->
		<h2 class="paddingTop20">
			Clientes <span class="badge badge-secondary bg-info text-white">LISTADO</span>
		</h2>

		<!-- Forumulario -->
		<table class="table table-striped">
			<thead>
				<tr tr class="table-info">
					<th class="align-middle text-left" scope="col">Id</th>
					<th class="align-middle text-left" scope="col">Nombre</th>
					<th class="align-middle text-left" scope="col">DNI</th>
					<th class="align-middle text-left" scope="col">Direccion</th>
					<th class="align-middle text-left" scope="col">Telefono</th>
					<th class="align-middle text-left" scope="col">Email</th>
					<th class="align-middle text-left" scope="col">Tarjeta Credito</th>
					<th class="align-middle text-left" scope="col">Fecha Nacimiento</th>
					<th class="align-middle text-left" scope="col">Accion</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${clientes}" var="cliente">
					<tr>
						<th scope="row" class="align-middle text-center">${cliente.id}</th>
						<td class="align-middle text-center">${cliente.nombre}</td>
						<td class="align-middle text-left">${cliente.dni}</td>
						<td class="align-middle text-center">${cliente.direccion}</td>
						<td class="align-middle text-center">${cliente.telefono}</td>
						<td class="align-middle text-left">${cliente.email}</td>
						<td class="align-middle text-center">${cliente.tarjetaCredito}</td>
						<td class="align-middle text-center">${cliente.fechaNacimiento}</td>
						<td class="align-middle text-center">
							<button type="button" class="btn btn-info" data-toggle="modal" data-target="#divBorrado"
							onclick="configurarBorrado('${cliente.id}')">
								Borrar
							</button>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="divBorrado" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">Hotel</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
				¿Estas seguro que quieres borrar este registro?
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-info" onclick="borrar()">Aceptar</button>
					<button type="button" class="btn btn-info" data-dismiss="modal">Cancelar</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>