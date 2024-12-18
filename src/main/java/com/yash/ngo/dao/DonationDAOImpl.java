package com.yash.ngo.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import com.yash.ngo.domain.Donation;
import com.yash.ngo.rm.DonationRowMapper;

@Repository
public class DonationDAOImpl extends BaseDAO implements DonationDAO {

    @Override
    public void save(Donation d) {
        String sql = "INSERT INTO donation(userId, donationAmount, donationDate, aadhaarNumber, panCardNumber, donationType,donationReason) "
                   + "VALUES(:userId, :donationAmount, :donationDate, :aadhaarNumber, :panCardNumber, :donationType, :donationReason)";

        Map<String, Object> m = new HashMap<>();
        m.put("userId", d.getUserId());
        m.put("donationAmount", d.getDonationAmount());
        m.put("donationDate", d.getDonationDate());
        m.put("aadhaarNumber", d.getAadhaarNumber());
        m.put("panCardNumber", d.getPanCardNumber());
        m.put("donationType", d.getDonationType());
        m.put("donationReason", d.getDonationReason());

        KeyHolder kh = new GeneratedKeyHolder();
        SqlParameterSource ps = new MapSqlParameterSource(m);

        super.getNamedParameterJdbcTemplate().update(sql, ps, kh);
        Integer donationId = kh.getKey().intValue();
        d.setDonationId(donationId);
    }

    @Override
    public void update(Donation d) {
        String sql = "UPDATE donation SET userId=:userId, donationAmount=:donationAmount, donationDate=:donationDate, "
                   + "aadhaarNumber=:aadhaarNumber, panCardNumber=:panCardNumber, donationType=:donationType , donationReason=:donationReason"
                   + "WHERE donationId=:donationId";

        Map<String, Object> m = new HashMap<>();
        m.put("userId", d.getUserId());
        m.put("donationAmount", d.getDonationAmount());
        m.put("donationDate", d.getDonationDate());
        m.put("aadhaarNumber", d.getAadhaarNumber());
        m.put("panCardNumber", d.getPanCardNumber());
        m.put("donationType", d.getDonationType());
        m.put("donationReason", d.getDonationReason());
        m.put("donationId", d.getDonationId());

        getNamedParameterJdbcTemplate().update(sql, m);
    }

    @Override
    public void delete(Donation d) {
        this.delete(d.getDonationId());
    }

    @Override
    public void delete(Integer donationId) {
        String sql = "DELETE FROM donation WHERE donationId=?";
        getJdbcTemplate().update(sql, donationId);
    }

    @Override
    public Donation findById(Integer donationId) {
        String sql = "SELECT d.donationId, d.userId, d.donationAmount, d.donationDate, d.aadhaarNumber, d.panCardNumber, d.donationType, d.donationReason "
                   + "FROM donation d WHERE d.donationId=?";
        return getJdbcTemplate().queryForObject(sql, new DonationRowMapper(), donationId);
    }

    @Override
    public List<Donation> findAll() {
        String sql = "SELECT d.donationId, d.userId, d.donationAmount, d.donationDate, d.aadhaarNumber, d.panCardNumber, d.donationType, d.donationReason, u.name " +
                     "FROM donation d " +
                     "INNER JOIN user u ON d.userId = u.userId";

        return getJdbcTemplate().query(sql, new DonationRowMapper());
    }
    
    @Override
    public List<Donation> findByProperty(String propName, Object propValue) {
        String sql = "SELECT d.donationId, d.userId, d.donationAmount, d.donationDate, d.aadhaarNumber, d.panCardNumber, d.donationType, d.donationReason "
                   + "FROM donation d WHERE " + propName + " = ?";
        return getJdbcTemplate().query(sql, new DonationRowMapper(), propValue);
    }

    @Override
    public List<Donation> displayDonationHistoryList(int userId) {
        String sql = "SELECT d.donationId, d.userId, d.donationAmount, d.donationDate, " +
                     "d.aadhaarNumber, d.panCardNumber, d.donationType, d.donationReason, u.name " +
                     "FROM donation d " +
                     "INNER JOIN user u ON d.userId = u.userId " +
                     "WHERE d.userId = ?";
        return getJdbcTemplate().query(sql, new DonationRowMapper(), userId);
    }

    @Override
    public int donationCount() {
        String sql = "SELECT SUM(donationAmount) FROM donation";
        return getJdbcTemplate().queryForObject(sql, Integer.class);
    }
}
