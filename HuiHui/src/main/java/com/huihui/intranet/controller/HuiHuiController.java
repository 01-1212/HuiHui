package com.huihui.intranet.controller;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.huihui.intranet.domain.NonNameBoard;
import com.huihui.intranet.service.NonNameBoardService;


@Controller
public class HuiHuiController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "HuiHui";
	}
	
	 /* 취합 시작 */
	private NonNameBoardService nonNameBoardService;
	@Autowired
	public void setNonNameBoardService(NonNameBoardService nonNameBoardService) {
		this.nonNameBoardService = nonNameBoardService;
	}
	
	@RequestMapping(value= {"/nonNameBoardList"}, method=RequestMethod.GET)
	public String NonNameBoardList(Model model,
			@RequestParam(value="pageNum", required=false, defaultValue="1")int pageNum) {
		Map<String, Object> modelMap = nonNameBoardService.nonNameBoardList(pageNum);
		
		Date now = new Date();
		
		model.addAttribute("now", now);
		model.addAllAttributes(modelMap);
		return "NonNameBoard/nonNameBoardList";
	}
	
	@RequestMapping(value= {"/nonNameDetail"})
	public String nonNameDetail(Model model, int nonNameNo) {
		NonNameBoard nonNameBoard = nonNameBoardService.getNonNameBoard(nonNameNo);
		Date now = new Date();
		
		model.addAttribute("now", now);
		model.addAttribute("nonNameBoard", nonNameBoard);
		return "NonNameBoard/nonNameDetail";
	}
	
	@RequestMapping(value="/nonNameWriteProcess", method=RequestMethod.POST)
	public String insertNonName(NonNameBoard nonNameBoard) {
		nonNameBoardService.insertNonNameBoard(nonNameBoard);
		
		System.out.println("컨트롤 인설트 : ");
		return "redirect:nonNameBoardList";
	}
}
