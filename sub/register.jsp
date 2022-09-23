<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:choose>
	<c:when test="${isSuccess}">
		<script type="text/javascript">
			alert("회원가입에 실패하였습니다.");
			history.back();
		</script>
	</c:when>
	<c:otherwise>
		
		<script type="text/javascript">
			alert("회원가입이 완료되었습니다.");
			location.href="/sideProject/Controller?cmd=index";
		</script>
	</c:otherwise>
</c:choose>

</body>
</html>

