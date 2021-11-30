<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록</title>

<style type="text/css">

table, tr, td, th {
	border: 1px solid black;	
}

table {
	border-collapse: collapse;
}

</style>

</head>

<body>

	<jsp:include page="/WEB-INF/views/Header.jsp"/>

	<h1>회원목록</h1>
	<p>
		<a href="./add.do">신규회원</a>
	</p>
	
	<form id='pagingForm' action="./list.do" method="post">
		<select name='searchOption' >
			<c:choose>
				<c:when test="${searchMap.searchOption == 'all'}">
					<option value="all" selected="selected">전체</option>
					<option value="name">이름</option>
					<option value="email">이메일</option>
					 
				</c:when>
			
				<c:when test="${searchMap.searchOption == 'name'}">
					<option value="all">전체</option>
					<option value="name" selected="selected">이름</option>
					<option value="email">이메일</option>
				</c:when>
				
				<c:when test="${searchMap.searchOption == 'email'}">
					<option value="all">전체</option>
					<option value="name">이름</option>
					<option value="email" selected="selected">이메일</option>
				</c:when>
			</c:choose>
		</select>
		
		<input type="text" name="keyword" value="${searchMap.keyword}"
			placeholder="이름 또는 이메일 검색">
		
		<input type="hidden" id='curPage' name='curPage'
			value="${pagingMap.memberPaging.curPage}">	
	</form>
	
	<table>
		<tr>
			<th>번호</th><th>이름</th>
			<th>이메일</th><th>가입일</th>
			<th></th>
		</tr>
	<c:forEach var="memberVo" items="${memberList}">
		<tr>
			<td>${memberVo.no}</td>
			<td>
<%-- 				<a href='./update.do?no=${memberVo.no}'>${memberVo.name}</a> --%>
				<a href='./selectOne.do?no=${memberVo.no}'>${memberVo.name}</a>

			</td>
			<td>${memberVo.email}</td>
			<td>
				<fmt:formatDate value="${memberVo.createDate}" 
					pattern="YYYY-MM-dd hh:mm"/> 
			</td>
			<td>
				<a href='./deleteCtr.do?no=${memberVo.no}'>[삭제]</a>
			</td>
		</tr>
	</c:forEach>
		
	</table>
	
	<jsp:include page="/WEB-INF/views/common/Paging.jsp">
		<jsp:param value="${pagingMap}" name="pagingMap"/>
	</jsp:include>
	  
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>
	
</body>
</html>