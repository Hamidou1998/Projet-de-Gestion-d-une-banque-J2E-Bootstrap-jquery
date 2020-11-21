<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.banque.Dao.*,com.banque.entities.*,com.banque.Util.*,java.text.*" isErrorPage="false" %>

<%CompteDao comptedao=new CompteDao();


String date=request.getParameter("date");
SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd");


ClientsDao clientdao=new ClientsDao();
System.out.println(clientdao);


String type=request.getParameter("type");

Client c=clientdao.listerParCode(Integer.parseInt(request.getParameter("client")));

System.out.println(request.getParameter("client"));


Compte compte=new Compte(request.getParameter("code"),sdf.parse(date),Double.parseDouble(request.getParameter("solde")),c,type);
System.out.println(compte);


boolean saved =comptedao.ajouter(compte);

System.out.println(saved);
if(saved){
	
	out.println("success");//"La client dont le  nom [ "+request.getParameter("nom")+" ] est sauvegardée");
}
else
{
	out.println("failed"); //impossible de sauvegarder le client [ "+request.getParameter("nom")+" ]");
	
}


%>
