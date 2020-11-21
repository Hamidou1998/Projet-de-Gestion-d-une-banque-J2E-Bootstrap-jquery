<!DOCTYPE html>
<html lang="en">

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
            <a class="dropdown-item" href="index.jsp" data-toggle="modal" data-target="#logoutModal">Logout</a>
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

        <div class="container-fluid">

          <!-- DataTables Example -->
          <div class="card mb-3" align="center">
            <div class="card-header">
              <i class="fas fa-table"></i>
             LA LISTE DES OPERATION </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <td>IDENTIFIANT</td>
                    <td>NOM</td>
                    <td>TYPE DE COMPTE</td>
                    <td>MODIFIER</td>
                    <td>SUPPRIMER</td>
                  </thead>
                    <tr>
                      <td>1465</td>
                      <td>Customer Support</td>
                      <td>courant</td>
                      <td><button  class="btn btn-success">Modifier</button></td>
                       <td><button class="btn btn-danger">Supprimer</button></td>
                    </tr>
                      <tr>
                      <td>788</td>
                      <td>Customer Support</td>
                      <td>courant</td>
                       <td><button  class="btn btn-success">Modifier</button></td>
                       <td><button class="btn btn-danger">Supprimer</button></td>
                    </tr>
                      <tr>
                      <td>8913</td>
                      <td>Customer Support</td>
                      <td>courant</td>
                    <td><button  class="btn btn-success">Modifier</button></td>
                       <td><button class="btn btn-danger">Supprimer</button></td>
                    </tr>
                      <tr>
                      <td>968</td>
                      <td>Customer Support</td>
                      <td>courant</td>
                        <td><button  class="btn btn-success">Modifier</button></td>
                       <td><button class="btn btn-danger" >Supprimer</button></td>
                    </tr>
                      <tr>
                      <td>064156</td>
                      <td>Customer Support</td>
                      <td>courant</td>
                       <td><button class="btn btn-success">Modifier</button></td>
                       <td><button class="btn btn-danger">Supprimer</button></td>
                    </tr>
                      <tr>
                      <td>8966</td>
                      <td>Customer Support</td>
                      <td>courant</td>
                      <td><button  class="btn btn-success">Modifier</button></td>
                       <td><button class="btn btn-danger">Supprimer</button></td>
                    </tr>
                      <tr>
                      <td>7995r</td>
                      <td>Customer Support</td>
                      <td>courant</td>
                     <td><button  class="btn btn-success">Modifier</button></td>
                       <td><button class="btn btn-danger">Supprimer</button></td>
                    </tr>
                      <tr>
                      <td>896</td>
                      <td>Customer Support</td>
                      <td>Epargne</td>
                        <td><button class="btn btn-success">Modifier</button></td>
                       <td><button class="btn btn-danger">Supprimer</button></td>
                    </tr>
                      <tr>
                      <td>D74</td>
                      <td>Customer Support</td>
                      <td>Epargne</td>
                     <td><button class="btn btn-success">Modifier</button></td>
                       <td><button class="btn btn-danger">Supprimer</button></td>
                    </tr>
                      <tr>
                      <td>963</td>
                      <td>Customer Support</td>
                      <td>Epargne</td>
                        <td><button  class="btn btn-success">Modifier</button></td>
                       <td><button class="btn btn-danger">Supprimer</button></td>
                    </tr>
                      <tr>
                      <td>852</td>
                      <td>Customer Support</td>
                      <td>courant</td>
                        <td><button class="btn btn-success">Modifier</button></td>
                       <td><button class="btn btn-danger">Supprimer</button></td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
           
          </div>

        </div>
        <!-- /.container-fluid -->

     
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

  </body>

</html>
