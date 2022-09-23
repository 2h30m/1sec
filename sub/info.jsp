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
			alert("회원정보가 수정되었습니다.");
			location.href="/sideProject/Controller?cmd=index";
		</script>
	</c:when>
	<c:otherwise>
		<script type="text/javascript">
			alert("회원정보를 수정할 수 없습니다.");
			history.back();
		</script>
	</c:otherwise>
</c:choose>

</body>
</html>

