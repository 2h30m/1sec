<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="/header.jsp" />

<script type="text/javascript">
function send(f) {
	if(f.id.value==""){
		alert("ID를 입력하세요.");
		f.id.focus();
		return false;
	}
	if(f.id.length < 4){
		alert("ID는 최소 4자이상 입력하세요.");
		f.writer.focus();
		return false;
	}
	if(f.pw.value==""){
		alert("비밀번호를 입력하세요.");
		f.pw.focus();
		return false;
	}
	if(f.pw.value != f.pw_re.value){
		alert("비밀번호가 같지 않습니다.");
		f.pw.focus();
		return false;
	}
	if(f.pw.length < 4 && f.pw_re.length < 4){
		alert("비밀번호는 최소 4자이상 입력하세요.");
		f.pw.focus();
		return false;
	}
	
	f.action = '/sideProject/Controller';
	f.submit();
}
</script>

<div id="wrapper">

	<div id="container_sub">
		
		<div id="mb_style">
				
	    	<h1 class="subTitle">회원가입</h1>		
	    	
			<form name="register" method="post">
			    <input type="hidden" name="cmd" value="register">
			
			    <div id="register_frm">
			    	<div class="form-floating mgB10">
					    <input class="form-control" type="text" name="id" id="reg_id" placeholder="아이디" maxlength="20" />
					    <label class="form-label" for="id">아이디 <span class="red">*</span></label>
				    </div>
				    <div class="form-floating mgB10">
					    <input class="form-control" type="password" name="pw" id="reg_pw" placeholder="비밀번호" maxlength="20" />
					    <label class="form-label" for="pw">비밀번호 <span class="red">*</span></label>
				    </div>
				    <div class="form-floating mgB10">
					    <input class="form-control" type="password" name="pw_re" id="reg_pw" placeholder="비밀번호 확인" maxlength="20" />
					    <label class="form-label" for="pw_re">비밀번호 확인 <span class="red">*</span></label>
				    </div>
				    <div class="form-floating mgB10">
					    <input class="form-control" type="text" name="name" id="reg_name" placeholder="이름" maxlength="50" />
					    <label class="form-label" for="name">이름</label>
				    </div>
				    <div class="form-floating mgB10">
					    <input class="form-control" type="text" name="email" id="reg_email" placeholder="이메일" maxlength="100" />
					    <label class="form-label" for="email">이메일</label>
				    </div>
			        
			    	<input type="button" value="회원가입" class="btn_submit btn" onclick="send(this.form)">
			    </div>
			
			</form>
		</div>
		
	</div>

</div>

<jsp:include page="/footer.jsp" /> 