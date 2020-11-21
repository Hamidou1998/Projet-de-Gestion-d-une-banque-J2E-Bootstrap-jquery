<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%@ page import="com.banque.Dao.*,com.banque.entities.*,com.banque.Util.*,java.util.*" isErrorPage="false" %>
<div class="content-box-large">	
				
		  
		  
		  <% CompteDao CompteDao=new CompteDao();
		  
		  List<Compte> listecompte=CompteDao.listerTous();
		  
		 if(!listecompte.isEmpty()){
		  
		%>			
				 
				
			<div class="card mb-3" align="center">
            <div class="card-header">
              <i class="fas fa-table"></i>
             LA LISTE DES COMPTES</div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
						<thead>
							<tr>
							
								<th>NUMERO</th>
								<th>Date DE CREATION</th>
								<th>SOLDE</th>
								<th>CLIENTS</th>
						         <th>TYPE DE COMPTE</th>
                                <th>Modifier</th>
                               <th>Supprimer</th>
							</tr>
						</thead>
						<tbody>
						
				<%for(Compte c:listecompte)
				{
					%>		
				
							<tr class="odd gradeX">
								<td><%=c.getCodecompte()%></td>
								<td><%=c.getDatecreatiion()%></td>
								<td><%=c.getSolde()%></td>
								<td><%=c.getClient().getNom()%></td>
								<td><%=c.getTYPE_CPTE()%></td>
									
							
     <td><p data-placement="top" data-toggle="tooltip" title="Modifier"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" value="<%=c.getCodecompte()+"-"+c.getDatecreatiion()+"-"+c.getSolde()+"-"+c.getSolde()+"-"+c.getClient().getNom()%>">Modifier<span class="glyphicon glyphicon-pencil"></span></button></p></td>
    <td><p data-placement="top" data-toggle="tooltip" title="Supprimer"><button class="btn btn-danger btn-xs" value="<%=c.getCodecompte() %>"  data-title="Delete" data-toggle="modal" data-target="#delete" >Supprimer<span class="glyphicon glyphicon-trash"></span></button></p></td>

                  </tr>
                  <%
                  
				}
                  %>
						
							
						</tbody>
					</table>
  				</div>	
  				</div>
  						
				<%
		          }else{
					
				%>
				<div class="alert alert-danger text-center" ><h2><strong>Attention!</strong></strong> Aucun Compte n'est disponible actuellement.</h2></div>
			
			<%
			}
		   
		   %>
			
			</div>
			</div>
	