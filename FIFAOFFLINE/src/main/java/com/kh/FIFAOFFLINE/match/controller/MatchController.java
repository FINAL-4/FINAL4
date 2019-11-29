package com.kh.FIFAOFFLINE.match.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.FIFAOFFLINE.match.model.exception.MatchException;
import com.kh.FIFAOFFLINE.match.model.service.MatchService;
import com.kh.FIFAOFFLINE.match.model.vo.Match;

@Controller
public class MatchController {

	@Autowired
	private MatchService maService;
	
	@RequestMapping("goMatch.ma")
	public String goMatching() {
		return "match/matchListView";
	}
	
	@RequestMapping("goCreateMatch.ma")
	public String goCreateMatching() {
		return "match/createMatch";
	}
	
	@RequestMapping("createMatch.ma")
	public String createMatching(HttpServletRequest request, Match m) {
		int result = maService.insertMatching(m);
		
		if(result == 1) {
			return "match/createMatch";			
		}else {
			throw new MatchException("매치 등록 실패 !");
		}
		
		
	}
}
