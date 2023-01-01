package com.hyundai.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

/*********************************
 * @function : BoardVO
 * @author : Taeseung Choi
 * @Date : Dec 26. 2022.
 * 게시글 데이터를 담는 VO
 *********************************/
@Data
public class BoardVO {
	private Long boardId; // 게시글 번호
	private String boardTitle; // 제목
	private String boardContent; // 내용
	private String boardCategory; // 카테고리
	private Long membersMemberId; // 작성자(관리자)
	private String boardSubcategory; // 하위카테고리
	@DateTimeFormat(pattern="yyyy-MM-dd")//날짜 형식
	private Date boardRegDate;// 날짜
	@DateTimeFormat(pattern="yyyy-MM-dd")//날짜 형식
	private Date boardEndDate; // 날짜2 for push
}

//public class BoardVO {
//	private long qid; //게시글 번호
//	private String mid; //게시글 작성자
//	private String qtitle;//게시글 제목
//	private String qcontent;//게시글 내용
//	@DateTimeFormat(pattern="yyyy-MM-dd")//날짜 형식 포맷팅
//	private Date qdate;//게시글 날짜
//	@DateTimeFormat(pattern="yyyy-MM-dd")
//	private Date qreplydate;//관리자 답변 날짜(구현X)
//	private String qreplytitle;//관리자 답변 제목(구현X)
//	private String qreplycontent;//관리자 답변 내용(구현X)
//	private String qmanager;//관리자 이름(구현X)
//}
