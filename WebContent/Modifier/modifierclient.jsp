<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.banque.Dao.*,com.banque.entities.*,com.banque.Util.*,java.util.*" isErrorPage="false" %>

<% ClientsDao clientdao=new ClientsDao();


Long id=Long.parseLong((request.getParameter("code")));
String n=String.valueOf((request.getParameter("nom")));
String email=String.valueOf((request.getParameter("email")));

Client c=new Client(n,email);
c.setCode(id);

System.out.println(id);
System.out.println(n);
System.out.println(email);

boolean modifier =clientdao.modifier(c);

System.out.println(modifier);

if(modifier){
	
	out.println("success");
	
}else
{
	out.println("failed"); 
	
}


%>
