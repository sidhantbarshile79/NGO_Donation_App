package com.yash.ngo.controller;

import com.yash.ngo.command.DonationCommand;
import com.yash.ngo.domain.Donation;
import com.yash.ngo.service.DonationService;
import com.yash.ngo.service.PaymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import java.util.Date;
import java.util.List;
import java.util.logging.Logger;

@Controller
public class DonationController {

    private static final Logger logger = Logger.getLogger(DonationController.class.getName());

    @Autowired
    private DonationService donationService;

    @Autowired
    private PaymentService paymentService;

    
    @GetMapping(value = "/donation/{userId}")
    public String donationHistory(@PathVariable("userId") int userId, Model model) {
        try {
            // Fetch donation history for the specific user
            List<Donation> donations = donationService.getAllDonationHistoryList(userId);
            
            // Add donations to the model
            model.addAttribute("donations", donations);
            
            // Calculate total donation amount
            double totalDonation = donations.stream()
                    .mapToDouble(Donation::getDonationAmount)
                    .sum();
            model.addAttribute("totalDonation", totalDonation);
            
            // Add user ID to the model if needed
            model.addAttribute("userId", userId);
            
            // Return to user dashboard
            return "dashboard_user";
        } catch (Exception e) {
            // Handle any errors
            model.addAttribute("error", "Error fetching donation history: " + e.getMessage());
            return "dashboard_user";
        }
    }
    
    
    

    @GetMapping("/user_dashboard/donation_form")
    public String showDonationForm(@RequestParam(value = "userId", required = false) Integer userId, Model model) 
    {
        DonationCommand donationCommand = new DonationCommand();
        model.addAttribute("donationCommand", donationCommand);
        if (userId != null) {
            model.addAttribute("campaign", userId);
        }
        return "donation_form";
    }
    

    @PostMapping("/donate")
    public String donate(
            @Valid @ModelAttribute("donationCommand") DonationCommand donationCommand,
            BindingResult result,
            HttpSession session,
            RedirectAttributes redirectAttributes) {

        Integer userId = (Integer) session.getAttribute("userId");
        if (userId == null) {
            redirectAttributes.addFlashAttribute("err", "Please log in to make a donation");
            return "redirect:/login";
        }

        if (donationCommand.getUserId() == null) {
            donationCommand.setUserId(userId);
        }

        if (result.hasErrors()) {
            result.getAllErrors().forEach(error -> System.out.println(error.getDefaultMessage()));
            return "donation_form";
        }

        try {
            Donation donation = new Donation();
            donation.setUserId(donationCommand.getUserId());
            donation.setDonationAmount(donationCommand.getDonationAmount());
            donation.setDonationDate(donationCommand.getDonationDate());
            donation.setAadhaarNumber(donationCommand.getAadhaarNumber());
            donation.setPanCardNumber(donationCommand.getPanCardNumber());
            donation.setDonationType(donationCommand.getDonationType());
            donation.setDonationReason(donationCommand.getDonationReason());

            // Log donation details before saving
            System.out.println("Saving donation: " + donation);

            donationService.saveDonation(donation);

            // Store donation details in session for payment creation
            session.setAttribute("pendingDonation", donation);

            // Redirect to payment creation
            redirectAttributes.addAttribute("amount", donation.getDonationAmount());
            return "redirect:/create-order";

        } catch (Exception e) {
            e.printStackTrace();
            redirectAttributes.addFlashAttribute("err", "Error processing donation: " + e.getMessage());
            return "redirect:/donation_form";
        }
    }

    
    
    
    // donation list
  @GetMapping("/donation")
  public String listDonation(Model model) 
  {
  	try 
  	{
  		List<Donation> donations=donationService.findAll();
  		model.addAttribute("donationList", donations);
  		return "donation";
  	} catch(Exception e) 
  	{
  		model.addAttribute("error","Error fetching donors "+e.getMessage());
  		return "user_dashboard";
  	}
  }
    
    
  	// donor list
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