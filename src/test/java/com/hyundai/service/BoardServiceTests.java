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
	//BoardService ��ü ���� �׽�Ʈ
	Date day = new Date();
	//�׽�Ʈ �۵� Ȯ��
//	@Test
//	public void testExist() {
//		log.info(service);
//		assertNotNull(service);
//	}
//	//��� ����Ʈ �������� �׽�Ʈ
//	@Test
//	public void testGetList() throws Exception{
//		service.getListWithPaging(new BoardCriteria(2,10)).forEach(board->log.info(board));
//	}
//	//��� ���� �׽�Ʈ
//	@Test
//	public void insertTest() throws Exception {
//		BoardVO board = new BoardVO();
//		board.setBoardTitle("testTitle-service");
//		board.setBoardContent("testContent-service");
//		board.setBoardRegDate(day);
//		board.setBoardEndDate(day);
//		service.insert(board);
//		log.info("�Խù� ����");
//	}
//	//��� ��ȸ �׽�Ʈ
//	@Test 
//	public void testRead() throws Exception{
//		log.info(service.read(1L));//1�� ��� ��ȸ
//		log.info("�Խ��� read �Ϸ�");
//	}
//	//��� ���� �׽�Ʈ
//	@Test
//	public void testUpdate() throws Exception{
//		BoardVO board = service.read(4L);
//		if(board==null) {
//			return;
//		}
//		//board.setQtitle("���� ����");
//		log.info("���� : " + service.update(board));
//	}
//	//��� ���� �׽�Ʈ
//	@Test
//	public void testDelete() throws Exception{
//		//log.info(service.delte(4L));
//		log.info("delte �Ϸ�");
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