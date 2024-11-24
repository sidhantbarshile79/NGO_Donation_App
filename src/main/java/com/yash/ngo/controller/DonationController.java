package com.yash.ngo.controller;

import com.yash.ngo.command.DonationCommand;
import com.yash.ngo.domain.Campaign;
import com.yash.ngo.domain.Donation;
import com.yash.ngo.service.DonationService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class DonationController {
    
    @Autowired
    private DonationService donationService;
    
    
    
    
    @GetMapping(value = "/donation/{userId}")
    public String donationHistory(@PathVariable("userId") int userId, Model model) {
    	System.out.println("Donation start");
        try {
        	System.out.println("Donation start in try ");
            List<Donation> donations = donationService.getAllDonationHistoryList(userId);
            for(Donation d:donations) {
            	System.out.print(d+" ");
            }
            model.addAttribute("donations", donations);
            System.out.println(donations);
            // Add total donation amount
            double totalDonation = donations.stream()
                    .mapToDouble(Donation::getDonationAmount)
                    .sum();
            model.addAttribute("totalDonation", totalDonation);
            return "dashboard_user";
        } catch (Exception e) {
            model.addAttribute("error", "Error fetching donation history: " + e.getMessage());
            return "dashboard_user";
        }
    }
    
    //donationform
    @GetMapping("/user_dashboard/donation_form")
    public String showDonationForm(@RequestParam(value = "userId", required = false) Integer userId, Model model) {
        DonationCommand donationCommand = new DonationCommand();
        model.addAttribute("donationCommand", donationCommand);
        if (userId != null) {
            model.addAttribute("campaign", userId);
        }
        return "donation_form";
    }
    
    
    //donation.jsp
    @GetMapping("/donors")
    public String listDonations(Model model) {
    	try {
    		List<Donation> donations=donationService.findAll();
    		model.addAttribute("donationList", donations);
    		return "donors";
    	} catch(Exception e) {
    		model.addAttribute("error","Error fetching donors "+e.getMessage());
    		return "donors";
    	}
    }
    
    
    @GetMapping("/donation")
    public String listDonation(Model model) {
    	try {
    		List<Donation> donations=donationService.findAll();
    		model.addAttribute("donationList", donations);
    		return "donation";
    	} catch(Exception e) {
    		model.addAttribute("error","Error fetching donors "+e.getMessage());
    		return "user_dashboard";
    	}
    }
    
    
    @PostMapping("/donate")  // This should handle the donation form submission
    public String donate(@ModelAttribute("donationCommand") DonationCommand cmd, 
                         BindingResult result, RedirectAttributes redirectAttributes) 
    {
        if (result.hasErrors()) {
            return "donation_form"; // Return to the donation form if there are errors
        }

        try {
            Donation donation = new Donation();
            donation.setUserId(cmd.getUserId());
            donation.setDonationAmount(cmd.getDonationAmount());
            donation.setDonationDate(cmd.getDonationDate());
            donation.setAadhaarNumber(cmd.getAadhaarNumber());
            donation.setPanCardNumber(cmd.getPanCardNumber());
            donation.setDonationType(cmd.getDonationType());

            donationService.saveDonation(donation);

            // Add a success message
            redirectAttributes.addFlashAttribute("successMessage", "Donation successful!");
            return "redirect:/user_dashboard/"+cmd.getUserId(); // Redirect to the user dashboard
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("errorMessage", "Error saving donation: " + e.getMessage());
            return "redirect:/user_dashboard"; // Redirect to the dashboard with an error
        }
    }

    //user dashboard - for showing donation list 
    @RequestMapping(value = "/user_dashboard/{id}") 
    public String donerForm(Model model, @PathVariable Integer id) 
    { 
    	Donation dn=donationService.findById(id);
   		model.addAttribute("donation", dn);
        List<Donation> donations = donationService.getAllDonationHistoryList(id);
        model.addAttribute("donations", donations);
   		 return "dashboard_user"; 
   	}
    
        
}