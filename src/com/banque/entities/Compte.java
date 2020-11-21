package com.banque.entities;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import javax.persistence.*;

@Entity
public class Compte implements Serializable {
	
	@Id 
	private String codecompte;
	@Override
	public String toString() {
		return "Compte [codecompte=" + codecompte + ", datecreatiion=" + datecreatiion + ", solde=" + solde
				+ ", client=" + client + ", operations=" + operations + "]";
	}
	@Temporal(TemporalType.TIMESTAMP)
	private Date datecreatiion;
	private Double solde;
	
	private String TYPE_CPTE;
	
	@ManyToOne
	@JoinColumn(name="CODE_CLI")
	private Client client;
	@OneToMany(mappedBy="compte")
	private Collection<Operation> operations;
	private static final long serialVersionUID = 1L;

	public Compte() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Compte(String codecompte, Date datecreatiion, Double solde, Client client,String TYPE_CPTE) {
		super();
		this.codecompte = codecompte;
		this.datecreatiion = datecreatiion;
		this.solde = solde;
		this.client = client;
		this.TYPE_CPTE=TYPE_CPTE;
	}


	public String getTYPE_CPTE() {
		return TYPE_CPTE;
	}

	public void setTYPE_CPTE(String typecompte) {
		this.TYPE_CPTE = typecompte;
	}

	public String getCodecompte() {
		return codecompte;
	}

	public void setCodecompte(String codecompte) {
		this.codecompte = codecompte;
	}

	public Date getDatecreatiion() {
		return datecreatiion;
	}

	public void setDatecreatiion(Date datecreatiion) {
		this.datecreatiion = datecreatiion;
	}

	public Double getSolde() {
		return solde;
	}

	public void setSolde(Double solde) {
		this.solde = solde;
	}

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	public Collection<Operation> getOperations() {
		return operations;
	}

	public void setOperations(Collection<Operation> operations) {
		this.operations = operations;
	}
	
	

}
