package com.ITI.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ITI.model.LoginModel;
import com.ITI.model.TokenResponseModel;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Value("${authenticate}") private String authenticate;
	
	@RequestMapping("/navbar")
	public String navbar() {
		return "Navbar";
	}
	@RequestMapping("/navbaropen")
	public String navbaropen() {
		return "NavbarOpen";
	}
	@RequestMapping("/test")
	public String navtbar() {
		return "test";
	}
	
	@RequestMapping(value= {"/","/login"})
	public String home(Model model) {
		logger.info("/");
		model.addAttribute("bean", new LoginModel());
		return "Login";
	}
	
	@RequestMapping(value="/userLogin", method = RequestMethod.POST)
	public String userLogin(@Valid @ModelAttribute("bean") LoginModel bean,BindingResult bindingResult,Model model,
			RedirectAttributes redirectAttributes,HttpServletRequest httpServletRequest) {
		System.out.println("bean=>"+bean.toString());
		
		if (bindingResult.hasErrors()) { System.out.println("hasErros"); return "public/Login"; }
		 
		try {
			RestTemplate restTemplate = new RestTemplate();
			ResponseEntity<TokenResponseModel> response = restTemplate.postForEntity(authenticate, bean, TokenResponseModel.class);
			System.out.println("responseBody=>"+response.getBody());

			TokenResponseModel tokenResponseModel = new TokenResponseModel();
			if (response.getStatusCode().is2xxSuccessful()) {
				logger.info(response.getBody().getJwtToken());
				tokenResponseModel.setJwtToken(response.getBody().getJwtToken());
//				tokenResponseModel.setMenuItems(response.getBody().getMenuItems()); 
			}
			
			HttpSession session = httpServletRequest.getSession();
			session.setAttribute("jwtToken", tokenResponseModel.getJwtToken());
//			logger.info("list size=>"+tokenResponseModel.getMenuItems().size());
//			session.setAttribute("navList", tokenResponseModel.getMenuItems());
			
			return "userpages/LoginSuccess";
			
		}catch (RestClientException e) {
			// TODO Auto-generated catch block
			System.out.println("RestClientException"+e);
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("msg", "Invalid Credentials");
			return "redirect:/";
			
		}
				
	}
	@RequestMapping("/logout")
	public String logout(Model model) {
		return "redirect:/";
	}
	
	@RequestMapping("/loginSuccess")
	public String loginSuccess() {
		return "userpages/LoginSuccess";
	}
	
	 
	
	
	//ITI Profile
	@RequestMapping("/trade_display1")
	public String trade_display1() {
		return "trade_display1";
	}
	
	@RequestMapping("/AboutStrive")
	public String AboutStrive() {
		return "AboutStrive";
	}
	
	@RequestMapping("/strive")
	public String strive() {
		return "strive";
	}
	

}

