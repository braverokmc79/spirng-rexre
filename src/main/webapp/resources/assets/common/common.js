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

function mariExec(mari_mode,no,dauth) {
	var mf = document.mariFrm;
	if(mari_mode == 'write@del' && dauth!='3') {
		if(confirm(_lang_pack.common_confirm_delete)) {
			mf.target = hid_frame;
			mari_mode = 'write@del_exec';
		}
		else return;
	} else if(mari_mode=='write@comment_del') {
		if(dauth!='3') {
			if(confirm(_lang_pack.common_confirm_delete)) {
				mf.target=hid_frame;
				mari_mode='write@comment_del_exec';
				mf.no.value=no;
			}
			else return;
		} else {
			//mf.listURL.value=this_url;
		}
	}

	if(mari_mode=='write@write') {
		mf.no.value='';
	}

	if(mari_mode=='view@vote_exec') {
		mf.temp.value=dauth;
		mf.target=hid_frame;
	}

	if(no) mf.no.value = no;
	else mf.page.value = "";
	mf.mari_mode.value = mari_mode;
	mf.submit();
}

function checkMariWrite(f) {
	if(mlv==10) {
		if(!checkBlank(f.name, _lang_pack.common_input_name)) return false;
		if(!checkBlank(f.pwd, _lang_pack.common_input_pwd)) return false;
	}

	if(!checkBlank(f.title, _lang_pack.common_input_subject)) return false;
	if(typeof f.content2!='undefined') {
		try { submitContents('content2', ''); } catch (ex) { }
		f.content.value=f.content2.value;
	}
	var content_tmp = f.content.value.replace(/(<br( ?\/)?>)+$/i, '');
	if(!content_tmp) {
		alert(_lang_pack.common_input_content);
		return false;
	}
	if(f.use_cate.value=="Y") {
		if(!checkSel(f.cate, _lang_pack.common_input_cate)) return false;
	}

	if(typeof f.spwd!='undefined') {
		spwd_msg = _lang_pack.common_input_pwd;
		if(typeof f.spwd_name!='undefined') spwd_msg=f.spwd_name.value;
		if(!checkBlank(f.spwd,spwd_msg)) return false;
	}
	//캡차
	if(!f.no.value) {
		if($('#grecaptcha_element').size()>0) {
			if(typeof(grecaptcha) != 'undefined'){
				if(grecaptcha.getResponse() == ""){
					alert(_lang_pack.board_capcha_connot);
					return false;
				}
			}
		}
	}
	printFLoading();
}

function checkMariComment(f){
	if(mlv==10) {
		if(f.name.value=="이름") f.name.value="";
		if(!checkBlank(f.name, _lang_pack.common_input_name)) return false;
		if(f.pwd.value=="비밀번호") f.pwd.value="";
		if(!checkBlank(f.pwd, _lang_pack.common_input_pwd)) return false;
	}

	if(!checkBlank(f.content, _lang_pack.common_input_content)) return false;
	f.target = hid_frame;
}

function checkPassword(f){
	if(f.mari_mode.value=="view@view")
	{
		f.target=hid_frame;
		f.mari_mode.value='view@secret_exec';
	}

	if(!checkBlank(f.pwd, _lang_pack.common_input_pwd)) return false;
}
function checkSPassword(f){
	f.target=hid_frame;
	f.mari_mode.value='view@secret_exec';

	if(!checkBlank(f.spwd, _lang_pack.common_input_pwd)) return false;
}

function onBlank(o) {
	o.value='';
}

function mariViewLink(board,dno,lno,db,target){
	window.frames[hid_frame].location.href=board+'?mari_mode=view@view_link&db='+db+'&no='+dno+'&link_no='+lno+'&target='+target;
}


function mariVote(pt){
	if(mlv==10) {
		alert(_lang_pack.board_info_vote);
		return;
	}

	if(confirm(_lang_pack.board_confirm_vote)) {
		mariExec('view@vote_exec','',pt);
	}
}

function Vote(pt){
	if(mlv==10) {
		alert(_lang_pack.board_info_vote);
		return;
	}

	if(confirm(_lang_pack.board_confirm_vote)) {
		mariExec('view@vote_exec','',pt);
	}
}


/*********************************************************************/

function selectALL(tp,o){
	for (i=0; i<o.length; i++)
	{
		if(tp==1)
		{
			o[i].checked=true;
		}
		else
			o[i].checked=false;
	}
}

function countSel(o){
	ck=0;
	for (i=0; i<o.length; i++)
	{
		if(o[i].checked==true)
		{
			ck++;
		}
	}
	return ck;
}
function checkCreateBoard(f){
	if(!checkBlank(f.db, _lang_pack.board_input_dbname)) return false;
}

function deleteBoard(db){
	if(confirm(_lang_pack.board_confirm_rmdb)) {
		document.listFrm.delete_db.value=db;
		document.listFrm.submit();
	}
}

function getMariComment(db, no) {
	$.ajax({
		type: 'get',
		url: root_url+'/board/',
		data: 'db='+db+'&mari_mode=view@comment_exec&no='+no+'&ajax_comment=Y',
		dataType : 'html',
		success: function(result) {
			$('#mari_comment_ajax_'+no).html(result);
		}
	});
}

function addRefProduct(param) {
	$.post('/main/exec.php?'+param, {'exec_file':'common/prdSelect.inc.php', 'action':'setBoardProduct'}, function(r) {
		var content = $("<div>"+r+"</div>");
		var layer = $('#product_search_frm');

		if(layer.length > 0) {
			layer.html(content.find('#product_search_frm').html());
		} else {
			setDimmed('#000', .5);
			$('body').append(content);

			var layer = $('#product_search_frm');
			var de = document.documentElement.scrollTop >= document.body.scrollTop ? document.documentElement : document.body;
			var top =($(window).height()/2)-(layer.height()/2)+$(document).scrollTop();
			var left =($(window).width()/2)-(layer.width()/2)+$(document).scrollLeft();;

			layer.css({'position':'absolute', 'left':left, 'top':top, 'z-index':1001});
		}
	});
}

function refProductSearch(f, page) {
	if(!f) f = document.getElementById('product_search_frm');
	if(page) f.page.value = page;

	var param = $(f).serialize();
	addRefProduct(param);

	return false;
}

function refProductSelectOK(add) {
	var checked = $('.pno[name="product_select_pno\[\]"]:checked');

	removeDimmed();
	$('#product_search_frm').remove();
	$(navigator.appName.indexOf("Internet Explorer") != -1 ? 'html' : 'body').css('overflow','visible');

	var f = document.getElementById('wrtFrm');
	if(f) {
		if(add == true && checked.length > 0) {
			var tmp = f.pno.value.split(',');
			if(tmp.length+checked.length > 10) {
				window.alert(_lang_pack.board_error_maxref);
				return;
			}
			checked.each(function() {
				for(var key in tmp) {
					if(tmp[key] == this.value) return;
				}
				f.pno.value += ','+this.value;
			});
			f.pno.value = f.pno.value.replace(/^,/, '');
		}

		$.post('/main/exec.php', {'exec_file':'common/prdSelected.inc.php', 'pno':f.pno.value}, function(r) {
			$('#board_product_list_div').html(r);
		});
	}
}

function refProductRemove(no) {
	var f = document.getElementById('wrtFrm');
	var tmp = f.pno.value.split(',');
	var n = '';
	for(var key in tmp) {
		if(tmp[key] == no) continue;
		n += ','+tmp[key];
	}
	f.pno.value = n.replace(/^,/, '');
	refProductSelectOK();
}