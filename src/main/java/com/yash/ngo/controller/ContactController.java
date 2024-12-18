package com.yash.ngo.controller;

import com.yash.ngo.domain.Contact;
import com.yash.ngo.domain.Donation;
import com.yash.ngo.service.ContactService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class ContactController 
{

    @Autowired
    private ContactService contactService;

    @GetMapping("/contact") 
    public String showContactForm(Model model) 
    { 
    	model.addAttribute("contact", new Contact()); 
    	return "contact"; 
    } 
    
    @PostMapping("/contact") 
    public String submitContact(@ModelAttribute("contact") Contact contact, Model model) 
    { 
    	try 
    	{ 
    		contactService.saveContact(contact); 
    		model.addAttribute("successMessage", "Contact submitted successfully."); 
    		return "contact"; 
    	} 
    	catch (Exception e) 
    	{ 
    		model.addAttribute("errorMessage", "Failed to submit contact: " + e.getMessage()); 
    		return "contact"; 
    	}    
    }
    
    
    // message list
    @GetMapping("/message")
    public String listMessages(Model model) {
    	try {
    		List<Contact> contacts=contactService.findAll();
    		model.addAttribute("messageList", contacts);
    		return "message";
   	} catch(Exception e) 
    	{
    		model.addAttribute("error","Error fetching donors "+e.getMessage());
    		return "message";
    	}
    }
    
}



    
