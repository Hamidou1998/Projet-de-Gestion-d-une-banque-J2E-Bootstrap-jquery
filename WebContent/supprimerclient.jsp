<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.banque.Dao.*,com.banque.entities.*,com.banque.Util.*,java.util.*" isErrorPage="false" %>

<% ClientsDao clientdao=new ClientsDao();


//System.out.println("mon code "+request.getParameter("code"));

Long b=Long.parseLong(request.getParameter("code"));
System.out.println("mon code "+b);

boolean deleted =clientdao.supprimer(b);

System.out.println(deleted);

if(deleted){
	
	out.println("success");//"Le client identifiée par le code [ "+request.getParameter("code")+" ] est sauvegardée");
	
	System.out.println("je suis la");
}else
{
	out.println("failed"); //impossible de sauvegarder Le client identifiée par le code [ "+request.getParameter("code")+" ]");
	System.out.println("je suis pas laaa  la");
}


%>
