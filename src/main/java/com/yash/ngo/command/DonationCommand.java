package com.yash.ngo.command;
import java.sql.Date;

public class DonationCommand {
	private Integer userId;
    private Double donationAmount;
    private Date donationDate;
    private String aadhaarNumber;
    private String panCardNumber;
    private String donationType;


	public DonationCommand() {
		super();
		// TODO Auto-generated constructor stub
	}


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


	@Override
	public String toString() {
		return "DonationCommand [userId=" + userId + ", donationAmount=" + donationAmount + ", donationDate="
				+ donationDate + ", aadhaarNumber=" + aadhaarNumber + ", panCardNumber=" + panCardNumber
				+ ", donationType=" + donationType + "]";
	}



}