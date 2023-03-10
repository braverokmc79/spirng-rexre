package com.hyundai.controller;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;


import lombok.extern.log4j.Log4j;
@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
@Log4j

public class BoardControllerTests {

	private MockMvc mockMvc;
	
	@Test
	public void testList() throws Exception {
		log.info(mockMvc.perform(
			MockMvcRequestBuilders.get("/board/list")
			.param("pageNum", "2")
			.param("amount", "50"))
			.andReturn().getModelAndView().getModelMap());
	}
}
