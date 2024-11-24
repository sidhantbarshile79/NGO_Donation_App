package com.yash.ngo.dao;

import java.util.List;


import com.yash.ngo.domain.Campaign;

public interface CampaignDAO 
{
	public List<Campaign> displayCampaign();

	public Campaign getCampaignById(Integer id);  
	
	public int countCampaign();
}
