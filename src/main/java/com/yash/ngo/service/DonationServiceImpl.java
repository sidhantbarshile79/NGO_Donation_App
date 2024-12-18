package com.yash.ngo.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yash.ngo.dao.DonationDAO;
import com.yash.ngo.domain.Donation;

@Service
public class DonationServiceImpl implements DonationService
{
	@Autowired
	private DonationDAO donationDAO;
	//private DonationDAO donationRepository;


	@Autowired
	public DonationServiceImpl(DonationDAO donationDAO)
	{
		this.donationDAO = donationDAO;
	}


	@Override
    public void saveDonation(Donation donation) {
        donationDAO.save(donation);
    }




	  @Override public List<Donation> findAll()
	  {
		  List<Donation> donations=donationDAO.findAll();
		  return donations;

	  }

	  @Override public List<Donation> findByProperty(String propName, Object
	  propValue) { return donationDAO.findByProperty(propName, propValue); }


    @Override
    public void updateDonation(Donation donation) {
        donationDAO.update(donation);
    }

    @Override
    public void deleteDonation(Integer donationId) {
        donationDAO.delete(donationId);
    }



	@Override
	public List<Donation> getAllDonationHistoryList(int userId) {
		return donationDAO.displayDonationHistoryList(userId);
	}



	@Override
	public Donation findById(Integer donationId) 
	{
		return donationDAO.findById(donationId);
	}



	@Override
	public int getTotalDonationAmount() {
		// TODO Auto-generated method stub
		return donationDAO.donationCount();
	}
	
	
}