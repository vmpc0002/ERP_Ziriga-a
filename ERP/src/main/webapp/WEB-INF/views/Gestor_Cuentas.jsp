<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<html>

<head>
<meta charset="UTF-8">
    <title>Gestor de Cuentas</title>
    <!-- librerias de bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <!-- Aï¿½adir jquery -->
  <link rel="stylesheet" href="resources/css/jquery-ui.min.css">
  <script type="text/javascript" src="resources/js/jquery-3.3.1.min.js"></script>
  <script type="text/javascript" src="resources/js/jquery-ui.js"></script>

  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" type="text/css" rel="stylesheet">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>GESTOR DE CUENTAS</title>

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="resources/css/style4.css">
	<script src='resources/js//moment.min.js'></script>
    <link rel='stylesheet' href='resources/css/fullcalendar.css' />
    <script src='resources/js/jquery.min.js'></script>
    <script src='resources/js/fullcalendar.js'></script>


    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>

    <!-- css para calendario -->
      <link href="resources/css/agenda.css" rel="stylesheet">
    <script src="resources/js/bootstrap.min.js"></script>

    <link href="resources/css/bootstrap-datepicker.css" rel="stylesheet">
    <script src="resources/js/bootstrap-datepicker.min.js"></script>
    <script src="resources/js/bootstrap-datepicker.es.min.js"></script>
    
    
    
    <script src='resources/js//moment.min.js'></script>
      <link rel='stylesheet' href='resources/css/fullcalendar.css' />
      <script src='resources/js/fullcalendar.min.js'></script>
      <script src='resources/locale/es.js'></script>

      <script src='resources/js/bootstrap-clockpicker.js'></script>
      <link rel='stylesheet' href='resources/css/bootstrap-clockpicker.css'>
    <style>
      .Disponible{
          background-color: #2E9AFE;
          color: #ffffff;
          border-radius: 20px;
      }
    </style>

    <!-- script de full calendar -->
    <script>
        $(document).ready(function(){

          $('#calendario').fullCalendar({
              header:{

                  left: 'today,prev,next',
                  center: 'title',
                  right: 'month,basicWeek,basicDay,agendaWeek'

              },
              
              dayClick: function(fecha,jsEvent,view){

                $("#evento").modal();
                $("#fechainicio").val(fecha.format());
              },

              eventClick:function(calEvent,jsEvent,view){
                $('#tituloEvento').html(calEvent.title);
                //Mostrar la informacion en los inputs cuando pinches en un evento
                $('#txtDescripcion').val(calEvent.descripcion);
                $('#txtID').val(calEvent.id);
                $('#txtTitulo').val(calEvent.title);
                $('#txtColor').val(calEvent.color);

                FechaHora=calEvent.start._i.split(" ");
                $('#fechainicio').val(FechaHora[0]);
                $('#txtHorainicio').val(FechaHora[1]);

                $("#evento").modal();
              },
              editable: true,
              //cambiar los eventos de un dia a otro
              eventDrop:function(calEvent){
                $('#txtID').val(calEvent.id);
                $('#txtTitulo').val(calEvent.title);
                $('#txtColor').val(calEvent.color);
                $('#txtDescripcion').val(calEvent.descripcion);

                var fechaHora=calEvent.start.format().split("T");
                $('#fechainicio').val(FechaHora[0]);
                $('#txtHorainicio').val(FechaHora[1]);


                //cuando el usuario mueve un evento se modifica
                RecolectarDatos();
                //Enviar informacion a nuestro servidor modificado
                //EnviarInformacion('modificar',NuevoEvento,true);
                //muestra el evento al calendario sin envio a nuestro servidor ni a la bbdd
                $('#calendario').fullCalendar('renderEvent',NuevoEvento);
                $("#evento").modal('toggle');

              }



          });
        });
    </script>
</head>

<body background="resources/img/textura_fondo.jpg">
			<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
				  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
				    <span class="navbar-toggler-icon"></span>
				  </button>
				  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
				    <a class="navbar-brand" href="#">PRODUCCIONES ZIRIGAÑA</a>
				    <ul class="navbar-nav mr-auto mt-2 mt-lg-0"></ul>
				    <form action="Logout" method="POST" >
				     <a><font color="FFFFFF">${usuario.email} </font> </a> 
				  	 <button class="btn btn-danger my-2 my-sm-0" type="submit">Cerrar Sesion</button>
				    </form>
				  </div>
			</nav>
    <div class="row">
    	<div class="col-md-3">
        <!-- Sidebar  -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <h3>Producciones Zirigaña</h3>
                <strong>PZ</strong>
            </div>

            <div class="container-fluid">

                <button type="button" id="sidebarCollapse" class="btn btn-info">
                    <i class="fas fa-align-left"></i>
                <!--    <span>Toggle Sidebar</span> -->
                </button>
                <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fas fa-align-justify"></i>
                </button>
            </div>

            <ul class="list-unstyled components">
                <li class="active">
                    <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                        <i class="fas fa-home"></i>
                       Inicio
                    </a>
                    <ul class="collapse list-unstyled" id="homeSubmenu">
                        <li>
                            <a href="#">Home 1</a>
                        </li>
                        <li>
                            <a href="#">Home 2</a>
                        </li>
                        <li>
                            <a href="#">Home 3</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                       <i class="far fa-plus-square"></i>
                      	  Añadir
                    </a>
                    <ul class="collapse list-unstyled" id="pageSubmenu">
                        <li>
                            <a href="#" data-toggle="modal" data-target="#NuevaCampaña">Campaña</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#NuevoGPV">GPV</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#NuevaTienda">Tienda</a>
                        </li>
                    </ul>
                </li>
            <li>
                    <a href="#editar" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                        <i class="fa fa-edit"></i>
                        Editar
                    </a>
                    <ul class="collapse list-unstyled" id="editar">
                        <li>
                            <a href="#">Campaña</a>
                        </li>
                        <li>
                            <a href="#">GPV</a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#ModificarTienda">Tienda</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#">
                        <i class="fas fa-question"></i>
                        FAQ
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fas fa-paper-plane"></i>
                        Contacto
                    </a>
                </li>
            </ul>


        </nav>
        </div>
        <div class="col-md-6">
        <div id='calendario'></div>
     </div>
      
      <div class="col-md-3">
      </div>
      </div>

               
      

    




      <!-- Modal -->
       <div class="modal fade" id="evento" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="tituloEvento">Añadir Evento</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <form action="Eventos" method="POST">
           		 <div class="modal-body">
                
                  <input type="hidden" id="txtID" name="txtID">
                  <div class="form-row">
                          <div class="form-group col-md-12">
                              <label>Titulo: </label>
                              <input type="text" id="txtTitulo" class="form-control" placeholder="Titulo del evento">
                          </div>
                  </div>
                  <div class="form-row">
                          <div class="form-group col-md-6">
                            <label>Fecha inicio: </label>
                              <input type="text" id="fechainicio" name="fechainicio"/>
                          </div>
                          <div class="form-group col-md-6">
                            <label>Fecha final: </label>
                                <input type="text" id="fechafinal" name="fechafinal" />
                          </div>
                    </div>
                    <div class="form-row">
                          <div class="form-group col-md-6">
                            <label>Hora de inicio: </label>
                              <div class="input-group clockpicker" data-autoclose="true">
                                <input type="text" id="txtHorainicio" value="00:00" class="form-control" />
                              </div>
                          </div>
                          <div class="form-group col-md-6">
                            <label>Hora final: </label>
                              <div class="input-group clockpicker" data-autoclose="true">
                                <input type="text" id="txtHorafinal" value="00:00" class="form-control" />
                              </div>
                          </div>
                    </div>

                    <div class="form-group">
                      <label>Descripcion:</label>
                        <textarea id="txtDescripcion" rows="3" class="form-control"></textarea>
                    </div>
                    <div class="form-group">
                      <label>Prioridad del evento (color):</label>
                        <input type="color" id="txtColor" value="#ff0000" class="form-control" style="height:36px;">
                    </div>


			
             </div>
            <div class="modal-footer">

              <button type="button" id="btnAgregar" class="btn btn-success">Guardar Cambios</button>
              <button type="button" id="btnModificar" class="btn btn-warning">Modificar</button>
              <button type="button" id="btnBorrar" class="btn btn-danger">Borrar</button>
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
             
            </div>
 		</form>
        </div>
      </div>
      </div>
     

                  <!-- CALENDARIO CON TAREAS DIARIAS -->


    
                                    <!-- Button trigger modal -->
<!-- Modal Tienda nueva -->
<div class="modal fade" id="NuevaTienda" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Tienda Nueva</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="TiendaNueva" method="POST">
            <div class="form-group">
              <label for="Codigoventa">Codigo Punto de Venta</label>
              <input type="text" class="form-control" id="Codigoventa" aria-describedby="emailHelp" >
            </div>
            <div class="form-group">
              <label for="Cadena">Cadena</label>
              <input type="text" class="form-control" id="Cadena" >
            </div>
            <div class="form-group">
              <label for="Direccion">Direccion</label>
              <input type="text" class="form-control" id="Direccion">
            </div>
            <div class="form-group">
              <label for="Localidad">Localidad</label>
              <input type="text" class="form-control" id="Localidad" >
            </div>
            <div class="form-group">
              <label for="Nombre">Nombre</label>
              <input type="text" class="form-control" id="Nombre" >
            </div>
            <div class="form-group">
              <label for="Observaciones">Observaciones</label>
              <input type="text" size="100" class="form-control" id="Observaciones" >
            </div>

        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary">Guardar Cambios</button>
      </div>
    </div>
  </div>
</div>
<!-- Modificar Tienda  -->
<div class="modal fade" id="ModificarTienda" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modificar Tienda</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="ModificarTienda" method="POST">
            <div class="form-group">
              <label for="CodigoventaModificada">Codigo Punto de Venta</label>
              <input type="text" class="form-control" id="CodigoventaModificada" aria-describedby="emailHelp" >
            </div>
            <div class="form-group">
              <label for="CadenaModificada">Cadena</label>
              <input type="text" class="form-control" id="CadenaModificada" >
            </div>
            <div class="form-group">
              <label for="DireccionModificada">Direccion</label>
              <input type="text" class="form-control" id="DireccionModificada">
            </div>
            <div class="form-group">
              <label for="LocalidadModificada">Localidad</label>
              <input type="text" class="form-control" id="LocalidadModificada" >
            </div>
            <div class="form-group">
              <label for="NombreModificada">Nombre</label>
              <input type="text" class="form-control" id="NombreModificada" >
            </div>
            <div class="form-group">
              <label for="ObservacionesModificada">Observaciones</label>
              <input type="text" size="100" class="form-control" id="ObservacionesModificada" >
            </div>

        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary">Guardar Cambios</button>
      </div>
    </div>
  </div>
</div>
<!-- Nuevo GPV  -->
<div class="modal fade" id="NuevoGPV" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Nuevo GPV</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="NuevoGPV" method="POST">
            <div class="form-group">
              <label for="GPV">Nombre GPV</label>
              <input type="NombreGPV" class="form-control" id="NombreGPV" aria-describedby="emailHelp" >
            </div>
            <div class="form-group">
              <label for="Mensaje">Mensaje</label>
              <input type="text" class="form-control" id="Mensaje">
            </div>
            <div class="form-group">
              <label for="Fecha">Fecha</label>
              <div class="input-group date fj-date">
                  <input type="text" class="form-control"><span class="input-group-addon"><i class="glyphicon glyphicon-th"></i></span>
              </div>
            </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary">Guardar Cambios</button>
      </div>
    </div>
  </div>
</div>
<!-- Editar Comunicaciones GPV  -->
<div class="modal fade" id="EditarComunicacionesGPV" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Editar Comunicaciones GPV</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="EditarGPV" method="POST">
            <div class="form-group">
              <label for="GPV">Nombre GPV</label>
              <input type="NombreGPV" class="form-control" id="NombreGPV" aria-describedby="emailHelp" >
            </div>
            <div class="form-group">
              <label for="MensajeEditado">Mensaje</label>
              <input type="text" class="form-control" id="Mensaje">
            </div>
            <label for="MensajeEditado">datepicker</label>
            <div class="input-group date" data-provide="datepicker">
                <input type="text" class="form-control" id="ejemplo">
                  <div class="input-group-addon">
                      <span class="glyphicon glyphicon-th"></span>
                  </div>
            </div>
            <div class="form-group">
              <label for="FechaEditado">Fecha</label>
              <input type="text" class="form-control" id="Fecha">
            </div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary">Guardar Cambios</button>
      </div>
      </form>
    </div>
  </div>
</div>
<!-- Supervision Fases  -->
<div class="modal fade" id="SupervisionFases" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Supervision de Fases</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="TiendaNueva" method="POST">
            <div class="form-group">
              <label for="Codigoventa">Codigo Punto de Venta</label>
              <input type="text" class="form-control" id="Codigoventa" aria-describedby="emailHelp" >
            </div>
            <div class="form-group">
              <label for="Cadena">Cadena</label>
              <input type="text" class="form-control" id="Cadena" >
            </div>
            <div class="form-group">
              <label for="Direccion">Direccion</label>
              <input type="text" class="form-control" id="Direccion">
            </div>
            <div class="form-group">
              <label for="Localidad">Localidad</label>
              <input type="text" class="form-control" id="Localidad" >
            </div>
            <div class="form-group">
              <label for="Nombre">Nombre</label>
              <input type="text" class="form-control" id="Nombre" >
            </div>
            <div class="form-group">
              <label for="Observaciones">Observaciones</label>
              <input type="text" size="100" class="form-control" id="Observaciones" >
            </div>

        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary">Guardar Cambios</button>
      </div>
    </div>
  </div>
</div>

<!--  Aï¿½adir camapaï¿½a modal -->

											<div class="modal fade" id="NuevaCampaña" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
											  <div class="modal-dialog" role="document">
											    <div class="modal-content">
											      <div class="modal-header">
											        <h5 class="modal-title" id="exampleModalLabel">Añadir Campaña</h5>
											        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
											          <span aria-hidden="true">&times;</span>
											        </button>
											      </div>
											      <div class="modal-body">
											        <form action="Campaña_Nueva" method="POST">
													           <div class="form-group">
															              <label for="Cliente">Codigo Campaña</label>
															              <input type="text" class="form-control" name="id_camp" aria-describedby="emailHelp" >
															            </div>

															             <div class="md-form mb-5">
															                    <h5> Cliente<br /> </h5>
																				 <select name="cliente">
																					<c:forEach items="${cliente}" var="client" varStatus="estado">
																					     <option type="hidden" value="${client.id_cliente}"> <c:out value="${client.nombre}"/></option>
																					</c:forEach>
																				 </select>
															            </div>
															            <div class="form-group">
															              <label for="Marca">Marca</label>
															              <input type="text" class="form-control" name="Marca" >
															            </div>
															            <div class="form-group">
															              <label for="Nombre_Campaï¿½a">Nombre Campaña</label>
															              <input type="text" class="form-control" name="Nombre_camp">
															            </div>
															            <div class="form-group">
															              <label for="cantidad_tiendas">Cantidad de tiendas</label>
															              <input type="text" class="form-control" name="cantidad_tiendas" >
															            </div>
															            <div class="form-group">
															              <label for="localizacion_geo">Localizacion geografica</label>
															              <input type="text" class="form-control" name="localizacion_geo" >
															            </div>
															            <div class="form-group">
															              <label for="briefing">Adjuntar briefing</label>
															              <input type="text" size="100" class="form-control" name="briefing" >
															              <input type="file" class="form-control-file" id="exampleFormControlFile1">
															            </div>
															            <div class="form-group">
															              <label for="estado">Estado</label>
															              <input type="text" size="100" class="form-control" name="estado" >
															            </div>
															             <label for="MensajeEditado">Fecha Inicio</label>
																	            <div class="input-group date"  >
																	                <input type="text" class="form-control" data-provide="datepicker" name="Fecha_Inicio" id="sandbox-container">
											
																	            </div>
															 			    <label for="MensajeEditado">Fecha Fin</label>
																		            <div class="input-group date"  >
																		              <input type="text" class="form-control" data-provide="datepicker" name="Fecha_Fin" id="sandbox-container">
																		                 
																		            </div>
																		           
															             <div class="form-group">
															              <label for="interlocutor">Interlocutor</label>
															              <input type="text" size="100" class="form-control" name="interlocutor" >
															            </div>

															             <div class="form-group">
															              <label for="comentarios">Comentarios</label>
															              <input type="text" size="100" class="form-control" name="comentarios" >
															            </div>
															             <div class="modal-footer">
															        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
															        <button type="submit" class="btn btn-primary">Guardar Cambios</button>
													      	</div>
											        	</form>
												      </div>

												    </div>
												  </div>
											</div>




                                  </tbody>
                              </table>
                            </div>
                          </div>
                         
                      </div>
                  </div>
                    </div>
                  </div> <!-- DIV row para el contenido -->
                  </div>

         
                 

                  <script type="text/javascript">
                  $(document).ready(function () {
                    $('#sidebarCollapse').on('click', function () {
                        $('#sidebar').toggleClass('active');
                    });
                  });
                  </script>
          
             <script type="text/javascript">
              $('#sandbox-container').datepicker({
				    format: "yyyy-mm-dd",
				    language: "es"
				});
              </script>
              <script type="text/javascript">
              function CompararFechas(){
	
				var fecha_aux = document.getElementById("Fecha_Inicio").value.split("/");
			 	var Fecha1 = new Date(parseInt(fecha_aux[2]),parseInt(fecha_aux[1]-1),parseInt(fecha_aux[0]));
			
			 	var fecha_aux2 = document.getElementById("Fecha_Fin").value.split("/");
			 	var Fecha2 = new Date(parseInt(fecha_aux2[2]),parseInt(fecha_aux2[1]-1),parseInt(fecha_aux2[0]));
			 	
			 	Hoy = new Date();//Fecha actual del sistema
				
			 	//comprobamos fecha inicio
			 	if (Fecha1 < Hoy){
			 	    alert ("La fecha introducida es anterior a Hoy");
			 	}
			 	
			 	 //comprobamos fecha fin
			 	    if (Fecha2 < Hoy){
				 	    alert ("La fecha introducida es anterior a Hoy");
				 	}
				 	
			 	  var año_in = Fecha1.getFullYear();
			 	  var mes_in = Fecha1.getMonth();
			 	  var dia_in = Fecha1.getDate();
			 	  var año_fin = Fecha2.getFullYear();
			 	  var mes_fin = Fecha2.getMonth();
			 	  var dia_fin = Fecha2.getDate();
			 	  //Ahora nos disponemos a comparar fecha inicio y fecha fin
			 	  
			 	  if(año_in == año_fin && mes_in == mes_fin && dia_in >= dia_fin){
			 		  alert("ERROR. La fecha de finalizacion es anterior a la fecha de inicio.");
			 	  }
			 	  else{
			 		  if(año_in > año_fin){
			 			 alert("ERROR. La fecha de finalizacion es anterior a la fecha de inicio.");
			 		  }
			 		  else{
			 			  if(año_in == año_fin && mes_in > mes_fin){
			 				 alert("ERROR. La fecha de finalizacion es anterior a la fecha de inicio.")
			 			  }
			 		  }
			 	  }
			 	  


			 
              
              }
	</script>
	<script>
		var NuevoEvento;
        $('#btnAgregar').click(function(){
            RecolectarDatos();
            //Enviar informacion a nuestro servidor
            //EnviarInformacion('agregar',NuevoEvento);
            //muestra el evento al calendario sin envio a nuestro servidor ni a la bbdd
            $('#calendario').fullCalendar('renderEvent',NuevoEvento);
            $("#evento").modal('toggle');

        });
        $('#btnBorrar').click(function(){
          RecolectarDatos();
          if(confirm('¿Estas seguro de que quieres borrar?')){
            /*  $('#calendario').fullCalendar('removeEvents',NuevoEvento);
              $("#evento").modal('toggle');*/
          //elimina los datos de la bbdd
          EnviarInformacion('eliminar',NuevoEvento);
        }else{
          RecolectarDatos();
        }

        });
        $('#btnModificar').click(function(){
          RecolectarDatos();
          EnviarInformacion('modificar',NuevoEvento);
        });

        function RecolectarDatos(){
          NuevoEvento={
           id: $('#txtID').val(),
           start: $('#fechainicio').val()+" "+$('#txtHorainicio').val(),
           //Si luego queremos poner una fecha final a un evento
           end: $('#fechafinal').val()+" "+$('#txtHorafinal').val(),
           title: $('#txtTitulo').val(),
           descripcion: $('#txtDescripcion').val(),
           color: $('#txtColor').val()


         };

        }
        function EnviarInformacion(accion,objEvento,modal){
           $.ajax({

                type: 'POST',
                url: 'urldenuestroproyecto?accion='+accion,
                data: objEvento,
                success: function(msg){
                if(msg){
                    $('#calendario').fullCalendar('refetchEvents');
                    if(!modal){
                      $("#evento").modal('toggle');
                    }
                }
              },
              error:function(){
                 alert("Hay un error");
              }

           })
        }

        $('.clockpicker').clockpicker();

      </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

    </body>

</html>
