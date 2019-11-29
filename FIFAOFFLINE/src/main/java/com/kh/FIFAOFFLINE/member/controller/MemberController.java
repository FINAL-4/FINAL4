package com.kh.FIFAOFFLINE.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.FIFAOFFLINE.member.model.exception.MemberException;
import com.kh.FIFAOFFLINE.member.model.service.MemberService;
import com.kh.FIFAOFFLINE.member.model.vo.Member;

@Controller
public class MemberController {

	@Autowired
	private MemberService mService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@RequestMapping("goJoin.me")
	public String goJoinMember() {
		
		return "member/memberJoinForm";
	}
	@RequestMapping("find.me")
	public String findIP() {
	return "member/findIdPwd";
	}
	
	@RequestMapping(value = "login.me", method = RequestMethod.POST)
	public String memberLogin(Member m,HttpSession session) {
		System.out.println(m);
		
		
		Member loginUser=mService.loginMember(m);
		System.out.println(loginUser);
		if(loginUser !=null) {
			session.setAttribute("loginUser", loginUser);
		}else {
			throw new  MemberException("로그인실패");
		}
		
		return "home";
	}
	@RequestMapping(value = "logout.me",method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "home";
	}
	@RequestMapping("join.me")
	public String memberInsert(Member m,Model model,
			@RequestParam(value="phone1") String phone1,
			@RequestParam("phone2") String phone2,
			@RequestParam("phone3") String phone3,
			@RequestParam("emilId") String emailId,
			@RequestParam("email2") String email2) {
		System.out.println(m);
		  m.setPhone(phone1+"-"+phone2+"-"+phone3);
		  m.setUserEmail(emailId+"@"+email2);
		 

/*
 * String phone = request.getParameter("phone1") +"-"+request.getParameter("phone2") +"-"+request.getParameter("phone3");
 * String email = request.getParameter("emailId") + "@" + request.getParameter("email2");
 */
		int result = mService.insertMember(m);
		
		if(result > 0) {
			return "home";
		}else {
			throw new MemberException("회원 가입 실패!!");
		}
		
		
		
	}
	
}