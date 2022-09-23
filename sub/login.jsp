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
	<c:when test="${member != null}">
		<script type="text/javascript">
			alert("로그인!");
		</script>
		<c:redirect url="/Controller?cmd=index" />
	</c:when>
	<c:otherwise>
		<script type="text/javascript">
			alert("로그인 정보가 없습니다.");
			history.back();
		</script>
	</c:otherwise>
</c:choose>

</body>
</html>

