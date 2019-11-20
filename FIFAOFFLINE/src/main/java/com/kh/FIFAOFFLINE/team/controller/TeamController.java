package com.kh.FIFAOFFLINE.team.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.FIFAOFFLINE.team.model.service.TeamService;

@Controller
public class TeamController {

	@Autowired
	private TeamService tService;
	
	@RequestMapping("tlist.tm")
	public String teamListView() {
		return "team/teamListView";
	}
}
