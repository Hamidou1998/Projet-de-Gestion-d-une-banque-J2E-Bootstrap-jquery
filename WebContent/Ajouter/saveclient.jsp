<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.banque.Dao.*,com.banque.entities.*,com.banque.Util.*" isErrorPage="false" %>

<%ClientsDao clientdao=new ClientsDao();

Client c = new Client(request.getParameter("nom"),request.getParameter("email"));

boolean saved =clientdao.ajouter(c);

if(saved){
	
	out.println("success");//"La client dont le  nom [ "+request.getParameter("nom")+" ] est sauvegardée");
}
else
{
	out.println("failed"); //impossible de sauvegarder le client [ "+request.getParameter("nom")+" ]");
	
}


%>
