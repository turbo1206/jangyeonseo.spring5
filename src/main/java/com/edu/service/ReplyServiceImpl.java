package com.edu.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.edu.dao.IF_ReplyDAO;
import com.edu.vo.PageVO;
import com.edu.vo.ReplyVO;

/**
 * 이 클래스는 댓글 DAO의 CRUD를 실행하는 서비스입니다.
 * @author 장연서
 *
 */
@Service
public class ReplyServiceImpl implements IF_ReplyService{
	@Inject
	private IF_ReplyDAO replyDAO;
	
	@Transactional
	@Override
	public void deleteReply(ReplyVO replyVO) throws Exception {
		// TODO 2개의 DAO를 호출(실행)
		replyDAO.deleteReply(replyVO);
		// 현재 게시물 고유번호 bno가 필요.
		replyDAO.replyCountUpdate(replyVO.getBno(), -1);
	}

	@Override
	public void updateReply(ReplyVO replyVO) throws Exception {
		// TODO 
		replyDAO.updateReply(replyVO);
	}
	@Transactional // ALL or NotALL
	@Override
	public void insertReply(ReplyVO replyVO) throws Exception {
		// TODO 2개의 DAO를 호출(실행)
		replyDAO.insertReply(replyVO);
		replyDAO.replyCountUpdate(replyVO.getBno(), 1);
	}

	@Override
	public int countReply(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<ReplyVO> selectReply(PageVO pageVO) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
