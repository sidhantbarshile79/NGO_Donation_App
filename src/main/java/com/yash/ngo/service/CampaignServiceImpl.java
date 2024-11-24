package com.yash.ngo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yash.ngo.dao.CampaignDAO;
import com.yash.ngo.domain.Campaign;

@Service
public class CampaignServiceImpl implements CampaignService {
    
    @Autowired
    private CampaignDAO campaignDAO;

    @Override
    public List<Campaign> getAllCampaigns() {
        return campaignDAO.displayCampaign();
    }

	@Override
	public Campaign getCampaignById(Integer id) {
		// TODO Auto-generated method stub
		return campaignDAO.getCampaignById(id);
	}

	@Override
	public int getCountCampaign() {
		
		return campaignDAO.countCampaign();
	}
}

