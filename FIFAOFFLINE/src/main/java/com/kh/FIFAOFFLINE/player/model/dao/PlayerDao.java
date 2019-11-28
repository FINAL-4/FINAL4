package com.kh.FIFAOFFLINE.player.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.FIFAOFFLINE.player.model.vo.P_RECRUIT;

@Repository("pDao")
public class PlayerDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	// 용병 모집 등록 
	public int playTeamCreate(P_RECRUIT pr) {
		System.out.println("Dao test : " + pr);
		return sqlSession.insert("playerMapper.playTeamCreate", pr);
	}
}
