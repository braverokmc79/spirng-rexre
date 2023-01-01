<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0055)https://www.thehandsome.com/ko/svcenter/mantomaninquiry -->
<html lang="ko"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="naver-site-verification" content="2f9358e1e36605519854a595f243f0171519dd1d">
<meta name="google-site-verification" content="0bGV8gPhwO_PzritNvIsz2k74EH5yPsrXXluJ8ZUed8">
<meta name="google-site-verification" content="dO99-Ao-ywXeVDEz4jz5nJBXzQXVCgmX4WXzxl_Nf3c">	
<meta name="facebook-domain-verification" content="jvxpdjfrqqan9oe1qdrjfyxj553an6">
<meta http-equiv="X-UA-Compatible" content="IE=edge"> 

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="No-Cache">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=1, target-densitydpi=medium-dpi">
<meta property="og:type" content="article">
        

<title>ReXRe</title>
<link rel="shortcut icon" type="image/x-icon" href="https://www.rexremall.com/favicon.ico" style="user-select: auto;">
<link rel="stylesheet"  href="${pageContext.request.contextPath}/resources/css_files/common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css_files/contents.css">
<style type="text/css" media="print">
	@IMPORT url("${pageContext.request.contextPath}/_ui/desktop/common/blueprint/print.css");
</style>

<form id="manToManInquiryForm" name="manToManInquiryForm" method="post" enctype="multipart/form-data"><input type="hidden" id="orderPk" name="orderPk">
  <input type="hidden" id="pkInquiry" name="pkInquiry" value="">
  
  <fieldset>
    <legend>F&Q 게시글 작성</legend> 
    <div class="tblwrap">
      <table class="tbl_wtype1">
        <caption>게시글 작성</caption>
        <colgroup>
          <col style="width:140px">
          <col>
        </colgroup>
        <tbody>
          <tr>
              <th scope="row"><strong class="reqd"></strong>　게시판</th>
              <td class="storeQue">
                <p>Q&A</p>
              </td>
            </tr>
          <tr>
            <th scope="row"><strong class="reqd">*</strong>문의 종류</th>
            <td>
              <div class="form-group col-sm-5">
                <select class ="form-control" id="addressKindU" name="addressKindU" 
                onchange="addressKindChange(this)" style="width: 150px">
                <option>대분류</option>
                <option value ="a">주문결제</option>
                <option value ="b">배송</option>
								<option value ="c">취소</option>
								<option value ="d">교환/환불</option>
								<option value ="e">회원</option>
								<option value ="f">기타</option>

                
              </select>
             </div>
              </td>
          </tr>
          <tr>
            <th scope="row"><strong class="reqd">*</strong>제목</th>
            <td>
              <input type="text" id="subject" name="subject" title="제목" class="w_all">
            </td>
          </tr>
          <tr>
            <th scope="row">
              <strong class="reqd">*</strong>내용<span class="com_txt_p">(2000자 이하)</span>
            </th>
            <td>
              <!-- textarea -->
              <textarea id="contents" name="contents" title="내용" cols="30" rows="10" placeholder="내용을 입력해주세요"></textarea>
              <!-- //textarea -->
            </td>
          </tr>
          <!-- popup end -->
          
          <tr>
            <th scope="row" class="th_space">사진등록</th>
            <td>
              <!-- File upload -->
              <div class="file_upload">
                <input type="text" id="textManToManFile" class="text" title="파일 첨부하기" readonly="readonly" name="fileText">
                <div class="upload_btn">
                  <button type="button" id="uploadFile" class="img_upload" title="파일찾기"><span>파일찾기</span></button>
                  <input type="file" name="mantomanFile" id="mantomanFile" class="btn add_s" title="파일찾기">
                </div>
              </div>
              <p class="txt_guide">10MB 미만의 jpg,gif,png 파일만 첨부하실 수 있습니다.</p>
              <!-- //File upload -->
            </td>
          </tr>
        </tbody>
      </table>
    </div>
    <!-- btn -->
    <div class="btnwrap">
      <input type="button" id="cancleBtn" value="취소" class="btn wt">
      <input type="button" id="registerBtn" value="등록" class="btn gray mr0">
      </div>
    <!-- //btn -->
  </fieldset>
</form>

<script type="text/javascript">


</script>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/css_files/beta.fix.js">

	//취소버튼
	$("#cancleBtn").click(function(){
		var lc = new layerConfirm("작성을 취소하시겠습니까?");
		lc.confirmAction = function(){
			if("" == "mypage") {
				location.href="${pageContext.request.contextPath}/ko/mypage/mymantomaninquiry?refererUrl=";
			} else {
				location.href="${pageContext.request.contextPath}/ko/svcenter/mantomaninquiry";
			}
		};
	});
	
	// 등록버튼
	$("#registerBtn").click(function(){
		var pk = "";
		alert("게시글 등록");
		registerMantomaninquiry();
	});
	
	function registerMantomaninquiry() {

		if ($("select[name=largeClassificationCode]").val()=="") {
			var lc = new layerAlert("대분류를 선택해주시길 바랍니다.");
			lc.confirmAction = function(){
				$('#largeClassificationCode').focus();
			};
			return false;
		}
		if ($("select[name=smallClassificationCode]").val()=="") {
			var lc = new layerAlert("소분류를 선택해주시길 바랍니다.");
			lc.confirmAction = function(){
				$('#smallClassificationCode').focus();
			};
			return false;
		}
		if ($('#subject').val()=="") {
			var lc = new layerAlert("제목을 입력해주시길 바랍니다.");
			lc.confirmAction = function(){
				$('#subject').focus();
			};
			return false;
		}
		if ($('#contents').val()=="") {
			var lc = new layerAlert("내용을 입력해주시길 바랍니다.");
			lc.confirmAction = function(){
				$('#contents').focus();
			};
			return false;
		}	
		var tUrl = "";
		var dbTxt = $('#contents').val(); 
		var replacement = replaceAll(dbTxt, /\n/g, '<br/>');
		$('#contents').val(replacement) ;
		$("#productList").remove();
		var productCdList = "";
		var orderPkList = "";
		$(".shpro_wrap ul li").each(function (index, el) {
			if(index != 0) {productCdList += ",";orderPkList += ",";}
			productCdList += $(el).data("prdcd");
			if($(el).attr("orderPk")!="undefined" && typeof $(el).attr("orderPk") != "undefined"){orderPkList += $(el).attr("orderPk");}else{orderPkList += "0";}
		});
		$("#orderPk").val(orderPkList);
		$("#manToManInquiryForm").append('<input type="hidden" id="productList" name="productList" value="'+productCdList+'" class="mantomanProductList"/>');

		if($('#mantomanFile').val() == null || $('#mantomanFile').val() == ''){
			$("#manToManInquiryForm").attr("action", "/ko/svcenter/mantomaninquirynoattach" + "?refererUrl=");
			$("#manToManInquiryForm").submit();
		}else{
			$("#manToManInquiryForm").attr("action", "/ko/svcenter/mantomaninquirycomplete" + "?CSRFToken=287eeda0-0ae7-4986-8945-227786432136&refererUrl=");
			$("#manToManInquiryForm").submit();
		}
		
	}
	
	//check file
	$(document).on('change', 'input[type=file]', function() {
		var fileName = $(this)[0].files[0].name.split(".");
		var fileSize = $(this)[0].files[0].size;
		var maxSize = 10 * 1024 * 1024;
		var fileExtension = fileName[parseInt(fileName.length-1)].toUpperCase();
		if(fileExtension == 'JPG'|| fileExtension == 'JPEG' || fileExtension == 'GIF'|| fileExtension == 'PNG'){
		}else{
			$(this).val('');
			$("input[name=fileText]").val('');
			var la = new layerAlert("파일 확장자를 확인해 주세요");
			la.confirmAction = function(){
				return;
			};
		}
		
		if(fileSize > maxSize){
			$(this).val('');
			$("input[name=fileText]").val('');
			var la = new layerAlert("10MB 미만의 jpg,gif,png 파일만 첨부하실 수 있습니다.");
			la.confirmAction = function(){
				return;
			};
		}
		$("input[name=fileText]").val($(this).val());
	});
	
	$(".btn_close").on("click", function(){
		hideShowLayer();
		$(".popwrap").hide(); 
	});
	

</script>
