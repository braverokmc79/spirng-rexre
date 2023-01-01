<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- core 태그 라이브러리를 사용하기 위해 선언 -->
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
 --%>
<html>
<head>
<title>리바이리(ReXRe)</title>
<link rel="shortcut icon" type="image/x-icon"
	href="https://www.rexremall.com/favicon.ico">
<link rel="stylesheet" type="text/css"
	href="https://www.rexremall.com/_data/wing_skbioland_200731_temp.css">
<link rel="stylesheet" type="text/css"
	href="https://www.rexremall.com/wm_engine_SW/_engine/common/jquery/jquery-ui.min.css">
<link rel="stylesheet" type="text/css"
	href="https://www.rexremall.com/wm_engine_SW/_engine/common/loading.css??202212301521">
<script type="text/javascript">
var hid_frame='hidden1672381312';
var mlv='10';
var alv='';
var root_url='https://www.rexremall.com';
var engine_url='https://www.rexremall.com/wm_engine_SW';
var this_url='https://www.rexremall.com/board/?db=basic_2';
var ssl_url='https://www.rexremall.com/main/exec.php';
var soldout_name='품절';
var ace_counter_gcode='';
var uip = "112.221.225.164";
var currency = "원";
var currency_type = "원";
var currency_decimal='0';
var r_currency_type = "";
var r_currency_decimal='0';
var exchangeRate = '';
var juso_api_use = 'Y';
var browser_type = 'pc';
var mobile_browser = '';
var ssl_type = 'Y';

var click_prd=new Array();
var click_prd_limit=2;
var click_prd_start=1;
var click_prd_finish=click_prd_limit+1;
</script>
<script type="text/javascript"
	src="https://www.rexremall.com/wm_engine_SW/_engine/common/jquery/jquery-1.11.3.min.js"></script>
<script type="text/javascript"
	src="https://www.rexremall.com/wm_engine_SW/_engine/common/jquery/jquery-ui-1.11.3.min.js"></script>
<script type="text/javascript"
	src="https://www.rexremall.com/wm_engine_SW/_engine/common/jquery.serializeObject.js"></script>
<script type="text/javascript"
	src="https://www.rexremall.com/_skin/skbioland_200731/script.js"></script>
<script type="text/javascript"
	src="https://www.rexremall.com/wm_engine_SW/_engine/common/lang/lang_kor.js?00000002"></script>
<script type="text/javascript"
	src="https://www.rexremall.com/wm_engine_SW/_engine/common/common.js?202212301521"></script>
<script type="text/javascript"
	src="https://www.rexremall.com/wm_engine_SW/_engine/common/shop.review.js?202212301521"></script>
<script type="text/javascript"
	src="https://www.rexremall.com/wm_engine_SW/_engine/R2Na/R2Na.js"></script>
<script type="text/javascript"
	src="https://www.rexremall.com/wm_engine_SW/_engine/smartEditor/js/HuskyEZCreator.js"></script>
<script type="text/javascript">
var date_picker_default = {
	'monthNamesShort':['1','2','3','4','5','6','7','8','9','10','11','12'],
	'dayNamesMin':[_lang_pack.data_week_sun, _lang_pack.data_week_mon, _lang_pack.data_week_tue, _lang_pack.data_week_wed, _lang_pack.data_week_thu, _lang_pack.data_week_fri, _lang_pack.data_week_sat],
	'weekHeader':'Wk',
	'dateFormat':'yy-mm-dd',
	'autoSize':false,
	'changeYear':true,
	'changeMonth':true,
	'showButtonPanel':true,
	'currentText':_lang_pack.common_info_today+'2022-12-30',
	'closeText':_lang_pack.coommon_info_close
}

/* Timer */
const use_ts_mark_1 = 'Y';
const ts_mark_1 = '일';
const use_ts_mark_2 = 'Y';
const ts_mark_2 = ' :';
const use_ts_mark_3 = 'Y';
const ts_mark_3 = ' :';
const use_ts_mark_4 = 'Y';
const ts_mark_4 = '';

</script>
<script type="text/javascript"
	src="https://www.rexremall.com/wm_engine_SW/_engine/common/sec.js"></script>
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
if(!wcs_add) var wcs_add = {};
wcs_add["wa"] = "s_36b65d5f3061";
if(typeof wcs != 'undefined') {
	wcs.inflow("rexremall.com");
}
</script>
</head>


<body>
	<iframe name="hidden1672381312" src="about:blank" width="0" height="0"
		scrolling="no" frameborder="0" style="display: none"></iframe>

	<link rel="stylesheet" type="text/css"
		href="https://www.rexremall.com/board/_skin/basic_faq/style.css">
	<script type="text/javascript" defer="defer">$(document).ready(function(){setInterval("wingQuickSlide(228, 0, 0, 5)", 10);});</script>
	<style type="text/css">
<!--
#skin_board_index_big_div {
	width: 100%;
}
-->
</style>
	<div id="skin_board_index_big_div">

		<script
			src="https://www.rexremall.com/_skin/skbioland_200731/img/../slick.min.js"></script>
		<link rel="stylesheet" type="text/css"
			href="https://www.rexremall.com/_skin/skbioland_200731/img/../slick.css">
		<link rel="stylesheet" type="text/css"
			href="https://www.rexremall.com/_skin/skbioland_200731/img/../animate.css">
		<i id="crema-login-username" style="display: none;"></i> <i
			id="crema-login-name" style="display: none;"></i>
		<div id="wrapper">
			<!-- 상단 -->
			<div id="sub_hd" class="">
				<div class="header">
					<div class="gnb">
						<div class="inner">
							<h1>
								<a href="/"><img
									src="https://www.rexremall.com/_skin/skbioland_200731/img/logo/logo_rexre.png"
									alt="클린 &amp; 비건 뷰티 브랜드 리바이리 "></a>
							</h1>
							<div class="lnb">
								<span class="all" onclick="toggle_view('all_cate', this);">all</span>
								<ul class="category">
									<li><a href="/shop/big_section.php?cno1=1009">NEW&amp;BEST</a></li>
									<li class="viewsub product"><a
										href="/shop/big_section.php?cno1=1012">PRODUCT</a>
										<div class="list">

											<ul class="mid_depth">
												<li><a
													href="https://www.rexremall.com/shop/big_section.php?cno1=1020">마스크팩</a></li>
												<li><a
													href="https://www.rexremall.com/shop/big_section.php?cno1=1021">스킨케어</a></li>
											</ul>

										</div></li>
									<li class="viewsub event"><a
										href="/board/?db=gallery_1&amp;cate=17">EVENT</a>
										<ul class="list">
											<li><a href="/board/?db=gallery_1&amp;cate=17">진행중인
													이벤트</a></li>
											<li><a href="/board/?db=gallery_1&amp;cate=18">종료된
													이벤트</a></li>
											<li><a href="/board/?db=basic_3">당첨자발표</a></li>
										</ul></li>
									<li class="viewsub community"><a href="/board/?db=basic_4">COMMUNITY</a>
										<ul class="list">
											<li><a href="/board/?db=basic_4">공지사항</a></li>
											<li><a href="/board/?db=gallery_2">미디어</a></li>
											<!--<li><a href="/content/content.php?cont=benefit">회원혜택</a></li>-->
											<li><a href="/board/?db=basic_2">쇼핑FAQ</a></li>
											<li><a href="/mypage/counsel_list.php">1:1문의</a></li>
										</ul></li>
									<li class="viewsub brand"><a
										href="/content/content.php?cont=brand_n">BRAND</a>
										<ul class="list">
											<li><a href="/content/content.php?cont=brand_n">브랜드
													스토리</a></li>
											<li><a href="/content/content.php?cont=bi">BI</a></li>
										</ul></li>
								</ul>

							</div>
							<ul class="menu">
								<!-- gnb 로그인 메뉴부분에 사용됩니다. 삭제시 문제가 발생할 수 있습니다. -->
								<li class="txt"><a href="/member/login.php">LOGIN</a></li>
								<li class="txt"><a href="/member/join_step1.php">JOIN</a></li>
								<!-- //gnb 로그인 메뉴부분에 사용됩니다. 삭제시 문제가 발생할 수 있습니다. -->
								<li class="viewsub"><a href="/mypage/mypage.php">MYPAGE</a>
									<ul class="list">
										<li><a href="/mypage/order_list.php">주문/배송조회</a></li>
										<li><a href="/mypage/coupon_down_list.php">쿠폰현황</a></li>
										<li><a href="/mypage/wish_list.php">위시리스트</a></li>
										<li><a href="/member/edit_step1.php">정보수정</a></li>
										<li><a href="/shop/product_review_list.php">상품후기</a></li>
										<li><a href="/mypage/counsel_list.php">1:1문의</a></li>
										<li><a href="/board/?db=basic_2">쇼핑 FAQ</a></li>
									</ul></li>
								<li><a href="/shop/cart.php" class="cart">장바구니 <span
										class="balloon">장바구니</span></a></li>
								<li><a href="#" onclick="toggle_view('box_search',this)"
									class="search">검색 <span class="balloon">통합검색</span></a></li>
							</ul>
						</div>
						<div id="all_cate" class="all_cate">
							<div class="inner">
								<dl class="product">
									<dt>
										<a href="/shop/big_section.php?cno1=1012">PRODUCT</a>
									</dt>
									<dd>

										<ul class="mid_depth">
											<li><a
												href="https://www.rexremall.com/shop/big_section.php?cno1=1020">마스크팩</a></li>
											<li><a
												href="https://www.rexremall.com/shop/big_section.php?cno1=1021">스킨케어</a></li>
										</ul>
									</dd>
								</dl>
								<dl class="event">
									<dt>
										<a href="/board/?db=gallery_1&amp;cate=17">EVENT</a>
									</dt>
									<dd>
										<a href="/board/?db=gallery_1&amp;cate=17">진행중인 이벤트</a>
									</dd>
									<dd>
										<a href="/board/?db=gallery_1&amp;cate=18">종료된 이벤트</a>
									</dd>
									<dd>
										<a href="/board/?db=basic_3">당첨자발표</a>
									</dd>
								</dl>
								<dl class="community">
									<dt>
										<a href="/board/?db=basic_1">COMMUNITY</a>
									</dt>
									<dd>
										<a href="/board/?db=basic_4">공지사항</a>
									</dd>
									<dd>
										<a href="/board/?db=gallery_2">미디어</a>
									</dd>
									<!--<dd><a href="/content/content.php?cont=benefit">회원혜택</a></dd>-->
									<dd>
										<a href="/board/?db=basic_2">쇼핑FAQ</a>
									</dd>
									<dd>
										<a href="/mypage/counsel_list.php">1:1문의</a>
									</dd>
								</dl>
								<dl class="brand">
									<dt>
										<a href="/content/content.php?cont=brand_n">BRAND</a>
									</dt>
									<dd>
										<a href="/content/content.php?cont=brand_n">브랜드 스토리</a>
									</dd>
									<dd>
										<a href="/content/content.php?cont=bi">BI</a>
									</dd>
								</dl>
								<div class="banner"></div>
							</div>
						</div>
						<div id="box_search" class="box_search">
							<span class="close" onclick="toggle_view('box_search');"></span>
							<form method="get"
								action="https://www.rexremall.com/shop/search_result.php">
								<div class="box">
									<input type="text" name="search_str" value=""
										class="form_input block basic_search" placeholder="검색어 입력">
									<input type="image"
										src="https://www.rexremall.com/_skin/skbioland_200731/img/button/hd_search.png"
										alt="검색" class="btn">
								</div>
							</form>
							<div class="hot_keyword">
								<h5>인기검색어</h5>
								<ul class="list">
									<li><a href="/shop/search_result.php?search_str=콤부차">#콤부차</a></li>
									<li><a href="/shop/search_result.php?search_str=콤부차">#비건</a></li>
									<li><a href="/shop/search_result.php?search_str=콤부차">#친환경</a></li>
									<li><a href="/shop/search_result.php?search_str=인텐시브">#
											장벽크림</a></li>
									<li><a href="/shop/search_result.php?search_str=히알루론">#주름개선</a></li>
									<li><a href="/shop/search_result.php?search_str=크림">#보습</a></li>
									<li><a href="/shop/search_result.php?search_str=히알루론">#히알루론</a></li>
									<li><a href="/shop/search_result.php?search_str=앰플">#앰플</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="header hyaluron">
					<div class="gnb">
						<!--
		<ul class="tab_brand">
			<li class="rexre"><a href="/">ReXRe</a></li>
			<li class="az"><a href="/content/content.php?cont=hyaluronaz">HyaluronAZ</a></li>
		</ul>
		-->
						<div class="inner">
							<h1>
								<a href="/content/content.php?cont=hyaluronaz"><img
									src="https://www.rexremall.com/_skin/skbioland_200731/img/logo/logo_hyaluronaz.png"
									alt="클린 &amp; 비건 뷰티 브랜드 리바이리 "></a>
							</h1>
							<div class="lnb">
								<ul id="az_menu" class="category">
									<li data-menuanchor="buy"><a
										href="/content/content.php?cont=hyaluronaz#buy">PRODUCT</a></li>
									<li data-menuanchor="brand"><a
										href="/content/content.php?cont=hyaluronaz#brand">BRAND</a></li>
									<li class="viewsub event"><a
										href="/board/?db=gallery_1&amp;cate=17">EVENT</a>
										<ul class="list">
											<li><a href="/board/?db=gallery_1&amp;cate=17">진행중인
													이벤트</a></li>
											<li><a href="/board/?db=gallery_1&amp;cate=18">종료된
													이벤트</a></li>
											<li><a href="/board/?db=basic_3">당첨자발표</a></li>
										</ul></li>
									<li class="viewsub community"><a href="/board/?db=basic_4">COMMUNITY</a>
										<ul class="list">
											<li><a href="/board/?db=basic_4">공지사항</a></li>
											<li><a href="/board/?db=gallery_2">미디어</a></li>
											<!--<li><a href="/content/content.php?cont=benefit">회원혜택</a></li>-->
											<li><a href="/board/?db=basic_2">쇼핑FAQ</a></li>
											<li><a href="/mypage/counsel_list.php">1:1문의</a></li>
										</ul></li>
								</ul>
							</div>
							<ul class="menu">
								<!-- gnb 로그인 메뉴부분에 사용됩니다. 삭제시 문제가 발생할 수 있습니다. -->
								<li class="txt"><a href="/member/login.php">LOGIN</a></li>
								<li class="txt"><a href="/member/join_step1.php">JOIN</a></li>
								<!-- //gnb 로그인 메뉴부분에 사용됩니다. 삭제시 문제가 발생할 수 있습니다. -->
								<li class="viewsub"><a href="/mypage/mypage.php">MYPAGE</a>
									<ul class="list">
										<li><a href="/mypage/order_list.php">주문/배송조회</a></li>
										<li><a href="/mypage/coupon_down_list.php">쿠폰현황</a></li>
										<li><a href="/mypage/wish_list.php">위시리스트</a></li>
										<li><a href="/member/edit_step1.php">정보수정</a></li>
										<li><a href="/shop/product_review_list.php">상품후기</a></li>
										<li><a href="/mypage/counsel_list.php">1:1문의</a></li>
										<li><a href="/board/?db=basic_2">쇼핑 FAQ</a></li>
									</ul></li>
								<li><a href="/shop/cart.php" class="cart">장바구니<span
										class="ea_cart front_cart_rows quick_cart_cnt">0</span><span
										class="balloon">장바구니</span></a></li>
								<li><a href="#" onclick="toggle_view('box_search2',this)"
									class="search">검색 <span class="balloon">통합검색</span></a></li>
							</ul>
						</div>
						<div id="box_search2" class="box_search">
							<span class="close" onclick="toggle_view('box_search2');"></span>
							<form method="get"
								action="https://www.rexremall.com/shop/search_result.php">
								<div class="box">
									<input type="text" name="search_str" value=""
										class="form_input block basic_search" placeholder="검색어 입력">
									<input type="image"
										src="https://www.rexremall.com/_skin/skbioland_200731/img/button/hd_search2.png"
										alt="검색" class="btn">
								</div>
							</form>
							<div class="hot_keyword">
								<h5>인기검색어</h5>
								<ul class="list">
									<li><a href="/shop/search_result.php?search_str=마스크팩">#
											마스크팩</a></li>
									<li><a href="/shop/search_result.php?search_str=바이오파밍">#
											바이오파밍</a></li>
									<li><a href="/shop/search_result.php?search_str=히알루론">#
											히알루론</a></li>
									<li><a href="/shop/search_result.php?search_str=앰플">#
											앰플</a></li>
									<li><a href="/shop/search_result.php?search_str=미네랄앰플">#
											미네랄앰플</a></li>
									<li><a href="/shop/search_result.php?search_str=주름개선">#
											주름개선</a></li>
									<li><a href="/shop/search_result.php?search_str=세라마이드">#
											세라마이드</a></li>
									<li><a href="/shop/search_result.php?search_str=펩타이드">#
											펩타이드</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- //상단 -->
			<!-- 중앙 -->
			<div id="cnt">
				<div class="cntbody">
					<h2 class="subtitle">쇼핑FAQ</h2>
					<div id="boardlist">
						<div class="cateList">
							<ul>
								<!-- <li class="active"><a href="/board?db=basic_2">전체보기</a></li> -->
								<li><a href="./?db=basic_2&amp;cate=11">주문결제</a></li>
								<li><a href="./?db=basic_2&amp;cate=12">배송</a></li>
								<li><a href="./?db=basic_2&amp;cate=13">취소</a></li>
								<li><a href="./?db=basic_2&amp;cate=14">교환/환불</a></li>
								<li><a href="./?db=basic_2&amp;cate=15">회원</a></li>
								<li><a href="./?db=basic_2&amp;cate=16">기타</a></li>
							</ul>
						</div>
						<div class="board_search">
							<form method="get">
								<input type="hidden" name="cate" value=""> <input
									type="hidden" name="db" value="basic_2">

								<div class="box">
									<select name="search">
										<option value="title">제목</option>
										<option value="content">내용</option>
									</select> <input type="text" name="search_str" value=""
										class="form_input block basic_search" placeholder="FAQ SEARCH">
									<input type="image"
										src="https://www.rexremall.com/board/_skin/basic_faq//img/btn_search.png"
										alt="검색" class="btn">
								</div>
							</form>
						</div>
						<table class="board_col">
							<caption class="hidden">글목록</caption>
							<colgroup>
								<col style="width: 8%;">
								<col>
							</colgroup>
							<thead>
								<tr>
									<th scope="col">질문/답변</th>
									<th scope="col">제목</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach items="${list}" var="board">

									<tr>
										<th scope="row"><span class="icon">Q</span></th>
										<td class="tal"><span>[<c:out
													value="${board.boardCategory}" />]
										</span> <a href="javascript:show(faq${board.boardId})">${board.boardTitle}</a></td>
									</tr>
									<tr id="faq${board.boardId}" class="faqcnt"
										style="display: none;">
										<th scope="row"><span class="icon answer">A</span></th>
										<td class="tal">
											<div class="contents">${board.boardContent}</div>
											<div class="btn">
												<span class="box_btn w100 white"><a href="#"
													style="display: none;">수정</a></span> <span
													class="box_btn w100 white"><a href="#"
													style="display: none;">삭제</a></span>
											</div>
										</td>
									</tr>
								</c:forEach>


							</tbody>
						</table>
						<!-- 페이징 처리 코드 book -->
						<div class="paging">
							<c:if test="${pageMaker.prev}">
								<!-- 이전 버튼 -->
								<span class="paginate_button previous"> <a
									href="${pageMaker.firstPage}"> << </a> <a
									href="${pageMaker.startPage - 1}"> < </a>
								</span>
							</c:if>

							<!-- 페이징 처리 시작부분 -->
							<!-- 1~10 버튼 -->
							<!-- jstl을 사용하여 현재 페이지의 번호를 굵게 한다 -->
							<c:forEach var="num" begin="${pageMaker.startPage}"
								end="${pageMaker.endPage}">
								<span class="paginate_button"> <c:choose>
										<c:when test="${pageMaker.cri.pageNum eq num}">
											<a style="font-weight: bold; margin: 3px;" class="pageBtn"
												href="${num}">${num}</a>
										</c:when>
										<c:otherwise>
											<a style="margin: 3px;" class="pageBtn" href="${num}">${num}</a>
										</c:otherwise>
									</c:choose>
								</span>
							</c:forEach>
							<c:if test="${pageMaker.next}">
								<!-- 이전 버튼 -->
								<span class="paginate_button next"> <a
									href="${pageMaker.endPage + 1}">></a> <a
									href="${pageMaker.lastPage}"> >> </a>
								</span>
							</c:if>
							<!-- 페이징 처리 끝 -->
							<form id='actionForm' action="/board/list" method='get'>
								<input type='hidden' id='pageNum' name='pageNum'
									value='${pageMaker.cri.pageNum}'> <input type='hidden'
									name='amount' value='${pageMaker.cri.amount}'>
							</form>

						</div>
						<input type='hidden' id='pagenum' value='${pageMaker.cri.pageNum}'>
						<div class="box_btn w100 write">
							<a style="display:">글쓰기</a>
						</div>
					</div>
					<script type="text/javascript">
	/* 게시판 분류, 전체보기 탭 노출 */
	$(document).ready(function(){
		$('#boardlist .cateList ul').prepend('<li><a href="/board?db=basic_2">전체보기</a></li>');

		function getParameterByName(name) {
			name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
			var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
			results = regex.exec(location.search);
			return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
		}
		var uid = getParameterByName('cate');
		
		if (uid == ''){
			$('#boardlist .cateList ul li:first-child').addClass('active');
		}
	});
</script>
					<form name="mariFrm" method="get" action="?" style="margin: 0px">
						<input type="hidden" name="db" value="basic_2"><input
							type="hidden" name="no" value=""> <input type="hidden"
							name="mari_mode" value=""> <input type="hidden"
							name="cate" value=""> <input type="hidden" name="page"
							value="1"> <input type="hidden" name="search" value="">
						<input type="hidden" name="search_str" value=""> <input
							type="hidden" name="temp" value="">
					</form>
					<script type="text/javascript"
						src="https://www.rexremall.com/wm_engine_SW/board/common/common.js"></script>
					<!-- mkt script '모비온' scr_bottom start-->
					<!-- Enliple Insite breakAway Popup start -->
					<script type="text/javascript">(function(m,b,r,i,s){m.mbris=m.mbris||function(){(m.mbris.q=m.mbris.q||[]).push(arguments)};i=b.createElement(r);i.async=!0;i.defer=!0;i.src="https://cdn.megadata.co.kr/dist/prod/enp_mbris.min.js";0<b.querySelectorAll("script[src*=enp_mbris]").length&&m.ENP_MBRIS_INVOKE?m.ENP_MBRIS_INVOKE():(s=b.getElementsByTagName(r)[0],s.parentNode.insertBefore(i,s))})(window,document,"script");mbris("202010303120052258_rexreskbio_3_01,202010303120052259_rexreskbio_3_02");
</script>
					<!-- Enliple Insite breakAway Popup end -->
					<!-- Enliple Tracker Start -->
					<script type="text/javascript">
    (function(a,g,e,n,t){a.enp=a.enp||function(){(a.enp.q=a.enp.q||[]).push(arguments)};n=g.createElement(e);n.async=!0;n.defer=!0;n.src="https://cdn.megadata.co.kr/dist/prod/enp_tracker_self_hosted.min.js";t=g.getElementsByTagName(e)[0];t.parentNode.insertBefore(n,t)})(window,document,"script");
    enp('create', 'common', 'rexreskbio', { device: 'W' });    
    enp('send', 'common', 'rexreskbio');
</script>
					<!-- Enliple Tracker End -->
					<!--mkt script '모비온' scr_bottom end-->
				</div>
			</div>
			<!-- //중앙 -->
			<!-- 하단 -->
			<div id="sub_ft">
				<div class="footer">
					<div class="inner">
						<div class="shopinfo">
							<ul class="menu">
								<li><a href="http://www.skbioland.com/" target="_blank">회사소개</a></li>
								<li><a href="/content/content.php?cont=uselaw">이용약관</a></li>
								<li><a href="/content/content.php?cont=privacy">개인정보처리방침</a></li>
								<li><a href="/board/?db=basic_4">공지사항</a></li>
							</ul>
							<!-- 쇼핑몰정보 및 에스크로 -->
							<address class="info">
								<span>(주)현대바이오랜드</span><span>대표자 이희준</span><span>고객센터
									1522-1378</span><span>개인정보보호책임자 김정은</span><span>이메일주소 <a
									href="mailto:bnh@hyundaibioland.co.kr">bnh@hyundaibioland.co.kr</a></span><span
									class="last">사업자등록번호 312-81-24525 <span class="link"><a
										href="#"
										onclick="wisaOpen(&quot;http://www.ftc.go.kr/info/bizinfo/communicationViewPopup.jsp?wrkr_no=3128124525&quot;,&quot;biz_check_frame&quot;,&quot;yes&quot;,&quot;780&quot;,&quot;928&quot;); return false;">사업자정보확인</a></span></span><br>
								<span>주소 충청북도 청주시 흥덕구 오송읍 오송생명2로 22 주식회사 현대바이오랜드</span><span
									class="last">통신판매업 신고번호 제2022-충북청주-1145호</span>
								&nbsp;&nbsp;&nbsp;<span class="last">고객님은 안전거래를 위해 현금으로
									결제 시 저희 쇼핑몰에 가입한 구매 안전 서비스를 이용하실 수 있습니다. <span class="link"><a
										href="javascript:goValidEscrow('ws_hyeondaedd');">서비스 가입사실
											확인</a></span>
								</span>
							</address>
							<!-- //쇼핑몰정보 및 에스크로 -->
							<p class="copyright">
								© 2022 <strong>HYUNDAI BIOLAND </strong> ALL RIGHTS RESERVED. <a
									href="http://by.wisa.co.kr/www.rexremall.com" target="_blank"
									alt="위사 호스팅" title="위사 호스팅"> &nbsp; &nbsp; managed &amp;
									hosted by WISA.</a>
							</p>
						</div>
						<ul class="sns">
							<li><a href="https://www.facebook.com/officialrexre/"
								target="_blank" class="fb">facebook</a></li>
							<li><a href="http://pf.kakao.com/_xjFMxbT" target="_blank"
								class="kakao">kakaotalk</a></li>
							<li><a href="https://www.instagram.com/rexre.official"
								target="_blank" class="insta">instagram</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- //하단 -->
		</div>
		<!-- placeholder 스크립트 (삭제하시면 ie 하위브라우저에서 구현되지 않습니다.) -->




		<script
			src="https://www.rexremall.com/_skin/skbioland_200731/img/../placeholder.js"></script>
		<script type="text/javascript">
// 인기검색어 폰트사이즈 제어
$(document).ready(function(){
	$('.header').each(function(idx) {
		if ($(this).find('.hot_keyword .list li').length > 8){
			$(this).find('.hot_keyword .list').addClass('small');
		}
	})
});
</script>

	</div>
	<script type="text/javascript" defer="defer">
$(document).ready(function() {
	});
</script>
	<script type="text/javascript"
		src="https://www.rexremall.com/wm_engine_SW/_engine/common/auto_scroll.js"
		defer="defer"></script>
	<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
	<script type="text/javascript">Kakao.init('35f0e015717743bf7c71437e8faf25bd');</script>
	<script type="text/javascript">
	if(typeof wcs != 'undefined') {
		if(typeof cpa == 'undefined') var cpa = {};
		if(cpa['order']) {
			cpa['cnv'] = wcs.cnv("1", "0");
		}
		wcs_do(cpa);
	}
</script>
	<!-- 페이징 처리 js 함수 -->
	<script type="text/javascript">
	var actionForm = $("#actionForm"); 
	$(".paginate_button a").on("click",function(e) {
		e.preventDefault(); 
		console.log('click');
		actionForm.find("input[name='pageNum']").val($(this).attr("href"));
		actionForm.submit(); 
	});
	</script>



	<span itemscope="" itemtype="http://schema.org/Organization">
		<link itemprop="url" href="https://www.rexremall.com"> <a
		itemprop="sameAs" href="https://www.facebook.com/officialrexre/"></a>
		<a itemprop="sameAs" href="https://pf.kakao.com/_xjFMxbT"></a> <a
		itemprop="sameAs" href="https://www.instagram.com/rexre.official"></a>
	</span>

</body>
</html>