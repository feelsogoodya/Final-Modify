package com.itwillbs.dao;

import java.util.List;

import com.itwillbs.domain.NoticeDTO;
import com.itwillbs.domain.NoticePageDTO;

public interface NoticeDAO {
	//추상메서드
	// 리턴할형 없음 insertBoard(BoardDTO 주소값 저장하는 변수) 메서드 정의
	public void insertNotice(NoticeDTO noticeDTO);
	// getMaxNum
	public Integer getMaxNum();
	 
	// List<BoardDTO> 리턴할형 getBoardList(PageDTO dto) 메서드 정의
	public List<NoticeDTO> getNoticeList(NoticePageDTO dto);
	
	public int getNoticeCount();
	
	// 조회수 증가
	public void updateReadcount(int num);
	
	// 글가져오기 메서드 호출
	public NoticeDTO getNotice(int num);
	
	public void deleteNotice(int num);
	
	public void updateNotice(NoticeDTO noticeDTO);
}
