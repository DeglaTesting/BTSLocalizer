package com.mp2srt.hibernate;

/**
 * Bts entity. @author MyEclipse Persistence Tools
 */
public class Bts extends AbstractBts implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Bts() {
	}

	/** full constructor */
	public Bts(String nomBts, String langitude, String latitude,
			Long puissance, String info) {
		super(nomBts, langitude, latitude, puissance, info);
	}

}
