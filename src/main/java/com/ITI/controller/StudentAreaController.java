package com.ITI.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;


@Controller
@SessionAttributes("currentPage")
public class StudentAreaController {
	
	@RequestMapping("/studentRegStep1")
	public String studentRegStep1(HttpServletRequest request) {
		HttpSession session=request.getSession();
		session.setAttribute("pageaccess", true);
		return "/student/studentRegStep1";
	}
	@RequestMapping("/studentRegPage")
	public String studentRegPage( ) {
		return "/student/studentRegPage";
	}
//	@RequestMapping("/studentRegPage")
//	public String studentRegPage(HttpServletRequest request) {
//		HttpSession session=request.getSession();
//		String pageacess=""+session.getAttribute("pageaccess");
//		session.setAttribute("pageaccess", false);
//		if(pageacess.equals("true")) {
//		return "/student/studentRegPage";
//		}
//		else {
//			return "/student/studentRegStep1";
//		}
//	}
	@RequestMapping("/saveStdReg")
	public String saveStdReg() {
		return "/student/studentRegSuccessPage";
	}
	@RequestMapping("/applyForITIStepOne")
	public String applyForITIStepOne() {
		return "/student/applyForITIStepOne";
	}
	@RequestMapping("/applyForITIPage")
	public String applyForITIPage() {
		return "/student/applyForITIPage";
	}
	@RequestMapping("/saveStdApplication")
	public String saveStdApplication() {
		return "/student/saveStdApplicationSuccess";
	}
	@RequestMapping("/stdEditDetailsPageStep1")
	public String editStdRegDetails() {
		return "/student/stdEditDetailsPageStep1";
	}
	@RequestMapping("/stdEditDetailsPage")
	public String stdEditDetailsPage() {
		return "/student/stdEditDetailsPage";
	}
	@RequestMapping("/updateStdReg")
	public String updateStdReg() {
		return "/student/stdEditDetailsPageSuccess";
	}
	@RequestMapping("/stdForgotRegid")
	public String stdForgotRegid() {
		return "/student/stdForgotRegidStep1";
	}
	@RequestMapping("/stdForgotRegidSuccess")
	public String stdForgotRegidSuccess() {
		return "/student/stdForgotRegidSuccess";
	}

}
