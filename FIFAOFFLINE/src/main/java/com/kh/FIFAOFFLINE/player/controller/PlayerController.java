package com.kh.FIFAOFFLINE.player.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.FIFAOFFLINE.player.model.service.PlayerService;

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
}
