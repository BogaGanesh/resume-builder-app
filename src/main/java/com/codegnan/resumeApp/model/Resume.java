package com.codegnan.resumeApp.model;

public class Resume {
	
	private String name;
	private String email;
	private String phone;
	
	private String skill;
	private String education;
	private String experience;
	private String project;
	private String projdesc;
	
	private String certificates;
	private String achievements;
	public Resume(String name, String email, String phone, String skill, String education, String experience,
			String project, String projdesc, String certificates, String achievements) 
	{
		super();
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.skill = skill;
		this.education = education;
		this.experience = experience;
		this.project = project;
		this.projdesc=projdesc;
		this.certificates=certificates;
		this.achievements=achievements;
	}


	public Resume() {
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getSkill() {
		return skill;
	}


	public void setSkill(String skill) {
		this.skill = skill;
	}


	public String getEducation() {
		return education;
	}


	public void setEducation(String education) {
		this.education = education;
	}


	public String getExperience() {
		return experience;
	}


	public void setExperience(String experience) {
		this.experience = experience;
	}


	public String getProject() {
		return project;
	}


	public void setProject(String project) {
		this.project = project;
	}


	public String getProjdesc() {
		return projdesc;
	}


	public void setProjdesc(String projdesc) {
		this.projdesc = projdesc;
	}


	public String getCertificates() {
		return certificates;
	}


	public void setCertificates(String certificates) {
		this.certificates = certificates;
	}


	public String getAchievements() {
		return achievements;
	}


	public void setAchievements(String achievements) {
		this.achievements = achievements;
	}
	
	
	

}
