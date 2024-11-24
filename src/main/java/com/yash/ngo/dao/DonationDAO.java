package com.yash.ngo.dao;

import com.yash.ngo.domain.Donation;
import com.yash.ngo.domain.User;

import java.util.List;

public interface DonationDAO 
{
    public void save(Donation d);
    public void update(Donation d);
    public void delete(Donation d);
    public void delete(Integer userId);
    public Donation findById(Integer userId);

	
	  public List<Donation> findAll(); 
	  public List<Donation> findByProperty(String propName, Object propValue);
	  public int donationCount();
	public List<Donation> displayDonationHistoryList(int userId);
	
	
}