package com.yash.ngo.test;

import com.yash.ngo.config.SpringRootConfig;
import com.yash.ngo.dao.DonationDAO;
import com.yash.ngo.domain.Donation;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import java.util.Date;

public class TestDonationDAO {
    public static void main(String[] args) {
        ApplicationContext ctx = new AnnotationConfigApplicationContext(SpringRootConfig.class);
        DonationDAO donationDAO = ctx.getBean(DonationDAO.class);

        Donation d = new Donation();
        d.setUserId(15);
        d.setDonationAmount(100.00);
        d.setDonationDate(new Date());
        d.setAadhaarNumber("123456789012");
        d.setPanCardNumber("ABCDE1234F");
        d.setDonationType("EDUCATION");
        d.setDonationReason("Support Education");

        donationDAO.save(d);
        System.out.println("Donation data saved successfully with ID: " + d.getDonationId());
    }
}
