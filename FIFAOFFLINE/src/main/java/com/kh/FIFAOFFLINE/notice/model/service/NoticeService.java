package com.kh.FIFAOFFLINE.notice.model.service;

import java.util.ArrayList;

import com.kh.FIFAOFFLINE.notice.model.vo.Notice;

public interface NoticeService {
	/*
	 * 1. 공지사항 전체 조회
	 */
	public ArrayList<Notice> selectList();
	
	/*
	 * 2. 공지사항 등록
	 */
	public int insertNotice(Notice n);
	
	/*
	 * 3. 공지사항 상세 조회
	 */
	public Notice selectOne(int nId);
	
	/*
	 * 4. 공지사항 수정
	 */
	public int updateNotice(Notice n);
	
	/*
	 * 5. 공지사항 삭제
	 */
	public int deleteNotice(int nId);
}
