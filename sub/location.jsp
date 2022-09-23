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

		<h1 class="subTitle">Location</h1>
		
		<p class="subTxt">나 여깃서</p>	
	
		<div>
			현타 오지게 오는 곳 ..
			<br/>
			<!-- * 카카오맵 - 지도퍼가기 -->
			<!-- 1. 지도 노드 -->
			<div id="daumRoughmapContainer1653468038369" class="root_daum_roughmap root_daum_roughmap_landing" style="width:100%;"></div>
			
			<!--
				2. 설치 스크립트
				* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
			-->
			<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
			
			<!-- 3. 실행 스크립트 -->
			<script charset="UTF-8">
				new daum.roughmap.Lander({
					"timestamp" : "1653468038369",
					"key" : "2adje",
					"mapWidth" : "1200",
					"mapHeight" : "360"
				}).render();
			</script>
		</div>
	
	</div>

</div>

<jsp:include page="/footer.jsp" /> 
