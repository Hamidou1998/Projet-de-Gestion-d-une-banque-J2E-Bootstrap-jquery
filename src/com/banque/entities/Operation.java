package com.banque.entities;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.*;

@Entity
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(name="TYPE_CPTE",
	discriminatorType=DiscriminatorType.STRING,length=1)

public class Operation implements Serializable{ 
	
	@Id @GeneratedValue
	private Long numero;
	private Date dateoperation;
	private double montant;
	@ManyToOne
	@JoinColumn(name="CODE_CPTE")
	private Compte compte;
	
	
	public Operation() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Operation(Date dateoperation, double montant, Compte compte) {
		super();
		this.dateoperation = dateoperation;
		this.montant = montant;
		this.compte = compte;
	}


	public Long getNumero() {
		return numero;
	}


	public void setNumero(Long numero) {
		this.numero = numero;
	}


	public Date getDateoperation() {
		return dateoperation;
	}


	public void setDateoperation(Date dateoperation) {
		this.dateoperation = dateoperation;
	}


	public double getMontant() {
		return montant;
	}


	public void setMontant(double montant) {
		this.montant = montant;
	}


	public Compte getCompte() {
		return compte;
	}


	public void setCompte(Compte compte) {
		this.compte = compte;
	}
	
	

}
