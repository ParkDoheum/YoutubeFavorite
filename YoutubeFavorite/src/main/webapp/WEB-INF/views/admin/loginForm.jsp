<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<c:url value="/login" var="loginUrl" />
	${loginUrl}
	<form:form name="f" action="${loginUrl}" method="POST">
		<c:if test="${param.error != null}"> 
			<p>아이디와 비밀번호가 잘 못 되었습니다.</p>
		</c:if> 
		<p> 
			<label for="username">아이디</label> 
			<input type="text" id="username" name="username" /> 
		</p> 
		<p> 
			<label for="password">비밀 번호</label> 
			<input type="password" id="password" name="password"/> 
		</p> 
		<input type="submit" class="btn" value="로그인">
		<a href="join"><button type="button">회원가입</button></a>	
	</form:form>
	
	
</body>
</html>