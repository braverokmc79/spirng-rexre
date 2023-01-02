package com.hyundai.mapper;

import java.util.List;

import com.hyundai.domain.BoardVO;
import com.hyundai.domain.PageMaker;
/*********************************
 * @function : BoardMapper
 * @author : Taeseung Choi
 * @Date : Dec 26. 2022.
 * Mapper for CRUD
*********************************/
public interface BoardMapper {
	
	public List<BoardVO> getList(); 
	public List<BoardVO> getListWithPaging(PageMaker pageMaker); // 페이징 처리된 리스트를 get
	public void insert(BoardVO board); // 등록(insert)
	public BoardVO read(long boardId); // 조회(read)
	public boolean update(BoardVO board); // 수정(update)
	public boolean delete(long boardId); // 삭제(delete)
	public int getTotalCount(PageMaker pageMaker); // 게시물의 총 개수(getTotalCount) get
	public List<BoardVO> test();
	
//	//list2 test
//	public List<BoardVO> getList2(BoardCriteria boardCriteria);
	
}

//public interface BoardMapper {
//	//페이징 처리한 게시물 리스트를 가져오는 메소드
//	public List<BoardVO> getListWithPaging(BoardCriteria cri);
//	//게시물 등록 메소드
//	public void insert(BoardVO board);
//	//게시물 조회 메소드
//	public BoardVO read(long qid);
//	//게시물 수정 메소드
//	public boolean update(BoardVO board);
//	//게시물 삭제 메소드
//	public boolean delete(long qid);
//	//게시물의 총 개수를 가져오는 메소드
//	public int getTotalCount(BoardCriteria cri);
//}