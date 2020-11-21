package com.banque.Util;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class JPAutil {
	private static EntityManagerFactory factory;
	private static EntityManager entityManager;

	public static EntityManager getEntityManager(String persistUnit) {
		
		if (entityManager==null)
		{
		  factory =  Persistence.createEntityManagerFactory(persistUnit);
		
		  entityManager = factory.createEntityManager();
		}
		return entityManager;
	}
	
	
//    public static void main (String [] args) {
//		JPAutil.getEntityManager("NotreBanque");
//	}
}