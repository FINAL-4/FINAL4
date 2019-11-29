package com.kh.FIFAOFFLINE.match.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.FIFAOFFLINE.match.model.service.MatchService;

@Controller
public class MatchController {

	@Autowired
	private MatchService maService;
	
	@RequestMapping("goMatch.ma")
	public String goMatching() {
		return "match/createMatch";
	}
}