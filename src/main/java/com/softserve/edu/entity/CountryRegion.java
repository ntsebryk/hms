package com.softserve.edu.entity;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

import org.hibernate.annotations.ForeignKey;
import javax.persistence.*;

@Entity
@Table(name="country_region")
class CountryRegion extends BaseEntity {

	@Column(name = "name", length = 34, nullable = true)
	private String name;

	@ManyToOne
	@JoinColumn(name = "country_id")
	@ForeignKey(name = "none")
	private Country country;

	@Column(name = "timezone", length = 34, nullable = true)
	private String timezone;
	
	public CountryRegion() {}

	public CountryRegion(String code, Country country, String timezone) {	
		this.name = name;
		this.country = country;
		this.timezone = timezone;		
	}	

	public void setName(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setCountry(Country country) {
		this.country = country;
	}

	public Country getCountry() {
		return country;
	}

	public void setTimezone(String timezone) {
		this.timezone = timezone;
	}
	
	public String getTimezone() {
		return timezone;
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

