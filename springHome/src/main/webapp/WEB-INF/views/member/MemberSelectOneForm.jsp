<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>

<style type="text/css">

table, tr, td, th {
	border: 1px solid black;	
}

table {
	border-collapse: collapse;
}

</style>

<script type="text/javascript">
	function pageMoveListFnc(){
		location.href = './list.do';
	} 
	
	function pageMoveUpdateFnc(no){
		var url = './update.do?no=' + no;
		location.href = url;
	}
</script>

</head>
<body>

	<jsp:include page="/WEB-INF/views/Header.jsp"/>

	<h1>회원 정보</h1>
		
	<table>
		 
		<tr>
			<td>번호</td><td>${memberVo.no}</td>
		</tr>
		
		<tr>
			<td>이름</td><td>${memberVo.name}</td>
		</tr>
		
		<tr>
			<td>비밀번호</td><td>${memberVo.password}</td>
		</tr>
		
		<tr>
			<td>이메일</td><td>${memberVo.email}</td>
		</tr>
		
		<tr>
			<td>가입일</td><td><fmt:formatDate value="${memberVo.createDate}" 
					pattern="YYYY-MM-dd hh:mm"/> </td>
		</tr>
		 
		<tr>
			<td><input type="button" value="뒤로가기" onclick="pageMoveListFnc();"></td>
			<td><input type="button" value="수정" onclick="pageMoveUpdateFnc(${memberVo.no});"></td>
		</tr> 
		 
	</table>

	<jsp:include page="/WEB-INF/views/Tail.jsp"/>
</body>
</html>