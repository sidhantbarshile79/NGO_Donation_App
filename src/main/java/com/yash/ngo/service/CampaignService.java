package com.yash.ngo.service;

import java.util.List;

import com.yash.ngo.domain.Campaign;

public interface CampaignService 
{
	List<Campaign> getAllCampaigns();

	Campaign getCampaignById(Integer id); 
	
	int getCountCampaign();
	
}
