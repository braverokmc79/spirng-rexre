<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- core 태그 라이브러리를 사용하기 위해 선언 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>

<body>
	<%@ include file="/WEB-INF/views/include/header.jsp"%>

	<iframe name="hidden1672363895" src="about:blank" width="0" height="0"
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

				<div class="header hyaluron fixed">
					<div class="gnb">
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
								<li class="active"><a href="/board?db=basic_2">전체보기</a></li>
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

						<c:forEach items="${list}" var="board">
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
								<tr>
									<th scope="row"><span class="icon">Q</span></th>
									<td class="tal"><span>[<c:out value="${board.boardCategory}"></c:out>]</span> 
									<a href="javascript:show(faq24)"><c:out value="${board.boardTitle}"></c:out></a></td>
									
								</tr>
								<tr id="faq24" class="faqcnt">
									<th scope="row"><span class="icon answer">A</span></th>
									<td class="tal">
										<div class="contents">
											<p><c:out value="${board.boardContent}"></c:out></p>
										</div>
										<div class="btn">
											<span class="box_btn w100 white"><a href="#"
												style="display: none;">수정</a></span> <span
												class="box_btn w100 white"><a href="#"
												style="display: none;">삭제</a></span>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
						<input type="hidden" id="${board.boardId}"
							value="${board.boardId}" />
						
						</tbody>
						</table>
						</c:forEach>

						<div class="page_write">
							<ul class="paging">
								<li></li>
								<li><strong>1</strong></li>
								<li><a href="?page=2&amp;db=basic_2">2</a></li>
								<li><a href="?page=3&amp;db=basic_2">3</a></li>
								<li></li>
							</ul>
							<div class="box_btn w100 write">
								<a style="display: none;">글쓰기</a>
							</div>
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
					<script>
function read(num){
	boardid = document.getElementById(num).value;
	pagenum = document.getElementById("pagenum").value;
	location.href = "/board/read?boardid="+boardid+"&pageNum="+pagenum;
}
</script>
				</div>
			</div>
			<!-- //중앙 -->
			<!-- 하단 -->
			<div id="sub_ft"></div>
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

<button onclick="show()"></button>

<script type="text/javascript">
/* 제목 클릭시 일어나는 이벤트 */
function show() {
	var con = document.getElementById("faq24");
	con.style.display = (con.style.display != 'none') ? "none" : "block";
}

var seq = "";
function show(rep) {
	if(seq != rep) {
		if(seq !="") seq.style.display = "none";
		rep.style.display = "";
		seq = rep;
	} else {
		rep.style.display = "none";
		seq = "";
	}
} 
</script>
	<span itemscope="" itemtype="http://schema.org/Organization">
		<link itemprop="url" href="https://www.rexremall.com"> <a
		itemprop="sameAs" href="https://www.facebook.com/officialrexre/"></a>
		<a itemprop="sameAs" href="https://pf.kakao.com/_xjFMxbT"></a> <a
		itemprop="sameAs" href="https://www.instagram.com/rexre.official"></a>
	</span>

	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>