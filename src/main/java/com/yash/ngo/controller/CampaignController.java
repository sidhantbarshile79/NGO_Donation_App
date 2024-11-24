package com.yash.ngo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.yash.ngo.command.UserCommand;
import com.yash.ngo.domain.Campaign;
import com.yash.ngo.service.CampaignService;


@Controller
public class CampaignController {
    
    @Autowired
    private CampaignService campaignService;

    
		@RequestMapping(value = "/campaign")
		public String campaignForm(Model model) 
		{
			List<Campaign> campaigns = campaignService.getAllCampaigns();
			model.addAttribute("campaigns", campaigns);
		    return "campaign"; 
		}
		
		
		 @RequestMapping(value = "/doner/{id}") public String donerForm(Model
		 model, @PathVariable Integer id) 
		 {
			 Campaign cmp = campaignService.getCampaignById(id); model.addAttribute("campaigns", cmp);
		 return "doner"; 
		 }
		 
		
}




