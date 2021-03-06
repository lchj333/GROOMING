package com.grooming.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.grooming.dao.AdminDAO;
import com.grooming.dao.DesignerDAO;
import com.grooming.dao.LoginDAO;
import com.grooming.dto.AdminDTO;
import com.grooming.dto.DesignerDTO;
import com.grooming.dto.LoginDTO;
import com.grooming.dto.MemberDTO;
import com.grooming.service.SecurityService;

@Controller
public class LoginController {

	@Inject
	LoginDAO dao;
	@Inject
	DesignerDAO dd;
	@Inject
	AdminDAO ad;
	
	@RequestMapping(value={ "/login", "/adlogin" }, method = RequestMethod.GET)
	public String loginGet(@ModelAttribute("loginDto") MemberDTO memberDto,
						   @ModelAttribute("adminDto") AdminDTO adminDto) {
		return "login/grooming_login_form";
	}
	
	
	@RequestMapping(value={ "/login", "/adlogin" }, method = RequestMethod.POST)
	public ModelAndView loginCheck(@ModelAttribute MemberDTO memberDto, 
								   @ModelAttribute DesignerDTO designerDto,
								   @ModelAttribute AdminDTO adminDto,
								   HttpSession session, HttpServletRequest req,
								   Model model,HttpServletResponse resp) throws IOException {
		
		SecurityService securityService = new SecurityService();
		
		String mb_id = req.getParameter("mb_id");
		String pw = req.getParameter("mb_pw");
		
		adminDto.setAd_id(mb_id);
		adminDto.setAd_pw(pw);
		
		String mb_pw = securityService.encryptSHA256(pw);
		
		
		memberDto.setMb_pw(mb_pw);
		designerDto.setMb_id(mb_id);
		
		
		int check = dao.loginCheck(memberDto);
		int adcheck = ad.adminCheck(adminDto);
		
		ModelAndView mav = new ModelAndView();
		
		
		if(check ==1) {
			
			session.setAttribute("login", dao.loginOk(memberDto));
			session.setAttribute("dInfo", dd.designerInfo(designerDto));
			
			mav.setViewName("main/grooming_main");
			
		}else if (check == 0 && adcheck == 0) {
			
			
			session.setAttribute("login", null);
			
			resp.setContentType("text/html; charset=UTF-8");
	        PrintWriter out_email = resp.getWriter();
	        out_email.println("<script>alert('일치하는 정보가 없습니다.');</script>");
	        out_email.flush();
			mav.setViewName("login/grooming_login_form");
			
		}
		
		if(adcheck == 1 ) {
			
			session.setAttribute("admin", ad.adminloginOk(adminDto));
			
			mav.setViewName("mypage/grooming_admin_management");
			
		}
		
		
		return mav;
	}
	

	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		
		session.invalidate();
		
		return "main/grooming_main";
	}
	
}
