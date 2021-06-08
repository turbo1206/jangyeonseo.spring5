package com.edu.service;

import java.util.List;

import com.edu.vo.MemberVO;

/**
 * 이 인터페이스는 회원관리에 관련 된 Service의 명세를 모아놓은 파일.
 * @author 장연서
 *
 */
public interface IF_MemberService {
	public List<MemberVO> selectMember() throws Exception;
} 
