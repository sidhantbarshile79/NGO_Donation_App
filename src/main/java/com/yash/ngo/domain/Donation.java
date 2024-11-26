package com.yash.ngo.domain;

import java.util.Date;

public class Donation
{
    private Integer donationId;
    private Integer userId;
    private String name;
    private Double donationAmount;
    private Date donationDate;
    private String aadhaarNumber;
    private String panCardNumber;
    private String donationType;

	public Donation() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getDonationId() {
		return donationId;
	}

	public void setDonationId(Integer donationId) {
		this.donationId = donationId;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	@Override
	public String toString() {
		return "Donation [donationId=" + donationId + ", userId=" + userId + ", name=" + name + ", donationAmount="
				+ donationAmount + ", donationDate=" + donationDate + ", aadhaarNumber=" + aadhaarNumber
				+ ", panCardNumber=" + panCardNumber + ", donationType=" + donationType + "]";
	}


}
