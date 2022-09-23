<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="/header.jsp" />

<script type="text/javascript">
function send() {
	location.href='/sideProject/Controller?cmd=insertPage';
}
</script>

<div id="wrapper" style="background:black;">

	<div id="container_sub">

		<h1 class="subTitle">Introduce Myself</h1>
		
		<p class="subTxt">나는 말이야 ..</p>	
	
		<div>
			
			mbti : ISFJ
			
		</div>
	
	</div>

</div>

<jsp:include page="/footer.jsp" /> 
