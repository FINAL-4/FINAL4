package com.kh.FIFAOFFLINE.notice.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.FIFAOFFLINE.notice.model.dao.NoticeDao;

@Service("nService")
public class NoticeServiceImpl implements NoticeService{

	@Autowired
	private NoticeDao nDao;
}
