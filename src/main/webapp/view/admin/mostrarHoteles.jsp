<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ES">
<head>
<c:import url="../head.jsp" />

<script>
		var idHotel;
		function configurarBorrado(id){
			idHotel=id;
		}
		function borrar(){
			window.location.href = "borrarHotel?id=" + idHotel;
		}
</script>


<title>Zona Administracion - Mostrar Hoteles</title>
</head>
<body>

	<c:import url="navbar.jsp" />

	<div class="container-md w-25">
		<!-- Titulo -->
		<h2 class="paddingTop20">
			Hoteles <span class="badge badge-secondary bg-info text-white">LISTADO</span>
		</h2>

		<!-- Forumulario -->
		<table class="table table-striped">
				<thead>
					<tr tr class="table-info">
						<th class="align-middle text-center" scope="col">Id</th>
						<th class="align-middle text-left" scope="col">Nombre</th>
						<th class="align-middle text-left" scope="col">Fotografia</th>
						<th class="align-middle text-center" scope="col">Borrar</th>
					</tr>
				</thead>
				
				<tbody>
					<c:forEach items="${hoteles}" var="hotel">
					<tr>
	      				<th scope="row" class="align-middle text-center">${hotel.id}</th>
						<td class="align-middle text-left">${hotel.nombre}</td>
						<td width="20%" class="align-middle text-center"><img
							class="rounded" width="100%" src=".${hotel.fotoHotel}"></td>
						<td class="align-middle text-center">
							<button type="button" class="btn btn-info" data-toggle="modal" data-target="#divBorrado"
							onclick="configurarBorrado('${hotel.id}')">
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