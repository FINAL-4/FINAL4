package com.kh.FIFAOFFLINE.team.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("tDao")
public class TeamDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
}
