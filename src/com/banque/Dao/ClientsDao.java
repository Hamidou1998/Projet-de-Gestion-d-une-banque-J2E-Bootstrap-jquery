package com.banque.Dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import com.banque.Util.JPAutil;
import com.banque.entities.*;


//classe contenant les méthodes génériques ajouter,  supprimer, consulter par clé primaire (Id)
public  class ClientsDao {
private EntityManager entityManager=JPAutil.getEntityManager("NotreBanque");
 
//méthode ajouter d'une entité à  la bd
	 public   boolean  ajouter(Object c)
	{
	 	EntityTransaction tx = entityManager.getTransaction();
	 	tx.begin();
	 	entityManager.persist(c);
	 	tx.commit();
	 	return true;
	 	  
	}
	 
	 //méthode modifier d'une entité à  partir de la bd
	 public   boolean modifier(Client c)
		{
		 
		 
		    System.out.println("le client  = "+c);
		 	EntityTransaction tx = entityManager.getTransaction();
		 	tx.begin();
		 	String requete ="Update Client set nom='"+c.getNom()+" 'and email='"+c.getEmail() + "'where code="+c.getCode();
			 int i= entityManager.createQuery(requete).executeUpdate();
		 	tx.commit();
		    System.out.println(i);
		    
			   if(i==1)
			   {
			 
			    return true;
			   
				}
			   else
				   return false;
		 	  
		}
	 
	 //méthode Supprimer d'une entité à  partir de la bd
	 public  boolean  supprimer(long id)
	{ 
		 System.out.println("je suis dans supprimer ");
		 EntityTransaction tx = entityManager.getTransaction();
		Client c;
	    tx.begin();
	    String requete ="Delete from Client where code ="+id;
	    int i= entityManager.createQuery(requete).executeUpdate();
	    
	    System.out.println(i);
	    tx.commit();
	    
	    System.out.println(i);
	    
	   if(i==1)
	   {
	 
	    return true;
	   
		}
	   else
		   return false;
		
		
	}
	 

	 
	 //méthode pour lister tous les objetsà  partir de la bd
	 public List<Client> listerTous() {
		 
		 if(entityManager == null)
			 System.out.println("object est vide");
		 
		 
		 
		 System.out.println("je suis dans lister tout ");
		 List<Client> clients =entityManager.createQuery( "select c from Client c ").getResultList();
		 return clients;
		 }
	 
		//méthode pour lister tous les objetsà  partir de la bd
			 public Client listerParCode(int id) {
				 
				 System.out.println("je suis la");
				 Client clt =(Client)entityManager.createQuery( "select c from Client  c where c.code ="+id).getSingleResult();
				 
//				 Client clt=new Client(clts.get(0).,clts.get(2));
			
				
				System.out.println(clt);
				return clt;
				 
				 }
		 
			
	 
}
