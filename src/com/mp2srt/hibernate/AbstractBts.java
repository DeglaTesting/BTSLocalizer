package com.mp2srt.hibernate;

/**
 * AbstractBts entity provides the base persistence definition of the Bts
 * entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractBts implements java.io.Serializable {

	// Fields

	private Long idbts;
	private String nomBts;
	private String langitude;
	private String latitude;
	private Long puissance;
	private String info;

	// Constructors

	/** default constructor */
	public AbstractBts() {
	}

	/** full constructor */
	public AbstractBts(String nomBts, String langitude, String latitude,
			Long puissance, String info) {
		this.nomBts = nomBts;
		this.langitude = langitude;
		this.latitude = latitude;
		this.puissance = puissance;
		this.info = info;
	}

	// Property accessors

	public Long getIdbts() {
		return this.idbts;
	}

	public void setIdbts(Long idbts) {
		this.idbts = idbts;
	}

	public String getNomBts() {
		return this.nomBts;
	}

	public void setNomBts(String nomBts) {
		this.nomBts = nomBts;
	}

	public String getLangitude() {
		return this.langitude;
	}

	public void setLangitude(String langitude) {
		this.langitude = langitude;
	}

	public String getLatitude() {
		return this.latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public Long getPuissance() {
		return this.puissance;
	}

	public void setPuissance(Long puissance) {
		this.puissance = puissance;
	}

	public String getInfo() {
		return this.info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

}