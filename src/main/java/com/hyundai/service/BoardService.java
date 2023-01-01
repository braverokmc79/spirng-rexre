package com.hyundai.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.hyundai.domain.BoardCriteria;
import com.hyundai.domain.BoardVO;

/*********************************
 * @function : BoardService
 * @author : Taeseung Choi
 * @Date : Dec 26. 2022.
 * 게시판에 필요한 DB 처리
 *********************************/
@Service
public interface BoardService {	
	
	public List<BoardVO> getListWithPaging(BoardCriteria cri)throws Exception; // 페이징 리스트
	public void insert(BoardVO board) throws Exception; // 등록
	public BoardVO read(long boardId) throws Exception; // 조회
	public boolean delete(long boardId) throws Exception; // 삭제
	public boolean update(BoardVO board) throws Exception; // 수정
	public int getTotal(BoardCriteria cri) throws Exception; // 총 행 개수
	//list2 확인
	public List<BoardVO> getList2(BoardCriteria cri) throws Exception;
}

//public interface BoardService {
//
//	public void register(BoardVO board);
//	public BoardVO get(Long bno);
//	public boolean modify(BoardVO board);
//	public boolean remove(Long bno);
//	// public List<BoardVO> getList();
//	public List<BoardVO> getList(Criteria cri);
//	//추가
//	public int getTotal(Criteria cri);
//
//}
