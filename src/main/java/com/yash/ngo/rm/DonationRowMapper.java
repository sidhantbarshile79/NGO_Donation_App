package com.yash.ngo.rm;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.yash.ngo.domain.Donation;

public class DonationRowMapper implements RowMapper<Donation> {
    @Override
    public Donation mapRow(ResultSet rs, int rowNum) throws SQLException {
        Donation donation = new Donation();
        donation.setDonationId(rs.getInt("donationId"));
        donation.setUserId(rs.getInt("userId"));
        donation.setDonationAmount(rs.getDouble("donationAmount"));
        donation.setDonationDate(rs.getDate("donationDate"));
        donation.setAadhaarNumber(rs.getString("aadhaarNumber"));
        donation.setPanCardNumber(rs.getString("panCardNumber"));
        donation.setDonationType(rs.getString("donationType"));
        return donation;
    }
}
