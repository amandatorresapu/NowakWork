package com.codingdojo.NowakWork.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;




@Entity
@Table (name="jobs")
public class Job {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotEmpty
    @Size(min=2, message="Full Name must be more than 2 Characters")
	private String fullName;
	
	@NotEmpty
    @Size(min=2, message="Description must be more than 2 Characters")
	private String description;
	
	@NotEmpty
    @Size(min=2, message="Quote must be more than 2 Characters")
	private String location;
	
	@NotNull
	
    @Min(value = 0, message="Cannot cost less than 0")
    private Integer phoneNumber;
	
	

	
	@Column(updatable=false)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date createdAt;
	    
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date updatedAt;
	
	
	//many to one is need to be one user and many jobs
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="user_id")
	private User user;
	
	
	
	
	
	
	public Job(@NotEmpty @Size(min = 2, message = "Full Name must be more than 2 Characters") String fullName,
			@NotEmpty @Size(min = 2, message = "Description must be more than 2 Characters") String description,
			@NotEmpty @Size(min = 2, message = "Quote must be more than 2 Characters") String location,
			@NotNull @Min(100) Integer phoneNumber,
			@NotEmpty @Size(min = 2, message = "Category must be more than 2 Characters") String category,
			com.codingdojo.NowakWork.models.User user) {
		super();
		this.fullName = fullName;
		this.description = description;
		this.location = location;
		this.phoneNumber = phoneNumber;
		
		this.user = user;
	}
	public Job(Long id, @NotEmpty @Size(min = 2, message = "Full Name must be more than 2 Characters") String fullName,
			@NotEmpty @Size(min = 2, message = "Description must be more than 2 Characters") String description,
			@NotEmpty @Size(min = 2, message = "Quote must be more than 2 Characters") String location,
			@NotNull @Min(100) Integer phoneNumber,
			@NotEmpty @Size(min = 2, message = "Category must be more than 2 Characters") String category,
			Date createdAt, Date updatedAt, com.codingdojo.NowakWork.models.User user) {
		super();
		this.id = id;
		this.fullName = fullName;
		this.description = description;
		this.location = location;
		this.phoneNumber = phoneNumber;
		
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
		this.user = user;
	}
	public Job() {
		super();
	}
	
	
	
	
	
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public Integer getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(Integer phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public Date getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@PrePersist
	protected void onCreate(){
	    this.createdAt = new Date();
	    }
	@PreUpdate
    protected void onUpdate(){
        this.updatedAt = new Date();
    }

}
