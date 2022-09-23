package com.team4.team4.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team4.team4.model.QnaDAO;
import com.team4.team4.model.QnaVO;

@Service
public class QnaServiceImpl implements QnaService {
	
	@Autowired
	QnaDAO qnadao;

	@Override
	public List<QnaVO> list() {
		// TODO Auto-generated method stub
		return qnadao.list();
	}
}
