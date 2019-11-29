package com.kh.FIFAOFFLINE.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
}