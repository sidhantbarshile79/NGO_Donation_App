package com.yash.ngo.controller;

import com.yash.ngo.domain.Contact;
import com.yash.ngo.service.ContactService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yash.ngo.command.ContactCommand;
@Controller
public class ContactController {
    @Autowired
    private ContactService contactService;

    @GetMapping("/contact")
    public String showContactForm(Model model) {
        model.addAttribute("command", new ContactCommand());
        return "contact";
    }

    @PostMapping("/contact")
    public String submitContactForm(@ModelAttribute("command") ContactCommand cmd, Model model) {
        try {
            Contact contact = cmd.getContact();
            contactService.saveContact(contact);
            model.addAttribute("successMessage", "Contact submitted successfully!");
            return "contact";
        } catch (Exception e) {
            model.addAttribute("errorMessage", "Failed to submit contact. Please try again.");
            return "contact";
        }
    }
}