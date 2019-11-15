package com.kh.FIFAOFFLINE.player.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.FIFAOFFLINE.player.model.service.PlayerService;

@Controller
public class PlayerController {

	@Autowired
	private PlayerService pService;
}
