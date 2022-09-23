package com.team4.team4.model;

import java.util.Date;

public class QnaVO {
	
	private int qna_id;	//qna 아이디
	private String member_id;	// member 아이디
	private String q_category;	// category 아이디
	private String qna_public;	// qna 공개여부
	private String qna_title;	// qna 제목
	private String qna_text;	// qna 내용
	private Date qna_regdate;	// qna 작성일
	private String qna_admin_answer;	// 관리자 답변 여부
	
	public int getQna_id() {
		return qna_id;
	}
	public void setQna_id(int qna_id) {
		this.qna_id = qna_id;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getQ_category() {
		return q_category;
	}
	public void setQ_category(String q_category) {
		this.q_category = q_category;
	}
	public String getQna_public() {
		return qna_public;
	}
	public void setQna_public(String qna_public) {
		this.qna_public = qna_public;
	}
	public String getQna_title() {
		return qna_title;
	}
	public void setQna_title(String qna_title) {
		this.qna_title = qna_title;
	}
	public String getQna_text() {
		return qna_text;
	}
	public void setQna_text(String qna_text) {
		this.qna_text = qna_text;
	}
	public Date getQna_regdate() {
		return qna_regdate;
	}
	public void setQna_regdate(Date qna_regdate) {
		this.qna_regdate = qna_regdate;
	}
	public String getQna_admin_answer() {
		return qna_admin_answer;
	}
	public void setQna_admin_answer(String qna_admin_answer) {
		this.qna_admin_answer = qna_admin_answer;
	}
	
}
