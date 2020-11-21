package com.banque.entities;



import java.sql.Date;

import javax.persistence.*;

@Entity
@DiscriminatorValue("CE")
public class CompteEpargne extends Compte{
	private double taux;
	

	public CompteEpargne() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public CompteEpargne(String codecompte, Date datecreatiion, Double solde, Client client, double taux) {
		//super(codecompte, datecreatiion, solde, client);
		this.taux = taux;
	}


	public double getTaux() {
		return taux;
	}



	public void setTaux(double taux) {
		this.taux = taux;
	}



	

}
