package com.kh.FIFAOFFLINE.notice.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.FIFAOFFLINE.notice.model.vo.Notice;

@Repository("nDao")
public class NoticeDao {

	@Autowired
	SqlSessionTemplate sqlSession;

	public ArrayList<Notice> selectList() {
		
		return (ArrayList)sqlSession.selectList("noticeMapper.selectList");
	}

	public Notice selectOne(int nId) {
		
		return sqlSession.selectOne("noticeMapper.selectOne", nId);
	}

	public int insertNotice(Notice n) {

		return sqlSession.insert("noticeMapper.insertNotice", n);
	}

	public int updateNotice(Notice n) {

		return sqlSession.update("noticeMapper.updateNotice", n);
	}

	public int deleteNotcie(int nId) {

		return sqlSession.delete("noticeMapper.deleteNotice", nId);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
