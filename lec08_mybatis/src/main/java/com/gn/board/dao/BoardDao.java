package com.gn.board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.gn.board.vo.Board;

public class BoardDao {
	
	public int insertBoard(SqlSession session,Board vo) {
		return session.insert("boardMapper.insertBoard",vo);
	}
	
	public int deleteBoard(SqlSession session,int boardNo) {
		return session.delete("boardMapper.deleteBoard",boardNo);
	}
	
	public int updateBoard(SqlSession session,Board vo) {
		return session.update("boardMapper.updateBoard",vo);
	}
	
	public Board selectBoardOne(SqlSession session,int boardNo) {
		return session.selectOne("boardMapper.selectBoardOne",boardNo);
	}
	
	public List<Board> selectBoardList(SqlSession session, Board option){
		return session.selectList("boardMapper.selectBoardList",option);
	}
	
	public int selectBoardCount(SqlSession session, Board option) {
		return session.selectOne("boardMapper.selectBoardCount",option);
	}
}
