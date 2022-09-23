package com.team4.team4.controller;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.team4.team4.model.QnaVO;
import com.team4.team4.service.QnaService;



@Controller
public class QnAController {
	
	@Autowired
	QnaService qnaservice;
	
	
	@RequestMapping(value = "/QnA", method = RequestMethod.GET)
	public ModelAndView QnA(@RequestParam Map<String, Object> map) {
		List<QnaVO> list = qnaservice.list();
		ModelAndView mv = new ModelAndView();
		 mv.setViewName("/shop/QnA");
		 mv.addObject("list", list);
		return mv;
	}
	

}
