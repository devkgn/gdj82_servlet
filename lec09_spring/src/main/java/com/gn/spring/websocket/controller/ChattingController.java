package com.gn.spring.websocket.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.gn.spring.member.model.service.MemberService;
import com.gn.spring.member.model.vo.Member;

@Controller
public class ChattingController {
	
	@Autowired
	MemberService memberService;
	
	@GetMapping("/chattingPage/{sender_no}")
	public String chattingPage(@PathVariable("sender_no") int sender_no) {
		//return "chat/list";
		List<Member> resultList = memberService.selectMemberNotSender(sender_no);
		return "chat/selectUser";
	}
	
}
