<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<html>

<head>
	  <!-- Añadir jquery -->
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
    <!-- Bootstrap core CSS -->
  <!--  <link href="css/bootstrap.min.css" rel="stylesheet"> -->
    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>

    <!-- css para calendario -->
      <link href="resources/css/agenda.css" rel="stylesheet">
    <script src="resources/js/bootstrap.min.js"></script>
    
    <!--  CSS PARA DATEPICKER  -->
    
    <script src="resources/css/bootstrap-datepicker.css" rel="stylesheet"></script>
    <script src="resources/js/bootstrap-datepicker.min.js"></script>
    <script src="resources/js/bootstrap-datepicker.es.min.js"></script>
    
</head>

<body>

    <div class="wrapper">
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
                        Home
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
                    <a href="#">
                        <i class="fas fa-briefcase"></i>
                        Sobre Nosotros
                    </a>
                    <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                        <i class="fas fa-copy"></i>
                        Paginas
                    </a>
                    <ul class="collapse list-unstyled" id="pageSubmenu">
                        <li>
                            <a href="#">Tipologia Montaje</a>
                        </li>
                        <li>
                            <a href="#">Tipologia Cliente</a>
                        </li>
                        <li>
                            <a href="#">Horario</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#">
                        <i class="fas fa-image"></i>
                        Portfolio
                    </a>
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

                <!-- Page Content  -->
              <div class="row; ml-1: 1rem">
                <div class="container">

                  <!-- CALENDARIO CON TAREAS DIARIAS -->


    <div class="row">
       <div class="col-lg-12 col-md-12">

                  <h2>Agenda</h2>
                      <hr />

                      <div class="agenda">
                          <div class="table-responsive">
                              <table class="table table-condensed table-bordered">
                                  <thead>
                                      <tr>
                                          <th>Fecha</th>
                                          <th>Hora</th>
                                          <th>Evento</th>
                                          <th>Estado</th>
                                      </tr>
                                  </thead>
                                  <tbody>
                                      <!-- Single event in a single day -->
                                      <tr>
                                          <td class="agenda-date" class="active" rowspan="1">
                                              <div class="dayofmonth">26</div>
                                              <div class="dayofweek">Saturday</div>
                                              <div class="shortdate text-muted">July, 2014</div>
                                          </td>
                                          <td class="agenda-time">
                                              5:30 AM
                                          </td>
                                          <td class="agenda-events">
                                              <div class="agenda-event">
                                                  <i class="glyphicon glyphicon-repeat text-muted" title="Repeating event"></i>Â 
                                                  kevin manco.

                                              </div>
                                          </td>
                                          <td class="agenda-events">


                                                  <li class="list-group-item list-group-item-success">Listos para desmontar</li>


                                          </td>


                                            <div class="modal fade" id="miModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                              	<div class="modal-dialog" role="document">
                                              		<div class="modal-content">
                                              			<div class="modal-header">
                                              				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                              					<span aria-hidden="true">&times;</span>
                                              				</button>
                                              				<h4 class="modal-title" id="myModalLabel">Esto es un modal</h4>
                                              			</div>
           <div class="modal-body">
                  <div class="container">
						  <h3 class=" text-center">Messaging</h3>
						  <div class="messaging">
						        <div class="inbox_msg">
						          <div class="inbox_people">
						            <div class="headind_srch">
						              <div class="recent_heading">
						
						                <h4>Recent</h4>
						              </div>
						              <div class="srch_bar">
						                <div class="stylish-input-group">
						                  <input type="text" class="search-bar"  placeholder="Search" >
						                  <span class="input-group-addon">
						                  <button type="button"> <i class="fa fa-search" aria-hidden="true"></i> </button>
						                  </span> </div>
						              </div>
						            </div>
						            <div class="inbox_chat">
						              <div class="chat_list active_chat">
						                <div class="chat_people">
						                  <div class="chat_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
						                  <div class="chat_ib">
						                    <h5>Sunil Rajput <span class="chat_date">Dec 25</span></h5>
						                    <p>Test, which is a new approach to have all solutions
						                      astrology under one roof.</p>
						                  </div>
						                </div>
						              </div>
						              <div class="chat_list">
						                <div class="chat_people">
						                  <div class="chat_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
						                  <div class="chat_ib">
						                    <h5>Sunil Rajput <span class="chat_date">Dec 25</span></h5>
						                    <p>Test, which is a new approach to have all solutions
						                      astrology under one roof.</p>
						                  </div>
						                </div>
						              </div>
						              <div class="chat_list">
						                <div class="chat_people">
						                  <div class="chat_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
						                  <div class="chat_ib">
						                    <h5>Sunil Rajput <span class="chat_date">Dec 25</span></h5>
						                    <p>Test, which is a new approach to have all solutions
						                      astrology under one roof.</p>
						                  </div>
						                </div>
						              </div>
						              <div class="chat_list">
						                <div class="chat_people">
						                  <div class="chat_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
						                  <div class="chat_ib">
						                    <h5>Sunil Rajput <span class="chat_date">Dec 25</span></h5>
						                    <p>Test, which is a new approach to have all solutions
						                      astrology under one roof.</p>
						                  </div>
						                </div>
						              </div>
						              <div class="chat_list">
						                <div class="chat_people">
						                  <div class="chat_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
						                  <div class="chat_ib">
						                    <h5>Sunil Rajput <span class="chat_date">Dec 25</span></h5>
						                    <p>Test, which is a new approach to have all solutions
						                      astrology under one roof.</p>
						                  </div>
						                </div>
						              </div>
						              <div class="chat_list">
						                <div class="chat_people">
						                  <div class="chat_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
						                  <div class="chat_ib">
						                    <h5>Sunil Rajput <span class="chat_date">Dec 25</span></h5>
						                    <p>Test, which is a new approach to have all solutions
						                      astrology under one roof.</p>
						                  </div>
						                </div>
						              </div>
						              <div class="chat_list">
						                <div class="chat_people">
						                  <div class="chat_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
						                  <div class="chat_ib">
						                    <h5>Sunil Rajput <span class="chat_date">Dec 25</span></h5>
						                    <p>Test, which is a new approach to have all solutions
						                      astrology under one roof.</p>
						                  </div>
						                </div>
						              </div>
						            </div>
						          </div>
						          <div class="mesgs">
						            <div class="msg_history">
						              <div class="incoming_msg">
						                <div class="incoming_msg_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
						                <div class="received_msg">
						                  <div class="received_withd_msg">
						                    <p>Test which is a new approach to have all
						                      solutions</p>
						                    <span class="time_date"> 11:01 AM    |    June 9</span></div>
						                </div>
						              </div>
						              <div class="outgoing_msg">
						                <div class="sent_msg">
						                  <p>Test which is a new approach to have all
						                    solutions</p>
						                  <span class="time_date"> 11:01 AM    |    June 9</span> </div>
						              </div>
						              <div class="incoming_msg">
						                <div class="incoming_msg_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
						                <div class="received_msg">
						                  <div class="received_withd_msg">
						                    <p>Test, which is a new approach to have</p>
						                    <span class="time_date"> 11:01 AM    |    Yesterday</span></div>
						                </div>
						              </div>
						              <div class="outgoing_msg">
						                <div class="sent_msg">
						                  <p>Apollo University, Delhi, India Test</p>
						                  <span class="time_date"> 11:01 AM    |    Today</span> </div>
						              </div>
						              <div class="incoming_msg">
						                <div class="incoming_msg_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
						                <div class="received_msg">
						                  <div class="received_withd_msg">
						                    <p>We work directly with our designers and suppliers,
						                      and sell direct to you, which means quality, exclusive
						                      products, at a price anyone can afford.</p>
						                    <span class="time_date"> 11:01 AM    |    Today</span></div>
						                </div>
						              </div>
						            </div>
						            <div class="type_msg">
						              <div class="input_msg_write">
						                <input type="text" class="write_msg" placeholder="Type a message" />
						                <button class="msg_send_btn" type="button"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></button>
						              </div>
						            </div>
						          </div>
						        </div>
						
						
						        <p class="text-center top_spac"> Design by <a target="_blank" href="#">Sunil Rajput</a></p>
						
						      		</div>
						      </div>
                                              			</div>
                                              		</div>
                                              	</div>
                                              </div>
                                          </td>
                                      </tr>

                                      <!-- Multiple events in a single day (note the rowspan) -->
                                      <tr>
                                          <td class="agenda-date" class="active" rowspan="3">
                                              <div class="dayofmonth">24</div>
                                              <div class="dayofweek">Thursday</div>
                                              <div class="shortdate text-muted">July, 2014</div>
                                          </td>
                                          <td class="agenda-time">
                                              8:00 - 9:00 AM
                                          </td>
                                          <td class="agenda-events">
                                              <div class="agenda-event">
                                                  Doctor's Appointment
                                              </div>
                                          </td>
                                          <td class="agenda-events">
                                            <li class="list-group-item list-group-item-info">Listos para montar</li>
                                          </td>

                                      </tr>
                                      <tr>
                                          <td class="agenda-time">
                                              10:15 AM - 12:00 PM
                                          </td>
                                          <td class="agenda-events">
                                              <div class="agenda-event">
                                                  Meeting with executives
                                              </div>
                                          </td>
                                          <td class="agenda-events">
                                            <li class="list-group-item list-group-item-warning">PTES. PLANIFICACION</li>
                                          </td>

                                      </tr>
                                      <tr>
                                          <td class="agenda-time">
                                              7:00 - 9:00 PM
                                          </td>
                                          <td class="agenda-events">
                                              <div class="agenda-event">
                                                  Aria's dance recital
                                              </div>
                                          </td>
                                          <td class="agenda-events">
                                            <li class="list-group-item list-group-item-danger">En curso</li>
                                          </td>

                                      </tr>
                                      <tr>
                                        <td class="agenda-time">

                                        </td>
                                        <td class="agenda-time">
                                            10:15 AM - 12:00 PM
                                        </td>
                                        <td class="agenda-events">
                                            <div class="agenda-event">
                                                Aria's dance recital
                                            </div>
                                        </td>
                                        <td class="agenda-events">
                                          <li class="list-group-item list-group-item-info">SIN ARTES FINALES</li>
                                        </td>

                                    </tr>
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
						        <form action="TiendaNueva">
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
					        <form action="ModificarTienda">
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
					        <form action="NuevoGPV">
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
					              <input type="text" class="form-control" id="Fecha">
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
								        <form action="EditarGPV">
								            <div class="form-group">
								              <label for="GPV">Nombre GPV</label>
								              <input type="NombreGPV" class="form-control" id="NombreGPV" aria-describedby="emailHelp" >
								            </div>
								            <div class="form-group">
								              <label for="MensajeEditado">Mensaje</label>
								              <input type="text" class="form-control" id="Mensaje">
								            </div>
								            <div class="form-group">
								              <label for="FechaEditado">Fecha</label>
								              <input type="text" class="form-control" id="Fecha">
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
								        <form action="TiendaNueva">
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

<!--  Añadir camapaña modal -->

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
											        <form action="Campaña_Nueva">
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
															              <label for="Nombre_Campaña">Nombre Campaña</label>
															              <input type="text" class="form-control" name="Nombre_camp">
															            </div>
															            <div class="form-group">
															              <label for="cantidad_tiendas">Cantidad de tiendas</label>
															              <input type="text" class="form-control" name="cantidad_tiendas" >
															            </div>
															            <div class="form-group">
															              <label for="localizacion_geo">Localización geográfica</label>
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
															             <label for="MensajeEditado">datepicker</label>
																	            <div class="input-group date" data-provide="datepicker">
																	                <input type="text" class="form-control" id="ejemplo" data-date-format="yyyy-mm-dd">
																	                  <div class="input-group-addon">
																	                      <span class="glyphicon glyphicon-th"></span>
																	                  </div>
																	            </div>
															 			    <label for="MensajeEditado">Fecha Fin</label>
																		            <div class="input-group date" data-provide="datepicker">
																		                <input type="text" class="form-control" id="ejemplo" data-date-format="dd-mm-yyyy">
																		                  <div class="input-group-addon">
																		                      <span class="glyphicon glyphicon-th"></span>
																		                  </div>
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
                          <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#NuevaTienda">
                            Añadir tienda
                          </button>
                          <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#ModificarTienda">
                            Modificar tienda
                          </button>
                          <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#NuevoGPV">
                            Añadir GPV
                          </button>
                          <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#EditarComunicacionesGPV">
                            Editar Comunicaciones GPV
                          </button>
                          <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#SupervisionFases">
                            Supervision de fases
                          </button>
                             <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#NuevaCampaña">
                           Añadir Campaña
                          </button>
                      </div>
                  </div>
                    </div>
                  </div> <!-- DIV row para el contenido -->
                  </div>

          <!-- jQuery CDN - Slim version (=without AJAX) -->
                  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
                  <!-- Popper.JS -->
                  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
                  <!-- Bootstrap JS -->
                  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

                  <script type="text/javascript">
                  $(document).ready(function () {
                    $('#sidebarCollapse').on('click', function () {
                        $('#sidebar').toggleClass('active');
                    });
                  });
                  </script>
                  
             
              <script type="text/javascript">
              $.datepicker.regional['es'] = {
            		  closeText: 'Cerrar',
            		  prevText: '< Ant',
            		  nextText: 'Sig >',
            		  currentText: 'Hoy',
            		  monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
            		  monthNamesShort: ['Ene','Feb','Mar','Abr', 'May','Jun','Jul','Ago','Sep', 'Oct','Nov','Dic'],
            		  dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
            		  dayNamesShort: ['Dom','Lun','Mar','Mié','Juv','Vie','Sáb'],
            		  dayNamesMin: ['Do','Lu','Ma','Mi','Ju','Vi','Sá'],
            		  weekHeader: 'Sm',
            		  dateFormat: 'dd/mm/yy'
              };
              $(function () {
                    $('#ejemplo').datepicker();
                    	});
                     
              </script>
    </body>

</html>
