package com.team4.team4.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;


public interface QnaDAO {

	List<QnaVO> list();

	

}
