<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이미지 업로드</title>
</head>
<body>
	<form:form id="frm" onsubmit="return beforeSend()" enctype="multipart/form-data">
		<p>제목 : <input type="text" name="title"></p>
		<p>이미지 : <input type="file" name="img" accept="image/*"></p>
		<input type="submit" value="저장">			
	</form:form>
	<script>
		function beforeSend() {
			var frm = document.getElementById("frm");
			if(frm.title.value == "") {
				alert("제목을 입력해 주세요.");
				return false;
			} else if (frm.img.value == "") {
				alert("파일을 선택해 주세요.");
				return false;
			}
			return true;
		}
	</script>
</body>
</html>