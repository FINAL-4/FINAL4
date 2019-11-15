package com.kh.FIFAOFFLINE.match.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("maDao")
public class MatchDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
}
