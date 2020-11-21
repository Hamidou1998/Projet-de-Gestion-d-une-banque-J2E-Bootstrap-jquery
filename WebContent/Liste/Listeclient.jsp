<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%@ page import="com.banque.Dao.*,com.banque.entities.*,com.banque.Util.*,java.util.*" isErrorPage="false" %>
<div class="content-box-large">	
				
		  
		  
		  <% ClientsDao clientdao=new ClientsDao();
		  
		  List<Client> listeclient=clientdao.listerTous();
		  
		   if(!listeclient.isEmpty()){
		  
		%>			
				
				
		<div class="card mb-3" align="center">
            <div class="card-header">
              <i class="fas fa-table"></i>
             LA LISTE DES CLIENTS </div>
             <!--  <label for="exampleFormControlSelect1">Clients</label> -->
			
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
						<thead>
							<tr>
							
								<th>Code</th>
								<th>Nom</th>
								<th>Email</th>
                                <th>Modifier</th>
                               <th>Supprimer</th>
							</tr>
						</thead>
						<tbody>
						
				<%for(Client c:listeclient)
				{
					%>		
			
							 <tr class="odd gradeX">
								<td><%=c.getCode()%></td>
								<td><%=c.getNom() %></td>
								<td><%=c.getEmail()%></td>	
							
     <td><p data-placement="top" data-toggle="tooltip" title="Modifier"><button type="Button" class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" id="modifier" value="<%=c.getCode()+"-"+c.getNom()+"-"+c.getEmail()%>">Modifier<span class="glyphicon glyphicon-pencil"></span></button></p></td>
    <td><p data-placement="top" data-toggle="tooltip" title="Supprimer"><button type="Button" class="btn btn-danger btn-xs" value="<%=c.getCode()%>"  data-title="Delete" data-toggle="modal" data-target="#delete" id="supprimer">Supprimer<span class="glyphicon glyphicon-trash"></span></button></p></td>

                  </tr>
                  <%
                  
				}
                  %>
						
							
						</tbody>
					</table>
				
  				</div>	
  				
  						
				<%
		          }else{
					
				%>
				<div class="alert alert-danger text-center" ><h2><strong>Attention!</strong></strong> Aucun client n'est disponible actuellement.</h2></div>
			
			<%}
		   
		   %>
			
			</div>