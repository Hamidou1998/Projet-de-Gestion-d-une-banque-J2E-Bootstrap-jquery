package com.banque.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import com.banque.Util.JPAutil;
import com.banque.entities.Compte;
import com.banque.entities.Operation;

public class OperationDao {
	private EntityManager entityManager=JPAutil.getEntityManager("NotreBanque");
	 
	//m�thode ajouter d'une entit� �  la bd
		 public   void ajouter(Object c)
		{
		 	EntityTransaction tx = entityManager.getTransaction();
		 	tx.begin();
		 	entityManager.persist(c);
		 	tx.commit();
		 	  
		}
		 
		 //m�thode modifier d'une entit� �  partir de la bd
		 public   void modifier(Operation o)
			{
			 	EntityTransaction tx = entityManager.getTransaction();
			 	tx.begin();
			 	entityManager.merge(o);
			 	tx.commit();
			 	  
			}
		 
		 //m�thode Supprimer d'une entit� �  partir de la bd
		 public  void supprimer(Operation o)
		{ 
			EntityTransaction tx = entityManager.getTransaction();
		    tx.begin();
		    o=entityManager.merge(o); // important
		    entityManager.remove(o);
		    tx.commit();  
		}
		 
		 //m�thode Consulter d'une entit� �  partir de la bd
		 public  Operation Consulter(Operation o,Object id)
		{
		 	return entityManager.find(o.getClass(), id);
			}
		 
		 //m�thode pour lister tous les objets�  partir de la bd
		 public List<Operation> listerTous() {
			 List<Operation> operation =entityManager.createQuery( "select o from operation o").getResultList();
			 return operation;
			 }
		 
			//m�thode pour lister tous les objets�  partir de la bd
		 public List listerParCode(String id) {
			 
			 System.out.println("je suis la");
			  List opers =entityManager.createQuery( "select c from operation  c where c.CODE_CPTE ='"+id+"'").getResultList();			 
//			 Client clt=new Client(clts.get(0).,clts.get(2));
		
			
			 System.out.println(opers);
			return opers;
			 
			 }
	}


