<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Collapsible sidebar using Bootstrap 4</title>

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
</head>

<body>

    <div class="wrapper">
        <!-- Sidebar  -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <h3>Bootstrap Sidebar</h3>
                <strong>BS</strong>
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
                        About
                    </a>
                    <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                        <i class="fas fa-copy"></i>
                        Pages
                    </a>
                    <ul class="collapse list-unstyled" id="pageSubmenu">
                        <li>
                            <a href="#">Page 1</a>
                        </li>
                        <li>
                            <a href="#">Page 2</a>
                        </li>
                        <li>
                            <a href="#">Page 3</a>
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
                        Contact
                    </a>
                </li>
            </ul>

        </nav>

        <!-- Page Content  -->
      <div class="row; ml-1: 1rem">
        <div class="container">

            <!-- -NUEVO TRABAJADOR--------------------->



              <!-- CALENDARIO CON TAREAS DIARIAS -->


<div class="row">
   <div class="col-lg-12 col-md-12">

              <h2>Agenda</h2>
                  <p class="lead">
                      This agenda viewer will let you see multiple events cleanly!
                  </p>

                  <hr />

                  <div class="agenda">
                      <div class="table-responsive">
                          <table class="table table-condensed table-bordered">
                              <thead>
                                  <tr>
                                      <th>Date</th>
                                      <th>Time</th>
                                      <th>Event</th>
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
                                              Ir a comprar al mercadona. Hacer la compra de la semana. Comprar tambien comida para el perro.

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
                                  </tr>
                              </tbody>
                          </table>
                        </div>
                      </div>

                  </div>
              </div>

              <div class="card">
                <h5 class="card-header">Subir archivo</h5>
                <div class="card-body">
                  <h5 class="card-title">Tipo excel</h5>
                  <p class="card-text">introduce archivo en extension .xsdl</p>
                  <form>
                    <div class="form-group">
                      <input type="file" class="form-control-file" id="exampleFormControlFile1">
                    </div>
                  </form>
                </div>
              </div>
              <div class="modal fade" id="modalContactForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h4 class="modal-title w-100 font-weight-bold">Nuevo trabajador</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="Nuevo_trabajador" method="POST">
                    <div class="modal-body mx-3">
                        <div class="md-form mb-5">
                            <i class="fa fa-user prefix grey-text"></i>
                            <label data-error="wrong" data-success="right" for="form34"> Nombre y Apellidos</label>
                            <input type="text" id="form34" name="nombre_trabajador" class="form-control validate" required>

                        </div>

                        <div class="md-form mb-5">
                            <i class="fa fa-envelope prefix grey-text"></i>
                            <label data-error="wrong" data-success="right" for="form29">Email</label>
                            <input type="email" id="form29" name="email"class="form-control validate" required>

                        </div>
						
						     <div class="md-form mb-5">
                            <i class="fa fa-thumbtack"></i>
                            <label data-error="wrong" data-success="right" for="form29">Contraseña</label>
                            <input type="text" id="form" name="pass"class="form-control validate" required>

                        </div>
                        <div class="md-form mb-5">
                        <h2> Tipo trabajador:<br /> </h2>
								  <select name="tipo_trabajadores">    
								       <option name="montador" type="hidden" value="1" selected="selected">Montador</option>
								       <option name="gestor" type="hidden" value="2">Gestor</option>
								       <option name="diseñador" type="hidden" value="3">Diseñador</option>
								   </select>

                        </div>

                        
                    </div>
                    <div class="modal-footer d-flex justify-content-center">
                        <button class="btn btn-unique">Enviar <i class="fa fa-paper-plane-o ml-1"></i></button>
                    </div>
                   </form>
                </div>
            </div>
        </div>
        <!-- Modal para editar trabajador -->
        <div class="modal fade" id="modalEditarForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" id="addBookDialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h4 class="modal-title w-100 font-weight-bold">Editar trabajador</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="Editar_trabajador" method="POST">
                    <div class="modal-body mx-3">
                        <div class="md-form mb-5">
                            <i class="fa fa-user prefix grey-text"></i>
                            <label data-error="wrong" data-success="right" for="form34"> Nombre y Apellidos</label>
                            <input type="text" id="form34" name="nombre_trabajador" class="form-control validate" required>

                        </div>

                        <div class="md-form mb-5">
                            <i class="fa fa-envelope prefix grey-text"></i>
                            <label data-error="wrong" data-success="right" for="form29">Email</label>
                         <!--     <p class="form-control-static">${trab.email}</p>  -->
							<input type="text" name="email" id="bookId" value=""/>
                        </div>
						
						     <div class="md-form mb-5">
                            <i class="fa fa-thumbtack"></i>
                            <label data-error="wrong" data-success="right" for="form29">Contraseña</label>
                            <input type="text" id="form" name="pass"class="form-control validate" required>

                        </div>
                        <div class="md-form mb-5">
                        <h2> Tipo trabajador:<br /> </h2>
								  <select name="tipo_trabajadores">    
								       <option name="montador" type="hidden" value="1" selected="selected">Montador</option>
								       <option name="gestor" type="hidden" value="2">Gestor</option>
								       <option name="diseñador" type="hidden" value="3">Diseñador</option>
								   </select>

                        </div>

                        
                    </div>
                    <div class="modal-footer d-flex justify-content-center">
                        <button class="btn btn-unique">Enviar <i class="fa fa-paper-plane-o ml-1"></i></button>
                    </div>
                   </form>
                </div>
            </div>
        </div>
        <div class="card">
          <h5 class="card-header">Nuevo Trabajador</h5>
          <div class="card-body">
            
              <div class="form-group">
                <button type="submit" class="btn btn-success" data-toggle="modal" data-target="#modalContactForm"  onclick="showCreateThanksYouForm(${trab.email})">Nuevo Trabajador</button>
              </div>
            
             <h4 >Lista de trabajadores</h4>            
                    <!-- tabla con la base de datos de trabajadores-->
                     <table border="1" cellpadding="5" cellspacing="5">
                     <tr>
                       <th>Email</th>
                       <th>Pass</th>
                       <th>Nombre</th>
                       <th>Tipo</th>
                      </tr>
                      <tr>
                       <c:forEach items="${trabajador}" var="trab" varStatus="estado">
                       <c:if test="${trab.tipo!=4 }">
	                       <td> <c:out value="${trab.email}"/> </td>
	                       <td> <c:out value="${trab.pass}"/> </td>
	                       <td> <c:out value="${trab.nombre}"/> </td>
	                       <td> <c:out value="${trab.tipo}"/> </td>
	                       <td>
	                     
	                       <form action="borrar_trabajador" method="POST">
		                       <input type="hidden" name="email" value="${trab.email}"/>
		                       <button type="submit" class="btn btn-danger">Borrar Trabajador</button>
		                    </form>
	                       </td>
	                       <td>
	                           <input type="hidden" name="email" value="${trab.email}"/>
		                       <button type="submit" class="btn btn-warning" data-toggle="modal" data-target="#modalEditarForm"  onclick="showCreateThanksYouForm(${trab.email})">Editar Trabajador</button>
		                    
	                       </td>
	                        </c:if> 
	                       
                       </c:forEach>
                       </tr>
                       </table>
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
    	$(document).on("click", ".open-AddBookDialog", function(){
    		var myBookId= $(this.)data('email');
    		$(".modal-body #bookId").val(myBookId);
    	})
    </script>
  <script type="text/javascript">  
    showCreateThanksYouForm (valor) {
    var valor = valor;
    $('#modal-create-thanks-you').modal('show')
	}
</script>
</body>

</html>
