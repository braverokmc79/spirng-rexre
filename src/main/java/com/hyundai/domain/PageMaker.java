package com.hyundai.domain;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * 페이징 처리
 */
@Setter
@Getter
@ToString
public class PageMaker {
	
	/** 페이지당 게시물 수 */
	public int perPageNum;
	
	/** 화면당 페이지 수 */
	public static int BLOCK_SCALE = 10;
	
	/** 현재 페이지 */
	private Integer page = 1; 
	
	/** 이전 페이지  */
	private int prevPage; 
	
	/** 다음 페이지  */
	private int nextPage; 
	
	/** 전체 페이지 개수  */
	private int totPage;  
	
	/** 전체 페이지 블록 개수   */
	private int totBlock;  
	
	/** 현재 페이지 블록  */
	private int curBlock;  

	/** 이전 페이지 블록  */
	private int prevBlock; 
	
	/** 다음 페이지 블록   */
	private int nextBlock; 
	
	/** where rn between #{start } and #{end}  */
	private int pageBegin;
	
	/**  #{end}  */
	private int pageEnd; 
	/** 현재 페이지에 시작번호 [이전]   */
	
	private int blockBegin; 
	
	/** 현재 페이지에 끝 번호 [끝]  */
	private int blockEnd; 

	/** 검색처리 추가 */ 
	private String searchType;
	
	/** 검색어 */ 
	private String keyword;

	/** 카테고리 */
	private String boardCategory;  

	/** 하위카테고리 */
	private String boardSubcategory; 		

	
	public PageMaker() {
		if(boardSubcategory==null || !boardSubcategory.equals("")) {
			boardSubcategory="FAQ";
		}
		if(boardCategory==null || !boardCategory.equals("")) {
			boardCategory="all";
		}
		
		this.page = 1; // 초기 페이지는 1
		this.perPageNum = 10; // 10 개씩 보여준다.
	}

	public void setTotPage(int count) {
		curBlock = 1; // 현재 페이지 블록 번호
		// 991/10 =99.1 올림 처리
		// Math.ceil(실수) 올림 처리
		this.totPage = (int) Math.ceil(count * 1.0 / perPageNum);

		// between #{start} and #{end} 에 입력될 값 계산
		setPageRange();
		setTotBlock(); // 전체 페이지 블록 개수 계산
		// 페이지 블록의 시작, 끝 번호 계산
		setBlockRange();
	}
	
	public void setPerPageNum(int perPageNum) {
		// 몇개 씩 보여줄것인가 이다. 최대 100개씩 보여 줄것으로 설정한다.
		// 만약 0보다 작거나 100 보다 크면 10으로 초기화 시킨다.
		if (perPageNum <= 0 || perPageNum > 100) {
			this.perPageNum = 10;
			return;
		}
		this.perPageNum = perPageNum;
	}

	

	private void setBlockRange() {
		// 현재 페이지에 몇번째 페이지 블록에 속하는지 계산
		curBlock = (int) Math.ceil((page - 1) / BLOCK_SCALE) + 1;
		// 현재 페이지 블록의 시작, 끝 번호 계산
		blockBegin = (curBlock - 1) * BLOCK_SCALE + 1;
		blockEnd = blockBegin + BLOCK_SCALE - 1;
		// 마지막 블록이 범위를 초과하지 않도록 처리
		if (blockEnd > totPage)
			blockEnd = totPage;
		// [이전] 을 눌렸을 때 이동할 페이지 번호
		prevPage = (curBlock == 1) ? 1 : (curBlock - 1) * BLOCK_SCALE;
		// [다음] 을 눌렸을 때 이동할 페이지 번호
		nextPage = curBlock > totBlock ? (curBlock * BLOCK_SCALE) : (curBlock * BLOCK_SCALE) + 1;
		if (nextPage >= totPage)
			nextPage = totPage;
	}

	private void setPageRange() {
		// where rn between #{start } and #{end} 에 입력 될 값
		// 시작 번호 = (현재 페이지 -1 ) * 페이지당 게시물 수 +1;
		// ex (5-1) * 10 +1 = 41페이지
		pageBegin = (page - 1) * perPageNum + 1;
		// 끝번호 = 시작번호 + 페이지당 게시물 수 -1;
		pageEnd = pageBegin + perPageNum - 1;
	}



	public void setPage(Integer page) {
		// 페이지 번호가 0이거나 0보다 작으면 1페이지로 한다.
		if (page <= 0) {
			this.page = 1;
			return;
		}
		this.page = page;
	}

	/** 페이지 블록의 갯수 계산 (총 100 페이지라면 10개 블록) */  
	public void setTotBlock() {
		this.totBlock = (int) Math.ceil(totPage / BLOCK_SCALE);
	}

	
	/**  페이지 파라미터 */ 
	public String makeSearch(int page) {
		UriComponents uriComponents = UriComponentsBuilder.newInstance().queryParam("page", page)
				.queryParam("perPageNum", perPageNum).queryParam("searchType", searchType)
				.queryParam("boardCategory", boardCategory)
				.queryParam("boardSubcategory", boardSubcategory	)
				.queryParam("keyword", keyword).build();
		return uriComponents.toUriString();
	}

	/**  페이지 네이션   */ 
	public String pagination(String url) {
		StringBuffer sBuffer = new StringBuffer();
		sBuffer.append("<ul class='paging'>");
		if (curBlock > 1) {
			sBuffer.append("<li><a href='" + url + makeSearch(1) + "'>처음</a></li>");
		}

		if (curBlock > 1) {
			sBuffer.append("<li><a href='" + url + makeSearch(prevPage) + "'>&laquo;</a></li>");
		}

		for (int i = blockBegin; i <= blockEnd; i++) {
			if (page == i) {
				sBuffer.append("<li>");
				sBuffer.append("<strong>" + i + "</a></strong>");
				sBuffer.append("</li>");
			} else {
				sBuffer.append("<li>");
				sBuffer.append("<a href='" + url + makeSearch(i) + "'>" + i + "</a></li>");
				sBuffer.append("</li>");
			}
		
		}

		if (curBlock < totBlock) {
			sBuffer.append("<li><a href='" + url + makeSearch(nextPage) + "'>&raquo;</a></li>");
		}

		if (curBlock < totBlock) {
			sBuffer.append("<li><a href='" + url + makeSearch(totPage) + "'>마지막</a></li>");
		}

		sBuffer.append("</ul>");
		return sBuffer.toString();
	}





	
}