package com.yash.ngo.dao;

import java.util.List;

import com.yash.ngo.domain.Donation;

public interface DonationDAO
{
    public void save(Donation d);
    public void update(Donation d);
    public void delete(Donation d);
    public void delete(Integer userId);
    public Donation findById(Integer donationId);

	public List<Donation> findAll();
	public List<Donation> findByProperty(String propName, Object propValue);
	public int donationCount();
	public List<Donation> displayDonationHistoryList(int userId);

}