package com.hyundai.Mapper;

import java.sql.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.domain.BoardCriteria;
import com.hyundai.domain.BoardVO;
import com.hyundai.mapper.BoardMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
/**********************************
 * @function : BoradMapperTest
 * @author : Taeseung Choi
 * @Date : Dec 29. 2022.
 **********************************/
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardMapperTests {
	
	//게시판 Mapper 사용
	@Setter(onMethod_ = @Autowired)
	private BoardMapper mapper;
	
	//게시판 삽입 테스트
	@Test
	public void testInsert() {
		Date day = new Date(0);
		BoardVO board = new BoardVO();
		board.setBoardId(3L);
		board.setMembersMemberId(1L);
		board.setBoardTitle("testTitle");
		board.setBoardContent("testContent");
		board.setBoardRegDate(day);
		board.setBoardEndDate(day);
		board.setBoardCategory("교환/환불");
		board.setBoardSubcategory("1:1");
		
		mapper.insert(board);
		log.info(">> board insert test : " + board);
	
	}
	
	//게시판 조회 테스트
	@Test
	public void testRead() {
		BoardVO board = mapper.read(3L); 
		log.info("게시판 조회 테스트 : " + board);
	}
	
	//게시판 삭제 테스트
	@Test
	public void testDelete() {
		log.info("delete count : "+mapper.delete(3L));
	}
	//게시판 수정 테스트
	@Test
	public void testUpdate() {
		Date day = new Date(0);
		BoardVO board = new BoardVO();
		board.setBoardId(3L);
		board.setBoardTitle("제목 수정");
		board.setBoardContent("내용 수정");
		board.setBoardRegDate(day);
		board.setBoardEndDate(day);
		board.setBoardCategory("교환/환불");
		board.setBoardSubcategory("1:1");
		
	
		
		boolean count = mapper.update(board);
		log.info("update count : " + count);
	}
	//게시판 페이징 테스트
	@Test
	public void testPaging() {
		BoardCriteria cri = new BoardCriteria();
		log.info("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
		//10개씩 3페이지
		cri.setPageNum(3);
		cri.setAmount(10);
		List<BoardVO> list = mapper.getListWithPaging(cri);
		log.info(list.size());
	}
	
	
	/*
	 * @Test public void testGetList2() { List<BoardVO> b = mapper.getList();
	 * b.forEach(board -> log.info(board)); }
	 */
	
}
