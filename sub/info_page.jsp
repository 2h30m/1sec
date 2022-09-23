<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="/header.jsp" />

<script type="text/javascript">
function send(f){
	if( f.pw.value == "" ) {
		alert("비밀번호를 입력해주세요.");
		f.pw.focus();
		return;
	}
	if( f.pw_re.value == "" ) {
		alert("비밀번호 재입력해주세요.");
		f.pw_re.focus();
		return;
	}
	f.action = "/sideProject/Controller?cmd=edit";
	f.submit();
}
</script>

<div id="wrapper">

	<div id="container_sub">
	
		<div id="mb_style">
				
	    	<h1 class="subTitle">${member.id}님 정보 수정</h1>
	
			<form name="register" method="post">
			    <%-- <input type="hidden" name="m_idx" value="${member.m_idx }"> --%>
			
			    <div id="register_frm">
			    	<div class="form-floating mgB10">
			    		<input class="form-control" type="text" name="id" value="${member.id }" readonly />
					    <label for="id">아이디 <span class="red">*</span></label>
				    </div>
				    <div class="form-floating mgB10">
					    <input class="form-control" type="password" name="pw" id="reg_pw" placeholder="비밀번호" maxlength="20" />
					    <label for="pw">비밀번호 <span class="red">*</span></label>
				    </div>
				    <div class="form-floating mgB10">
					    <input class="form-control" type="password" name="pw_re" id="reg_pw" placeholder="비밀번호 확인" maxlength="20" />
					    <label for="pw_re">비밀번호 확인 <span class="red">*</span></label>
				    </div>
				    <div class="form-floating mgB10">
					    <input class="form-control" type="text" name="name" id="reg_name" value="${member.name }" maxlength="50" />
					    <label for="name">이름</label>
				    </div>
				    <div class="form-floating mgB10">
					    <input class="form-control" type="text" name="email" id="reg_email" value="${member.email }" maxlength="100" />
					    <label for="email">이메일</label>
				    </div>
			        
			    	<input type="button" value="정보수정" class="btn_submit btn" onclick="send(this.form)">
			    </div>
			
			</form>

		</div>
		
	</div>

</div>

<jsp:include page="/footer.jsp" /> 