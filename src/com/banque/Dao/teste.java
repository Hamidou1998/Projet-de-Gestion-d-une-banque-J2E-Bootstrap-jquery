package com.banque.Dao;
import static org.junit.Assert.*;
import java.util.List;
import org.junit.Test;
import com.banque.Dao.*;
import com.banque.entities.*;

public class teste {

	@Test
	public void test() {

		
	ClientsDao clientdao=new ClientsDao();
	    List<Client> listeclient=clientdao.listerTous();
	    System.out.println("Je suis la ");
	    for(Client c:listeclient)
	    {
	    	System.out.println("Je suis dan la boucle  ");
	    	
	    
	    	System.out.println(c.getCode());
	    	System.out.println(c.getNom());
	    	System.out.println(c.getEmail());
	    }
		
	}
	
//	@Test
//	public void testcomptedao() {
//		
//	CompteDao comptedao=new CompteDao();
//    List<Compte> listecompte=comptedao.listerTous();
//    System.out.println("Je suis la ");
//    for(Compte c:listecompte)
//    {
//    	System.out.println("Je suis dan la boucle  ");
//    	
//    
//    	System.out.println(c.getCodecompte());
//    	System.out.println(c.getDatecreatiion());
//    	System.out.println(c.getClient().getNom());
//    	System.out.println(c.getSolde());
//    }
//	
//}
		
}
