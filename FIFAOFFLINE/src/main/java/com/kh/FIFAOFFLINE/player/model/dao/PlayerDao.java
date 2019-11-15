package com.kh.FIFAOFFLINE.player.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("pDao")
public class PlayerDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
}
