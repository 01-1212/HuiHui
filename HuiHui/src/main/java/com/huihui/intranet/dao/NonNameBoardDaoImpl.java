package com.huihui.intranet.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.huihui.intranet.domain.NonNameBoard;

@Repository
public class NonNameBoardDaoImpl implements NonNameBoardDao {

	private final String NAME_SPACE = "com.huihui.intranet.mapper.NonNameBoardMapper";
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<NonNameBoard> nonNameBoardList(int startRow, int num) {
		Map<String, Integer> params = new HashMap<String, Integer>();
		params.put("startRow", startRow);
		params.put("num", num);
		
		return sqlSession.selectList(NAME_SPACE + ".nonNameBoardList", params);
	}

	@Override
	public NonNameBoard getNonNameBoard(int nonNameNo) {
		return sqlSession.selectOne(NAME_SPACE + ".getNonName", nonNameNo);
	}

	@Override
	public void insertNonNameBoard(NonNameBoard nonNameBoard) {
		sqlSession.insert(NAME_SPACE + ".insertNonName", nonNameBoard);
	}

	@Override
	public boolean isPassCheck(int nonNameNo, String empId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void updateNonNameBoard(NonNameBoard nonNameBoard) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteNonNameBoard(int nonNameNo) {
		// TODO Auto-generated method stub

	}

	@Override
	public int getNonNameCount() {
		return sqlSession.selectOne(NAME_SPACE + ".getNonNameCount");
	}
}
