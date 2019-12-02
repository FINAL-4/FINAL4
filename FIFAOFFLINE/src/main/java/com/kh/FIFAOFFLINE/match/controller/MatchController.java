package com.kh.FIFAOFFLINE.match.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.FIFAOFFLINE.match.model.exception.MatchException;
import com.kh.FIFAOFFLINE.match.model.service.MatchService;
import com.kh.FIFAOFFLINE.match.model.vo.AppMatch;
import com.kh.FIFAOFFLINE.match.model.vo.Match;

@Controller
public class MatchController {

	@Autowired
	private MatchService maService;
	
	@RequestMapping("goMatch.ma")
	public ModelAndView goMatching(ModelAndView mv) {
		
		ArrayList<Match> mList = maService.getAllMatchList();
		
		mv.addObject("mList", mList);
		mv.setViewName("match/matchListView");
		
		
		return mv;
	}
	
	@RequestMapping("goCreateMatch.ma")
	public String goCreateMatching() {
		return "match/createMatch";
	}
	
	
	@RequestMapping("createMatch.ma")
	public String createMatching(HttpServletRequest request, Match m) {
		int result = maService.insertMatching(m);
		
		if(result == 1) {
			return "match/matchListView";			
		}else {
			throw new MatchException("매치 등록 실패 !");
		}
	}
	
	@RequestMapping("goMatchDetail.ma")
	public ModelAndView goMatchDetail(ModelAndView mv, int mId) {
		Match ma = maService.getMatch(mId);
		
		ArrayList<AppMatch> amList = maService.getAppMatchList(mId);
		
		mv.addObject("amList", amList);
		mv.addObject("match", ma);
		mv.setViewName("match/applyDetailMatching");
		
		System.out.println(amList);
		
		return mv;
	}
	
	@RequestMapping("appMatch.ma")
	public String appMatch(int mId, int tId) {
		
		HashMap<String, Integer> hm = new HashMap<String, Integer>();
		hm.put("mId", mId);
		hm.put("tId", tId);
		
		int result = maService.appMatch(hm);
		
		
		return "match/matchListView";
	}
	
	
	
}
