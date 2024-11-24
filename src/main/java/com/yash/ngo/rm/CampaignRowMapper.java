package com.yash.ngo.rm;


import com.yash.ngo.domain.Campaign;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CampaignRowMapper implements RowMapper<Campaign> {
    @Override
    public Campaign mapRow(ResultSet rs, int i) throws SQLException {
        Campaign cmp = new Campaign();
        
        cmp.setCampaignId(rs.getInt("campaignId"));
        cmp.setTitle(rs.getString("title"));
        cmp.setDescription(rs.getString("description"));
        cmp.setFundRaise(rs.getDouble("fundRaise"));
        cmp.setTarget_amount(rs.getDouble("target_amount"));
        cmp.setStart_date(rs.getDate("start_date"));
        cmp.setEnd_date(rs.getDate("end_date"));
        return cmp;
    }
}