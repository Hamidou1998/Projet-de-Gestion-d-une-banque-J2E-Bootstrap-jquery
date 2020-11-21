<!DOCTYPE html>
<html lang="en">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="com.banque.Dao.*,com.banque.entities.*,com.banque.Util.*,java.util.*"
	isErrorPage="false"%>

  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>BIENVENUE DANS LA BANQUE AMEN</title>

    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">

  </head>

  <body id="page-top">


		<%
			ClientsDao clientdao = new ClientsDao();

			List<Client> listeclient = clientdao.listerTous();
		%>
    <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

      <a class="navbar-brand mr-1" href="Principale.html">BANQUE MONEY!!</a>

      <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
        <i class="fas fa-bars"></i>
      </button>

      <!-- Navbar Search -->
      <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
        <div class="input-group">
          <input type="text" class="form-control" placeholder="Search for..." aria-label="Recherche" aria-describedby="basic-addon2">
          <div class="input-group-append">
            <button class="btn btn-primary" type="button">
              <i class="fas fa-search"></i>
            </button>
          </div>
        </div>
      </form>

      <!-- Navbar -->
      <ul class="navbar-nav ml-auto ml-md-0">
        
        <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-user-circle fa-fw"></i>
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="index.html" data-toggle="modal" data-target="#logoutModal">Logout</a>
          </div>
        </li>
      </ul>

    </nav>

    <div id="wrapper">

      <!-- Sidebar -->
      <ul class="sidebar navbar-nav">
        <li class="nav-item active">
          <a class="nav-link" href="index.html">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Tableau de Bord</span>
          </a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-folder"></i>
    
            <span>Comptes</span></a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
            <a class="dropdown-item" href="ajouterCompte.jsp">Ajouter</a>
            <a class="dropdown-item" href="listercompte.jsp">Lister</a>
             
          </div>

        </li>

         <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-folder"></i>
    
            <span>Operation</span></a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
            <a class="dropdown-item" href="listeoperation.html">Lister</a>
            
          </div>


        </li>
         <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-folder"></i>
    
            <span>Clients</span></a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
            <a class="dropdown-item" href="ajouterclient.html">Ajouter</a>
            <a class="dropdown-item" href="listeclients.jsp">Lister</a>
           
          </div>

        </li>
      </ul>

           <div id="content-wrapper">
      
      
					<div id="page-wrapper" align="center">
						<div class="row">
							<div class="col-lg-12">
								<h1 class="page-header">MODIFIER UN COMPTE</h1>
							</div>
							<!-- /.col-lg-12 -->
						</div>
						<!-- /.row -->
						<div class="row">
							<div class="col-lg-12">
								<div class="panel panel-default" align="center">

									<div class="panel-body">
										<div class="row">
											<div class="col-lg-6">
												<form role="form">
													<div class="form-group">
														<label> CODE DE COMPTE :</label> <input
															class="form-control" placeholder="Donner le code :"
															id="code">
													</div>
													<div class="form-group">
														<label>Date de creation:</label> <input
															class="form-control" id="date">
													</div>
													<div class="form-group">
														<label>Solde:</label> <input class="form-control"
															placeholder="Donner le solde:" id="solde"">
													</div>
													<div id="client_nom">

														<label>CLIENTS:</label> <select class="form-control"
															id="nom_clients">

															<%
																if (!listeclient.isEmpty()) {

																	for (Client c : listeclient) {
															%>
															<Option value="<%=c.getCode()%>"><%=c.getNom()%></Option>

															<%
																}
																} else {
															%>

															<Option value="null">Auccun Compte existant!></Option>





															<div class="alert alert-danger text-center">
																<h2>
																	<strong>Attention!</strong></strong> Aucun Compte n'est
																	disponible actuellement.
																</h2>
															</div>

															<%
															}
														%>
														</select><br>

													</div>
													<div><label>Type de compte</label><br>
													<label class="radio-inline"> <input type="radio"
														name="radio" id="courant" value="courant"
														checked="">Courant
													</label> <label class="radio-inline"> <input type="radio"
														name="radio" id="epargne" value="Epargne" selected="true">Epargne
													</label>
											</div>
											<div  class="form-group">
															<button type="Button" class="btn btn-default" id="Ajouter_compte">Valider</button>
													        <button type="Reset" class="btn btn-default">Annuler</button>
														</div>
												
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>


                              <!--   </div>
                               </div>
                              </div> 
                           </div>  
                        </div>
                    </div> -->
                    
        <!-- /.container-fluid -->
      
      </div>
      

        <div class="container-fluid" id ="tableau">
	 
          <jsp:include page="Liste/ListeCompte.jsp"></jsp:include>

        </div>
    
    <!-- /#wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="index.html">Logout</a>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript-->
     <script src="js/jquery-3.3.1.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Page level plugin JavaScript-->
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/datatables/jquery.dataTables.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>

    <!-- Demo scripts for this page-->
    <script src="js/demo/datatables-demo.js"></script>
    <script src="js/demo/chart-area-demo.js"></script>
    
    <script src="js/sweetalert.min.js"></script>
    <script src="js/Custom.js"></script>

  </body>

</html>
