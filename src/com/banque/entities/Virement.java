package com.banque.entities;


import java.sql.Date;

import javax.persistence.*;

@Entity
@DiscriminatorValue("V")
public class Virement extends Operation {

	public Virement() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Virement(Date dateoperation, double montant, Compte compte) {
		super(dateoperation, montant, compte);
		// TODO Auto-generated constructor stub
	}
	

}
