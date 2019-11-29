package com.kh.FIFAOFFLINE.match.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.FIFAOFFLINE.match.model.vo.Match;

@Repository("maDao")
public class MatchDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int insertMatching(Match m) {
		
		return sqlSession.insert("matchMapper.insertMatching", m);
	}
}
