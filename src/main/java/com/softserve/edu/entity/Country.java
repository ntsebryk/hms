package com.softserve.edu.entity;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

import javax.persistence.*;

@Entity
@Table(name = "countries")
public class Country extends BaseEntity {

	@Column(name = "iso", length = 45, nullable = false)
	private String iso;	

	@Column(name = "iso3", length = 45, nullable = false)
	private String iso3;	

	@Column(name = "fips", length = 45, nullable = false)
	private String fips;
	
	@Column(name = "name", length = 45, nullable = false)
	private String name;
	
	@Column(name = "continent", length = 45 , nullable = false)
	private String continent;	

	@Column(name = "currency_code", length = 45, nullable = false)
	private String currencyCode;
	
	@Column(name = "currency_name", length = 45, nullable = false)
	private String currencyName;
	
	@Column(name = "phone_prefix", length = 73, nullable = true)
	private String phonePrefix;	

	@Column(name = "postal_code", length = 34, nullable = false)
	private String postalCode;	

	@Column(name = "languages", length = 34, nullable = false)
	private String languages;
	
	@Column(name = "geonameid", length = 34, nullable = false)
	private String geonameid;	

	public Country() {}

	public Country(String iso, 
		String iso3, 
		String fips,
		String name, 
		String continent, 
		String currencyCode, 
		String currencyName,
		String phonePrefix,
		String postalCode,
		String languages,
		String geonameid) {
		this.iso = iso;
		this.iso3 = iso3;
		this.name = name;
		this.continent = continent;
		this.currencyCode = currencyCode;
		this.currencyName = currencyName;
		this.phonePrefix = phonePrefix;
		this.postalCode = postalCode;
		this.languages = languages;	
		this.geonameid = geonameid;
	}	

	public void setIso(String iso) {
		this.iso = iso;
	}
	
	public String getIso() {
		return iso;
	}

	public void setIso3(String iso3) {
		this.iso3 = iso3;
	}
	
	public String getIso3() {
		return iso3;
	}

	public void setFips(String fips) {
		this.fips = fips;
	}
	
	public String getFips() {
		return fips;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String getName() {
		return name;
	}

	public void setContinent(String continent) {
		this.continent = continent;
	}
	
	public String getContinent() {
		return continent;
	}

	public void setCurrencyCode(String currencyCode) {
		this.currencyCode = currencyCode;
	}
	
	public String getCurrencyCode() {
		return currencyCode;
	}

	public void setCurrencyName(String currencyName) {
		this.currencyName = currencyName;
	}
	
	public String getCurrencyName() {
		return currencyName;
	}

	public void setPhonePrefix(String phonePrefix) {
		this.phonePrefix = phonePrefix;
	}
	
	public String getPhonePrefix() {
		return phonePrefix;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}
	
	public String getPostalCode() {
		return postalCode;
	}

	public void setLanguages(String languages) {
		this.languages = languages;
	}
	
	public String getLanguages() {
		return languages;
	}

	public void setGeonameid(String geonameid) {
		this.geonameid = geonameid;
	}
	
	public String getGeonameid() {
		return geonameid;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}

	@Override
	public int hashCode() {
		return HashCodeBuilder.reflectionHashCode(this);
	}

	@Override
	public boolean equals(Object obj) {
		return EqualsBuilder.reflectionEquals(this, obj);
	}
}
