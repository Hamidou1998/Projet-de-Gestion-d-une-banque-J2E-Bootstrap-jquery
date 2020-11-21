package com.banque.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import com.banque.Util.JPAutil;
import com.banque.entities.Client;
import com.banque.entities.Compte;

public class CompteDao {
	private EntityManager entityManager=JPAutil.getEntityManager("NotreBanque");
	 
	//m�thode ajouter d'une entit� �  la bd
		 public   boolean  ajouter(Object c)
		{
		 	EntityTransaction tx = entityManager.getTransaction();
		 	tx.begin();
		 	entityManager.persist(c);
		 	tx.commit();
		 	return true;
		 	  
		}
		 
		 //m�thode modifier d'une entit� �  partir de la bd
		 public   void modifier(Compte c)
			{
			 	EntityTransaction tx = entityManager.getTransaction();
			 	tx.begin();
			 	entityManager.merge(c);
			 	tx.commit();
			 	  
			}
		 
		 //m�thode Supprimer d'une entit� �  partir de la bd
		 public  void supprimer(Compte c)
		{ 
			EntityTransaction tx = entityManager.getTransaction();
		    tx.begin();
		    c=entityManager.merge(c); // important
		    entityManager.remove(c);
		    tx.commit();  
		}
		 
		 //m�thode Consulter d'une entit� �  partir de la bd
		 public  Compte Consulter(Compte c,Object id)
		{
		 	return entityManager.find(c.getClass(), id);
			}
		 
		 //m�thode pour lister tous les objets�  partir de la bd
		 public List<Compte> listerTous() {
			 List<Compte> compte =entityManager.createQuery( "select c from Compte c").getResultList();
			 return compte;
			 }
		 
		//m�thode pour lister tous les objets�  partir de la bd
		 public Compte listerParCode(String id) {
			 
			 System.out.println("je suis la");
			 Compte cpte =(Compte)entityManager.createQuery( "select c from Compte  c where c.codecompte ='"+id+"'").getSingleResult();
			 
//			 Client clt=new Client(clts.get(0).,clts.get(2));
		
			
			System.out.println(cpte);
			return cpte;
			 
			 }
		 
	}


