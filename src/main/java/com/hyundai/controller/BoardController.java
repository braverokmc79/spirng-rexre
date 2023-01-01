package com.hyundai.controller;

import org.springframework.beans.factory.annotation.Autowired;
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
	
	/*
	 * 게시판에서 게시글의 리스트를 불러오기 위한 함수
	 * BoardCriteria를 사용해 페이징 처리 
	 */
	@GetMapping("/list")
	public void list(BoardCriteria cri, Model model) throws Exception {
		log.info("list"+cri);
		model.addAttribute("list", service.getListWithPaging(cri)); //페이징 처리한 목록 리스트 
				
		int total = service.getTotal(cri); // 게시글의 개수 표시
		model.addAttribute("count", total); // 게시글의 총 개수
		model.addAttribute("pageMaker",new BoardPageDTO(cri, total)); // 페이징 처리한 값을 pageMaker에 전달
		model.addAttribute("list", service.getListWithPaging(cri));
	}
	
	//게시판 insert 페이지
	@GetMapping("/insert")
	public void register() {
		log.info("게시판 등록 페이지 ");
	}

	//게시글 등록 페이지에서 등록 버튼을 누르면 insert 후에 리스트 페이지 첫 화면으로 이동 -> insert.jsp
	@PostMapping("/insert")
	public String insert(BoardVO board, RedirectAttributes rttr) throws Exception{
		//insert 시작
		service.insert(board);
		rttr.addFlashAttribute("inserted", board.getBoardId());
		//insert를 하면 게시글 가장 상단에 위치하기 때문에 초기 게시판 화면으로 redirect
		return "redirect:/board/list?pageNum=1&amount=10";
	}
	//게시글 조회 및 수정 -> read.jsp 조회하고 싶은 게시글을 클릭하면 boardId과 페이징 정보 자동 바인딩
	@GetMapping({"/read","/update"})
	public void read(@RequestParam("boardId")long boardId, Model model, @ModelAttribute("cri")BoardCriteria cri) throws Exception {
		model.addAttribute("board", service.read(boardId));
	}
	
	@PostMapping("/update") // 게시글 수정(update) 페이지. 수정 버튼을 누르면 실행됨
	public String update(BoardVO board, RedirectAttributes rttr, @ModelAttribute("cri")BoardCriteria cri) throws Exception {
		//수정되는 값이 있으면 success 결과를 attribute 값으로 전송함
		if(service.update(board)) {
			rttr.addFlashAttribute("result","success");
		}
		else {
			log.info("실패");
		}
		//조회한 게시글이 몇 페이지인지 얻어온다
		rttr.addAttribute("pageNum",cri.getPageNum());
		return "redirect:/board/list";
	}
	
	//게시글 조회 페이지에서 삭제 버튼을 누를시 실행되는 메서드
	@PostMapping("/delete")
	public String delete(@RequestParam("boardId")long boardId, RedirectAttributes rttr) throws Exception{
		//받아온 boardId값으로 해당되는 게시글을 삭제한다
		if(service.delete(boardId)) {
			rttr.addFlashAttribute("result","success");
		}
		//삭제 후 게시판 초기 화면으로 이동
		return "redirect:/board/list?pageNum=1&amount=10";
	}
	
	
	
	
	
	
	
	
	//---------------------------------------------------------------
//	@GetMapping("/list")
//	public void list2(BoardCriteria cri, Model model) throws Exception
//	{
//		
//		log.info("list"+ cri);
//		model.addAttribute("list", service.getList2(cri));
//		
//	}

}