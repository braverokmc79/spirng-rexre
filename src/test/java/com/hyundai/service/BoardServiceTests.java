package com.hyundai.service;


import static org.junit.Assert.assertNotNull;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hyundai.domain.BoardCriteria;
import com.hyundai.domain.BoardVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
	

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardServiceTests {
	
	@Setter(onMethod_= {@Autowired})
	private BoardService service;
	//BoardService 객체 주입 테스트
	Date day = new Date();
	//테스트 작동 확인
//	@Test
//	public void testExist() {
//		log.info(service);
//		assertNotNull(service);
//	}
//	//댓글 리스트 가져오기 테스트
//	@Test
//	public void testGetList() throws Exception{
//		service.getListWithPaging(new BoardCriteria(2,10)).forEach(board->log.info(board));
//	}
//	//댓글 삽입 테스트
//	@Test
//	public void insertTest() throws Exception {
//		BoardVO board = new BoardVO();
//		board.setBoardTitle("testTitle-service");
//		board.setBoardContent("testContent-service");
//		board.setBoardRegDate(day);
//		board.setBoardEndDate(day);
//		service.insert(board);
//		log.info("게시물 생성");
//	}
//	//댓글 조회 테스트
//	@Test 
//	public void testRead() throws Exception{
//		log.info(service.read(1L));//1번 댓글 조회
//		log.info("게시판 read 완료");
//	}
//	//댓글 수정 테스트
//	@Test
//	public void testUpdate() throws Exception{
//		BoardVO board = service.read(4L);
//		if(board==null) {
//			return;
//		}
//		//board.setQtitle("제목 수정");
//		log.info("수정 : " + service.update(board));
//	}
//	//댓글 삭제 테스트
//	@Test
//	public void testDelete() throws Exception{
//		//log.info(service.delte(4L));
//		log.info("delte 완료");
//	}
	
	@Test
	public void testGetListWithPaging() throws Exception {
		service.getListWithPaging(new BoardCriteria(2,10)).forEach(board -> log.info(board));
	}
	
	/*
	 * @Test public void testGetList2() throws Exception { log.info("getList2");
	 * log.info(service.getList2()); }
	 */
}