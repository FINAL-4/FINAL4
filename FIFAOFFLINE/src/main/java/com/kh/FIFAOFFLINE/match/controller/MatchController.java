package com.kh.FIFAOFFLINE.match.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.FIFAOFFLINE.match.model.exception.MatchException;
import com.kh.FIFAOFFLINE.match.model.service.MatchService;
import com.kh.FIFAOFFLINE.match.model.vo.AppMatch;
import com.kh.FIFAOFFLINE.match.model.vo.Match;
import com.kh.FIFAOFFLINE.match.model.vo.MatchFilter;

@Controller
public class MatchController {

	@Autowired
	private MatchService maService;
	
	@RequestMapping("goMatch.ma")
	public ModelAndView goMatching(ModelAndView mv) {
		
		ArrayList<Match> mList = maService.getAllMatchList();
		
		mv.addObject("mList", mList);
		mv.setViewName("match/matchListView");
		
		System.out.println("실행되었습니다 !!");
		
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
			return "forward:goMatch.ma";			
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
	
	@RequestMapping("showNewList.ma")
	public void showNewList(HttpServletResponse response, MatchFilter mf, String startDate, String endDate) throws JsonIOException, IOException {
		response.setContentType("application/json; charset=utf-8");
		
		if(startDate != "" && endDate != "") {
			mf.setsDate(Date.valueOf(startDate));
			mf.seteDate(Date.valueOf(endDate));
		}
		
		ArrayList<Match> mList = maService.getNewMatchList(mf);
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		
		if(mList != null) {
			gson.toJson(mList,response.getWriter());
		}else{
			gson.toJson("none",response.getWriter());
		}
	}
	
}
