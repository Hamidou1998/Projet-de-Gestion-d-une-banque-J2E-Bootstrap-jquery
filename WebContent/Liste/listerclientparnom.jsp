<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%@ page import="com.banque.Dao.*,com.banque.entities.*,com.banque.Util.*,java.util.*" isErrorPage="false" %>
<div class="content-box-large">	
				
		  
		  
		  <% ClientsDao clientdao=new ClientsDao();
		  
		  List<Client> listeclient=clientdao.listerTous();
		  
		  
		  
		%>			
				
				
			
             LA LISTE DES CLIENTS </div>
              <label for="exampleFormControlSelect1">Clients</label>
			
      
                <select class="form-control" id="nom_clients">
					
			<%	if(!listeclient.isEmpty()){
					 	
			for(Client c:listeclient)
				{
					%>		
				<Option value="<%=c.getCode()%>"><%=c.getNom() %></Option>	
         
                  <%
                  
				}
					 }
					 else
					 {
						 
						 
                  %>
						
						<Option value="null" >Auccun client existant!></Option>		
					
					</select>
  				
  				
  		
				<div class="alert alert-danger text-center" ><h2><strong>Attention!</strong></strong> Aucun client n'est disponible actuellement.</h2></div>
			
			<%
			}
			%>
			</div>