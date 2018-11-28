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
	
	<form:form>
		<p> 
			<label for="u_id">아이디</label> 
			<input type="text" id="u_id" name="u_id" value="microform" /> 
		</p> 
		<p> 
			<label for="u_pw">비밀번호</label> 
			<input type="password" id="u_pw" name="u_pw" value="1212"/> 
		</p>
		<p> 
			<label for="u_name">이름</label> 
			<input type="text" id="u_name" name="u_name" value="박도흠"/> 
		</p> 
		<p> 
			<label for="u_auth">권한</label> 
			<input type="text" id="u_auth" name="u_auth" value="USER"/> 
		</p>
		<button type="submit" class="btn">회원가입</button> 
	</form:form>
</body>
</html>