package com.kh.FIFAOFFLINE.notice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.FIFAOFFLINE.notice.model.service.NoticeService;

@Controller
public class NoticeController {

	@Autowired
	private NoticeService nService;
}
