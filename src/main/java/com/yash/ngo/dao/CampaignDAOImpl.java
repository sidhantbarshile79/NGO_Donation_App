package com.yash.ngo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.yash.ngo.domain.Campaign;
import com.yash.ngo.rm.CampaignRowMapper;

@Repository
public class CampaignDAOImpl extends BaseDAO implements CampaignDAO
{
	@Override
	public List<Campaign> displayCampaign()
	{

		String sql = "SELECT campaignId, title, description, fundraise, target_amount, start_date, end_date FROM campaign";
        return getJdbcTemplate().query(sql, new CampaignRowMapper());
	}

	@Override
	public Campaign getCampaignById(Integer id) {
		String sql="SELECT campaignId, title, description, fundraise, target_amount, start_date, end_date"
                +" FROM campaign WHERE campaignId=?";
        Campaign cmp=getJdbcTemplate().queryForObject(sql,new CampaignRowMapper(), id);
        return cmp;
	}

	@Override
	public int countCampaign() {
		String sql = "SELECT COUNT(*) FROM campaign";
        return getJdbcTemplate().queryForObject(sql, Integer.class);
	}

}
