<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ES">
<head>
<c:import url="../head.jsp" />

<script>
		var idHabitacion;
		function configurarBorrado(id){
			idHabitacion=id;
		}
		function borrar(){
			window.location.href = "borrarHabitacion?id=" + idHabitacion;
		}
</script>

<title>Zona Administracion - Mostrar Habitaciones</title>

</head>
<body>

	<c:import url="navbar.jsp" />

	<div class="container-fluid w-75">
		<!-- Titulo -->
		<h2 class="paddingTop20">
			Habitaciones <span class="badge badge-secondary bg-info text-white">LISTADO</span>
		</h2>

		<!-- Forumulario -->
		<table class="table table-striped">
			<thead>
				<tr tr class="table-info">
					<th class="align-middle text-left" scope="col">Id</th>
					<th class="align-middle text-left" scope="col">Hotel</th>
					<th class="align-middle text-left" scope="col">Nombre</th>
					<th class="align-middle text-left" scope="col">Capacidad</th>
					<th class="align-middle text-left" scope="col">A/A</th>
					<th class="align-middle text-left" scope="col">Caja Fuerte</th>
					<th class="align-middle text-left" scope="col">Mascotas</th>
					<th class="align-middle text-left" scope="col">Minibar</th>
					<th class="align-middle text-left" scope="col">Vistas</th>
					<th class="align-middle text-left" scope="col">Wifi</th>
					<th class="align-middle text-left" scope="col">Precio</th>
					<th class="align-middle text-left" scope="col">Fotografia</th>
					<th class="align-middle text-center" scope="col">Borrar</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${habitaciones}" var="habitacion">
					<tr>
						<th scope="row" class="align-middle text-center">${habitacion.id}</th>
						<td class="align-middle text-center">${habitacion.idHotel}</td>
						<td class="align-middle text-left">${habitacion.nombre}</td>
						<td class="align-middle text-center">${habitacion.capacidad}</td>
						<td class="align-middle text-center">
                            <c:choose>
								<c:when test="${habitacion.aireAcondicionado}">
									Sí
								</c:when>
								<c:otherwise>
									No
								</c:otherwise>
							</c:choose></td>
						<td class="align-middle text-center"><c:choose>
								<c:when test="${habitacion.cajaFuerte}">
									Sí
								</c:when>
								<c:otherwise>
									No
								</c:otherwise>
							</c:choose></td>
						<td class="align-middle text-center"><c:choose>
								<c:when test="${habitacion.mascotas}">
									Sí
								</c:when>
								<c:otherwise>
									No
								</c:otherwise>
							</c:choose></td>
						<td class="align-middle text-center"><c:choose>
								<c:when test="${habitacion.minibar}">
									Sí
								</c:when>
								<c:otherwise>
									No
								</c:otherwise>
							</c:choose></td>
						<td class="align-middle text-center"><c:choose>
								<c:when test="${habitacion.vistas}">
									Sí
								</c:when>
								<c:otherwise>
									No
								</c:otherwise>
							</c:choose></td>
						<td class="align-middle text-center"><c:choose>
								<c:when test="${habitacion.wifi}">
									Sí
								</c:when>
								<c:otherwise>
									No
								</c:otherwise>
							</c:choose></td>
						<td class="align-middle text-center">${habitacion.precioNoche}€</td>
						<td width="20%" class="align-middle text-right"><img
							class="rounded" width="100%" src=".${habitacion.fotoHabitacion}"></td>
						<td class="align-middle text-center">
							<button type="button" class="btn btn-info" data-toggle="modal" data-target="#divBorrado"
							onclick="configurarBorrado('${habitacion.id}')">
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