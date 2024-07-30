package com.gn.board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.gn.board.vo.Board;

public class BoardDao {
	
	public int updateBoard(SqlSession session,Board vo) {
		return session.update("boardMapper.updateBoard",vo);
	}
	
	public Board selectBoardOne(SqlSession session,int boardNo) {
		return session.selectOne("boardMapper.selectBoardOne",boardNo);
	}
	
	public List<Board> selectBoardList(SqlSession session, Board option){
		return session.selectList("boardMapper.selectBoardList",option);
	}
	
	public int selectBoardCount(SqlSession session) {
		return session.selectOne("boardMapper.selectBoardCount");
	}
}
