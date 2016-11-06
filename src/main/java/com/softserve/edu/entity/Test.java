package com.softserve.edu.entity;

import javax.persistence.*;

@Entity
@Table(name = "tests")
public class Test extends BaseEntity {

	@Column(name = "analysis", length = 100, nullable = false)
	private String name;

	@Column(name = "description")
	private String description;
	
	@Column(name = "full_description", length = 2000)
	private String fullDescription;

	@Column(name = "test_category", nullable = false)
	@Enumerated(EnumType.STRING)
	private TestCategory testCategory;
	
	@Column(name = "enabled", nullable = true)
	private Boolean enabled;

	public Test() {
	}

	public Test(String name) {
		this.name = name;
	}

	public Test(String name, String desc) {
		this.name = name;
		this.description = desc;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public TestCategory getTestCategory() {
		return testCategory;
	}

	public void setTestCategory(String testCategory) {
		this.testCategory = TestCategory.valueOf(testCategory);
	}

	public Boolean getEnabled() {
		return enabled;
	}

	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}
	

	public String getFullDescription() {
		return fullDescription;
	}

	public void setFullDescription(String fullDescription) {
		this.fullDescription = fullDescription;
	}

	

	@Override
	public String toString() {
		return new StringBuilder()
		    .append("id: ").append(this.getId())
	        .append(", name: ").append(this.getName())
	        .append(", test category: ").append(this.getTestCategory().getName())
		    .append(", description: ").append(this.getDescription())
		    .append(", enubled: ").append(this.getEnabled())
            .toString();
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((description == null) ? 0 : description.hashCode());
		result = prime * result + ((enabled == null) ? 0 : enabled.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result
				+ ((testCategory == null) ? 0 : testCategory.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Test other = (Test) obj;
		if (description == null) {
			if (other.description != null)
				return false;
		} else if (!description.equals(other.description))
			return false;
		if (enabled == null) {
			if (other.enabled != null)
				return false;
		} else if (!enabled.equals(other.enabled))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (testCategory != other.testCategory)
			return false;
		return true;
	}	


}
