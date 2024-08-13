package com.gn.spring.chat.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ChatViewController {
	
	@GetMapping("/chat")
	public String selectChatRoom() {
		return "chat/list";
	}

}
