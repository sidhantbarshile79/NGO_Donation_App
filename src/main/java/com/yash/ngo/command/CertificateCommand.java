package com.yash.ngo.command;

import java.util.Date;

public class CertificateCommand {
    private String donorName;
    private double donationAmount;
    private String donationDate; // Use Date for date representation
    private String donationMessage;

    // Default constructor
    public CertificateCommand() {}

    // Getters and Setters
    public String getDonorName() {
        return donorName;
    }

    public void setDonorName(String donorName) {
        this.donorName = donorName;
    }

    public double getDonationAmount() {
        return donationAmount;
    }

    public void setDonationAmount(double donationAmount) {
        this.donationAmount = donationAmount;
    }

    public String getDonationDate() {
        return donationDate;
    }

    public void setDonationDate(String donationDate) {
        this.donationDate = donationDate;
    }

    public String getDonationMessage() {
        return donationMessage;
    }

    public void setDonationMessage(String donationMessage) {
        this.donationMessage = donationMessage;
    }
}