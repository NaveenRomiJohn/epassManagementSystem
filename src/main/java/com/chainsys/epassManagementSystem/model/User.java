package com.chainsys.epassManagementSystem.model;

import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name = "epass_user")
public class User {
	@Id
	@Column(name = "user_id")
//	@Size(max = 20, min = 3, message = "* name length should be minimum 3 characters ")
	private String userId;
	
	@Column(name = "first_name")
//	@Size(max = 20, min = 3, message = "name length should be minimum 3 characters ")
//	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$",message ="* name length should be minimum 3 characters" )
	@NotNull
	private String firstName;
	
	@Column(name = "last_name")
//	@NotEmpty(message = "* last name must not be empty")
	@NotNull
	private String lastName;
	
	@Column(name = "gender")
	@NotNull//(message = "* please select the gender")
	private String gender;
	
	@Column(name = "age")
	@NotNull //@Min(18) @Max(70)
	private Integer age;
	
	@Column(name = "email")
//	@Pattern(regexp = "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$", message = "* invalid email")
	@NotNull
	private String email;
	
	@Column(name = "mobile_number")
//	@Digits(message="* number should contain 10 digits.", fraction = 0, integer = 10)
	@NotNull
	private Long mobileNumber;
	
	@Column(name = "address")
//	@NotEmpty(message = "* please enter address")
	@NotNull
	private String address;
	
	@Column(name = "user_password")
//	@Size(max = 20, min = 6, message = "* password length should be 6 to 20")
	@NotNull
	private String userPassword;

	@OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
	List<EpassForm> ePassFrom;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Long getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(Long mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
}
