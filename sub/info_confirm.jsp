<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="/header.jsp" />

<script type="text/javascript">
function confirm(f){
	var pw = "${member.pw}";		// pw : 현재 user 비밀번호
	
	if( f.pw.value == "" ) {
		alert("비밀번호를 입력해주세요.");
		f.pw.focus();
		return;
	} else if( f.pw.value != pw ) {	
		alert("비밀번호가 다릅니다. 다시 입력해 주세요.");
		f.pw.focus();
		return;
	}
	f.action = "/sideProject/Controller";
	f.submit();
}
</script>

<div id="wrapper">

	<div id="container_sub">
	
		<div id="mb_style">
				
	    	<h1 class="subTitle">${member.id}님 정보 수정</h1>
	
			<form method="post">
				<input type="hidden" name="cmd" value="infoPage">
				
				<div id="login_frm">
			        
					<div class="form-floating mgB10">
						<input class="form-control" type="password" name="pw" id="info_pw" placeholder="비밀번호" maxlength="20"/>
						<label for="info_pw">비밀번호</label>
					</div>
			       	<input type="button" value="로그인" class="btn_submit btn" onclick="confirm(this.form)">
			       	
			    </div>
			</form>

		</div>
		
	</div>

</div>

<jsp:include page="/footer.jsp" /> 