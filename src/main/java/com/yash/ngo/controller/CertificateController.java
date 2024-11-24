package com.yash.ngo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CertificateController {

    @RequestMapping(value = "/certificate", method = RequestMethod.GET)
    public String generateCertificate(@RequestParam("donorName") String donorName,
                                      @RequestParam("donationAmount") double donationAmount,
                                      @RequestParam("donationDate") String donationDate,
                                      @RequestParam("donationMessage") String donationMessage,
                                      Model model) {
        // Add data to the model
        model.addAttribute("donorName", donorName);
        model.addAttribute("donationAmount", donationAmount);
        model.addAttribute("donationDate", donationDate);
        model.addAttribute("donationMessage", donationMessage);

        // Return the name of the view to render
        return "certificate"; // Ensure certificate.jsp exists in /WEB-INF/views/
    }
}