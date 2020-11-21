package com.banque.entities;

import java.io.*;
import java.util.Collection;
import javax.persistence.*;

@Entity
public  class Client implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id @GeneratedValue
	private Long code;
	private String nom;
	private String email;
	@OneToMany(mappedBy="client",fetch=FetchType.LAZY)
	private Collection<Compte> comptes;
	public Client() {
	}
	public Client(String nom, String email) {

		
		this.nom = nom;
		this.email = email;
	
	}
	public Long getCode() {
		return code;
	}
	public void setCode(Long code) {
		this.code = code;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Collection<Compte> getComptes() {
		return comptes;
	}
	public void setComptes(Collection<Compte> comptes) {
		this.comptes = comptes;
	}
	@Override
	public String toString() {
		return "Client [code=" + code + ", nom=" + nom + ", email=" + email + "]";
	}
	
	
	
}
