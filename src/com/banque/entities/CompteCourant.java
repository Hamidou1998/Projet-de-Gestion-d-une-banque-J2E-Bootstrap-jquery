package com.banque.entities;


import java.sql.Date;

import javax.persistence.*;


@Entity
@DiscriminatorValue("CC")
public class CompteCourant extends Compte {
	private double decouverte;


	public CompteCourant() {
		super();
		// TODO Auto-generated constructor stub
	}


	public CompteCourant(String codecompte, Date datecreatiion, Double solde, Client client, double decouverte) {
	//	super(codecompte, datecreatiion, solde, client);
		this.decouverte = decouverte;
	}


	public double getDecouverte() {
		return decouverte;
	}


	public void setDecouverte(double decouverte) {
		this.decouverte = decouverte;
	}


	
	

}
