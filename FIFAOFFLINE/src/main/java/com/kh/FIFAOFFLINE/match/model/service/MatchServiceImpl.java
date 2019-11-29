package com.kh.FIFAOFFLINE.match.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.FIFAOFFLINE.match.model.dao.MatchDao;
import com.kh.FIFAOFFLINE.match.model.vo.Match;

@Service("maService")
public class MatchServiceImpl implements MatchService{

	@Autowired
	MatchDao maDao;

	@Override
	public int insertMatching(Match m) {
		
		return maDao.insertMatching(m);
	}
}
