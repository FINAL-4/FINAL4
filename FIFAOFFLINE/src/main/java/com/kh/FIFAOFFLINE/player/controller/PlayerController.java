package com.kh.FIFAOFFLINE.player.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.FIFAOFFLINE.player.model.service.PlayerService;

@Controller
public class PlayerController {

	@Autowired
	private PlayerService pService;
	
	@RequestMapping("playerMain.ma")
	public String goMatching() {
		return "player/applyDetailPlayer";
	}
}
