<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.banque.Dao.*,com.banque.entities.*,com.banque.Util.*,java.text.*" isErrorPage="false" %>

<%CompteDao comptedao=new CompteDao();


/* SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd"); */


String code=request.getParameter("code");

System.out.println(code);

Compte c=comptedao.listerParCode(code);


if(c!=null){
	
	out.println(c.getCodecompte()+"#"+c.getDatecreatiion()+"#"+c.getSolde()+"#"+c.getClient().getNom()+"#"+c.getTYPE_CPTE());
	

}
else
{
	out.println("failed"); //impossible de sauvegarder le client [ "+request.getParameter("nom")+" ]");
	
}


%>
