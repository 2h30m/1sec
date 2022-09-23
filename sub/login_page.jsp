<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="/header.jsp" />

<script type="text/javascript">
function send(f) {
	//var dbpw = ${member.pw};
	if(f.id.value==""){
		alert("ID를 입력하세요.");
		f.id.focus();
		return false;
	}
	if(f.pw.value==""){
		alert("비밀번호를 입력하세요.");
		f.pw.focus();
		return false;
	}
	/* if(f.pw.value!=dbpw){
		alert("비밀번호가 다릅니다.");
		f.pw.focus();
		return false;
	} */
	f.action = '/sideProject/Controller';
	f.submit();
}
</script>

<div id="wrapper">

	<div id="container_sub">
	
		<div id="mb_style">
				
	    	<h1 class="subTitle">로그인</h1>
	    			
			<form name="login" method="post">
			    <input type="hidden" name="cmd" value="login">
			
			    <div id="login_frm">
			        <div class="form-floating mgB10">
						<input class="form-control" type="text" name="id" id="login_id" placeholder="아이디" required maxlength="20"/>
						<label class="form-label" for="id">아이디</label>
					</div>
					<div class="form-floating">
						<input class="form-control" type="password" name="pw" id="login_pw" placeholder="비밀번호" required maxlength="20"/>
						<label class="form-label" for="id">비밀번호</label>
					</div>
			        <div class="bo_chk li_chk">	            
			            <input type="checkbox" name="save_id"> 아이디 기억하기
			        </div>
			       	<input type="button" value="로그인" class="btn_submit btn" onclick="send(this.form)">
			    </div>
			
			    <section class="mb_login_join">
			        <div>
			            <a href="register_page.jsp" class="login_join">회원 가입</a>
			            <a href="alert('준비중입니다!')" target="_blank" id="login_password_lost">회원정보찾기</a>
			        </div>
			    </section>
			
			</form>
		</div>
		
	</div>

</div>

<jsp:include page="/footer.jsp" /> 