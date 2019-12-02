package com.kh.FIFAOFFLINE.match.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.FIFAOFFLINE.match.model.dao.MatchDao;
import com.kh.FIFAOFFLINE.match.model.vo.AppMatch;
import com.kh.FIFAOFFLINE.match.model.vo.Match;

@Service("maService")
public class MatchServiceImpl implements MatchService{

	@Autowired
	MatchDao maDao;

	@Override
	public int insertMatching(Match m) {
		
		return maDao.insertMatching(m);
	}

	@Override
	public ArrayList<Match> getAllMatchList() {
		
		return maDao.getAllMatchList();
	}

	@Override
	public Match getMatch(int mId) {
		
		return maDao.getMatch(mId);
	}

	@Override
	public ArrayList<AppMatch> getAppMatchList(int mId) {
		
		return maDao.getAppMatchList(mId);
	}



	@Override
	public int appMatch(HashMap<String, Integer> hm) {
		
		return maDao.appMatch(hm);
	}




}
