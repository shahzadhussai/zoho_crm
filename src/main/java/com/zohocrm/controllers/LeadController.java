package com.zohocrm.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zohocrm.entities.Contact;
import com.zohocrm.entities.Lead;
import com.zohocrm.service.ContactService;
import com.zohocrm.service.LeadService;

@Controller
public class LeadController {
	
	@Autowired
	private LeadService leadservice;
	
	@Autowired
	private ContactService contactService;
	
	@RequestMapping("/view")
	public String viewCreateLeadPage() {
		return "create_lead";
	}

	@RequestMapping("/saveLead")
	public String saveOneLead(@ModelAttribute("lead") Lead lead ,ModelMap model) {
		leadservice.saveLead(lead);
		model.addAttribute("lead", lead);
		return "lead_info";
	}
	
	@RequestMapping("/listallleads")
	public String listAllLeads(ModelMap model) {
		List<Lead> leads = leadservice.findAllLeads();
		model.addAttribute("leads",leads);
		return "leads_result";
	}
	
	@RequestMapping("/getLeadById")
	public String getLeadById(@RequestParam("id") long id, ModelMap model) {
		Lead lead = leadservice.getLead(id);
		model.addAttribute("lead", lead);
		return "lead_info";
	}
	
	@RequestMapping("convertLead")
	public String convertLead(@RequestParam("id") long id, ModelMap model) {
		Lead lead = leadservice.getLead(id);
		
		Contact contact = new Contact();
		contact.setFirstName(lead.getFirstName());
		contact.setLastName(lead.getLastName());
		contact.setEmail(lead.getEmail());
		contact.setLeadSource(lead.getLeadSource());
		contact.setMobile(lead.getMobile());
		
		contactService.saveContact(contact);
		
		leadservice.deleteLead(id);
		
		List<Contact> contacts = contactService.findAllContacts();
		model.addAttribute("contacts", contacts);
		
		return "contact_result";
	}
}
