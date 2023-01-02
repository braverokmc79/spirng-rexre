package com.hyundai.controller;

import java.net.URLEncoder;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hyundai.domain.BoardCriteria;
import com.hyundai.domain.BoardPageDTO;
import com.hyundai.domain.BoardVO;
import com.hyundai.domain.PageMaker;
import com.hyundai.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

/*********************************
 * @function : BoardController
 * @author : Taeseung Choi
 * @Date : Dec 25. 2022.
 *********************************/
@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor
public class BoardController {
	//BoardService 객체불러오기
	@Autowired
	private BoardService service;
	
	/**
	 * 게시판에서 게시글의 리스트를 불러오기 위한 함수
	 * PageMaker 를 사용해 페이징 처리 
	 */
	@GetMapping("/list")
	public void list(PageMaker pageMaker, Model model) throws Exception{
		
		int total = service.getTotal(pageMaker); // 게시글의 개수 표시				
		pageMaker.setTotPage(total);		
		List<BoardVO> list=service.getListWithPaging(pageMaker);

		model.addAttribute("pagination", pageMaker.pagination("list")); //페이지네이션 설정
		model.addAttribute("count", total); // 게시글의 총 개수
		model.addAttribute("pageMaker",pageMaker); // 페이징 처리한 값을 pageMaker에 전달
		model.addAttribute("list", list );
	}
	
	
	
	//게시판 insert 페이지
	@GetMapping("/insert")
	public void register() {
		log.info("게시판 등록 페이지 ");
	}

	//게시글 등록 페이지에서 등록 버튼을 누르면 insert 후에 리스트 페이지 첫 화면으로 이동 -> insert.jsp
	@PostMapping("/insert")
	public String insert(BoardVO board, RedirectAttributes rttr) throws Exception{
		System.out.println(" insert  : "+ board.toString());
		
		//insert 시작
		service.insert(board);
		rttr.addFlashAttribute("inserted", board.getBoardId());
		return "redirect:list";
	}
	
	
	
	//게시글 조회 및 수정 -> read.jsp 조회하고 싶은 게시글을 클릭하면 boardId과 페이징 정보 자동 바인딩
	@GetMapping({"/read","/update"})
	public void read(@RequestParam("boardId")long boardId, Model model) throws Exception {
		model.addAttribute("board", service.read(boardId));
	}	
	
	
	@PostMapping("/update") // 게시글 수정(update) 페이지. 수정 버튼을 누르면 실행됨
	public String update(BoardVO board, RedirectAttributes rttr) throws Exception {
		//수정되는 값이 있으면 success 결과를 attribute 값으로 전송함
		if(service.update(board)) {
			rttr.addFlashAttribute("result","success");
		}		
		return "redirect:read?boardId="+board.getBoardId();
	}
	
	
	
	/**Ajax 반환 처리
	 * 게시글 조회 페이지에서 삭제 버튼을 누를시 실행되는 메서드
	 * @param boardId
	 * @param rttr
	 * @return
	 * @throws Exception
	 */
	@PostMapping("/delete")
	public ResponseEntity<?> delete(@RequestParam("boardId")long boardId, RedirectAttributes rttr) throws Exception{
		//받아온 boardId값으로 해당되는 게시글을 삭제한다
		try {
			service.delete(boardId);
			return ResponseEntity.status(200).body("success");
		}catch(Exception e) {
			return ResponseEntity.status(403).body("삭제 오류");			
		}		
	}
	
	


}