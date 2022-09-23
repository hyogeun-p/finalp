package com.team4.team4.model;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;



@Repository
public class QnaDAOImpl implements QnaDAO{
	
	@Inject
	SqlSessionTemplate SqlSessionTemplate;
	
	@Override
	public List<QnaVO> list() {
		// TODO Auto-generated method stub
		return SqlSessionTemplate.selectList("QnAMapper.QnA");
	}
	
}
