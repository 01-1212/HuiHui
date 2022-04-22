package com.huihui.intranet.dao;

import java.util.List;

import com.huihui.intranet.domain.NonNameBoard;

public interface NonNameBoardDao {
	public abstract List<NonNameBoard> nonNameBoardList(int startRow, int num);
	public abstract NonNameBoard getNonNameBoard(int nonNameNo);
	public abstract void insertNonNameBoard(NonNameBoard nonNameBoard);
	public boolean isPassCheck(int nonNameNo, String empId);
	public abstract void updateNonNameBoard(NonNameBoard nonNameBoard);
	public abstract void deleteNonNameBoard(int nonNameNo);
	public abstract int getNonNameCount();
}
