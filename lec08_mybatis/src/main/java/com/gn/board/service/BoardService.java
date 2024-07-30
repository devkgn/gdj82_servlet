package com.gn.board.service;

import static com.gn.common.SessionTemplate.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.gn.board.dao.BoardDao;
import com.gn.board.vo.Board;

public class BoardService {
	
	public int insertBoard(Board vo) {
		SqlSession session = getSqlSession();
		int result = new BoardDao().insertBoard(session,vo);
		session.close();
		return result;
	}
	
	public int deleteBoard(int boardNo) {
		SqlSession session = getSqlSession();
		int result = new BoardDao().deleteBoard(session,boardNo);
		session.close();
		return result;
	}
	
	public int updateBoard(Board vo) {
		SqlSession session = getSqlSession();
		int result = new BoardDao().updateBoard(session,vo);
		session.close();
		return result;
	}
	
	public Board selectBoardOne(int boardNo) {
		SqlSession session = getSqlSession();
		Board detail = new BoardDao().selectBoardOne(session,boardNo);
		session.close();
		return detail;	
	}
	
	public List<Board> selectBoardList(Board option){
		SqlSession session = getSqlSession();
		List<Board> resultList = new BoardDao().selectBoardList(session,option);
		session.close();
		return resultList;
	}
	
	public int selectBoardCount(Board option) {
		SqlSession session = getSqlSession();
		int count = new BoardDao().selectBoardCount(session,option);
		session.close();
		return count;
	}

}
