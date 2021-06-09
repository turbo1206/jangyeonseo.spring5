package com.edu.service;

import java.util.List;

import com.edu.vo.MemberVO;
import com.edu.vo.PageVO;

/**
 * 이 인터페이스는 회원관리에 관련 된 Service의 명세를 모아놓은 파일.
 * {구현내용} 없음.
 * @author 장연서
 *
 */
public interface IF_MemberService {
	public List<MemberVO> selectMember(PageVO pageVO) throws Exception;
	//이 곳에 CRUD 메서드가 계속 추가됩니다.
	public int countMember() throws Exception;
} 
