package com.kh.FIFAOFFLINE.player.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.FIFAOFFLINE.player.model.dao.PlayerDao;

@Service("pService")
public class PlayerServiceImpl implements PlayerService{

	@Autowired
	private PlayerDao pDao;
}
