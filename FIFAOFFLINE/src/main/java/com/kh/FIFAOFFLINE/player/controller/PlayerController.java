package com.kh.FIFAOFFLINE.player.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.FIFAOFFLINE.player.model.exception.PlayerException;
import com.kh.FIFAOFFLINE.player.model.service.PlayerService;
import com.kh.FIFAOFFLINE.player.model.vo.P_RECRUIT;

@Controller
public class PlayerController {

	@Autowired
	private PlayerService pService;
	
	@RequestMapping("playMain.pl")
	public String playMain() {
		return "player/listPlayer";
	}
	
	@RequestMapping("playList.pl")
	public String playList() {
		return "player/applyDetailPlayer";
	}
	
	@RequestMapping("playTeamCreate.pl")
	public String playTeamCreate() {
		return "player/createTeamPlayer";
	}
	
	@RequestMapping("playPersonCreate.pl")
	public String playPersonCreate() {
		return "player/createPersonPlayer";
	}
	
	// 용병 모집 등록 
	@RequestMapping(value = "playCreate.pl", method = RequestMethod.POST)
	public String playTeamCreate(HttpServletRequest request, P_RECRUIT pr) {
		/* 
		System.out.println("마감 인원 : "+request.getParameter("deadline"));
		System.out.println("참가비 : "+request.getParameter("rMoney"));
		System.out.println("========================================");
		System.out.println("장소 : "+request.getParameter("rPlace"));
		System.out.println("X좌표 : "+request.getParameter("rPlaceX"));
		System.out.println("Y좌표 : "+request.getParameter("rPlaceY"));
		System.out.println("========================================");
		System.out.println("날짜 : "+request.getParameter("rDay"));
		System.out.println("시작시간 : "+request.getParameter("rsHour"));
		System.out.println("시작분 : "+request.getParameter("rsMin"));
		System.out.println("종료시각 : "+request.getParameter("rfHour"));
		System.out.println("종료분 : "+request.getParameter("rfMin"));
		System.out.println("========================================");
		System.out.println("남기는말 : "+request.getParameter("rContent"));
		*/
		
		int result = pService.playTeamCreate(pr); 
		
		// System.out.println("Controller test : " + result);
		if(result > 0) {
			return "redirect:play/listPlayer";			
		} else {
			throw new PlayerException("용병 모집 등록 실패");
		}
	}
}
