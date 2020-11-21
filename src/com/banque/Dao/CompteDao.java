package com.banque.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import com.banque.Util.JPAutil;
import com.banque.entities.Client;
import com.banque.entities.Compte;

public class CompteDao {
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
		 public   void modifier(Compte c)
			{
			 	EntityTransaction tx = entityManager.getTransaction();
			 	tx.begin();
			 	entityManager.merge(c);
			 	tx.commit();
			 	  
			}
		 
		 //méthode Supprimer d'une entité à  partir de la bd
		 public  void supprimer(Compte c)
		{ 
			EntityTransaction tx = entityManager.getTransaction();
		    tx.begin();
		    c=entityManager.merge(c); // important
		    entityManager.remove(c);
		    tx.commit();  
		}
		 
		 //méthode Consulter d'une entité à  partir de la bd
		 public  Compte Consulter(Compte c,Object id)
		{
		 	return entityManager.find(c.getClass(), id);
			}
		 
		 //méthode pour lister tous les objetsà  partir de la bd
		 public List<Compte> listerTous() {
			 List<Compte> compte =entityManager.createQuery( "select c from Compte c").getResultList();
			 return compte;
			 }
		 
		//méthode pour lister tous les objetsà  partir de la bd
		 public Compte listerParCode(String id) {
			 
			 System.out.println("je suis la");
			 Compte cpte =(Compte)entityManager.createQuery( "select c from Compte  c where c.codecompte ='"+id+"'").getSingleResult();
			 
//			 Client clt=new Client(clts.get(0).,clts.get(2));
		
			
			System.out.println(cpte);
			return cpte;
			 
			 }
		 
	}


