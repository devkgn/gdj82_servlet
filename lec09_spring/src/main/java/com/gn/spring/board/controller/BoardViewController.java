package com.gn.spring.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.gn.spring.board.model.service.BoardService;
import com.gn.spring.board.model.vo.Board;

@Controller
public class BoardViewController {
	
	@Autowired
	BoardService boardService;
	
	@GetMapping("/board")
	public String selectBoardList() {
		List<Board> resultList = boardService.selectBoardList();
		System.out.println(resultList);
		// /WEB-INF/views/board/list.jsp
		return "/board/list";
	}

}
