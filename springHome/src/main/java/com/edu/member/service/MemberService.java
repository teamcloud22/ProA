package com.edu.member.service;

import java.util.List;

import com.edu.member.model.MemberVo;

public interface MemberService {

	public List<MemberVo> memberSelectList(String searchOption
			, String keyword, int start, int end);
	public MemberVo memberExist(String email, String password);
	public int memberInsertOne(MemberVo memberVo);
	public MemberVo memberSelectOne(int no);
	public int memberUpdateOne(MemberVo memberVo);
	public void memberDeleteOne(int no);
	public int memberSelectTotalCount(String keyword, String searchOption);
	 
}
