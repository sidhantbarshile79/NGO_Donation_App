package com.yash.ngo.command;
import java.sql.Date;
import java.time.LocalDateTime;

import com.yash.ngo.domain.Contact;

public class DonationCommand 
{
	private String name;
	public String getName() 
	{
		return name;
	}

	public void setName(String name) 
	{
		this.name = name;
	}


	private Integer userId;
    private Double donationAmount;
    private Date donationDate;
    private String aadhaarNumber;
    private String panCardNumber;
    private String donationType;
    private String donationReason;
	private String mobile;
	private String message;
	private String email;
    
	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Double getDonationAmount() {
		return donationAmount;
	}

	public void setDonationAmount(Double donationAmount) {
		this.donationAmount = donationAmount;
	}

	public Date getDonationDate() {
		return donationDate;
	}

	public void setDonationDate(Date donationDate) {
		this.donationDate = donationDate;
	}

	public String getAadhaarNumber() {
		return aadhaarNumber;
	}

	public void setAadhaarNumber(String aadhaarNumber) {
		this.aadhaarNumber = aadhaarNumber;
	}

	public String getPanCardNumber() {
		return panCardNumber;
	}

	public void setPanCardNumber(String panCardNumber) {
		this.panCardNumber = panCardNumber;
	}

	public String getDonationType() {
		return donationType;
	}

	public void setDonationType(String donationType) {
		this.donationType = donationType;
	}

	public String getDonationReason() {
		return donationReason;
	}

	public void setDonationReason(String donationReason) {
		this.donationReason = donationReason;
	}

	@Override
	public String toString() {
		return "DonationCommand [name=" + name + ", userId=" + userId + ", donationAmount=" + donationAmount
				+ ", donationDate=" + donationDate + ", aadhaarNumber=" + aadhaarNumber + ", panCardNumber="
				+ panCardNumber + ", donationType=" + donationType + ", donationReason=" + donationReason + "]";
	}

	public DonationCommand() 
	{
		
	}
    

}