package com.huihui.intranet.service;

import java.util.List;
import java.util.Map;

import com.huihui.intranet.domain.NonNameBoard;

public interface NonNameBoardService {
	public abstract Map<String, Object> nonNameBoardList(int pageNum);
	public abstract NonNameBoard getNonNameBoard(int nonNameNo);
	public abstract void insertNonNameBoard(NonNameBoard nonNameBoard);
	public boolean isPassCheck(int nonNameNo, String empId);
	public abstract void updateNonNameBoard(NonNameBoard nonNameBoard);
	public abstract void deleteNonNameBoard(int nonNameNo);
}
