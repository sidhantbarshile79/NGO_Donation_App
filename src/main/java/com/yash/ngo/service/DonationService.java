package com.yash.ngo.service;

import java.util.List;

import com.yash.ngo.domain.Donation;

public interface DonationService
{

	public void saveDonation(Donation donation);

	public Donation findById(Integer userId);


	  public List<Donation> findAll();

	  public List<Donation> findByProperty(String propName, Object propValue);

	public void updateDonation(Donation donation);

	public void deleteDonation(Integer donationId);

	public List<Donation> getAllDonationHistoryList(int userId);

	public int getTotalDonationAmount();
}
