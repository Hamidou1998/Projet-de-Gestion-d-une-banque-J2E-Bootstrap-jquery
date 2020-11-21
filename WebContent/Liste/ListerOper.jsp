<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%@ page import="com.banque.Dao.*,com.banque.entities.*,com.banque.Util.*,java.util.*" isErrorPage="false" %>

		  
		  
		  <% OperationDao operationdao=new OperationDao();
		  
		  String code=request.getParameter("code");				  
				  
				  List<Operation> listeoperation=operationdao.listerParCode(code);
		  
		   if(!listeoperation.isEmpty()){
		  
		         String sh ="";
				
				for(Operation o:listeoperation)
				{
							
				sh+="<tr class='odd gradeX'><td>"+o.getNumero()+"</td><td>"+o.getDateoperation()+"</td><td>"+o.getMontant()+"</td><td>"+o.getCompte().getCodecompte()+"</td></tr>";	
					
                  
				}
             
				out.println(sh);
		          }%>