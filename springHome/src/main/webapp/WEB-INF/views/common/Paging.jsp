<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<style type="text/css">

nav > ul {
	list-style-type: none;
	padding: 0px;
	overflow: hidden;
	background-color: #333333;
	display: table;
	margin-left: auto;
	margin-right: auto;
}

nav > ul > li {
	float: left;
}

nav > ul > li > a {
	display: block;
	color: white;
	text-align: center;
	padding: 16px;
	text-decoration: none;
}

nav > ul > li > a:hover{
	color: #FFD9EC;
	background-color: #5D5D5D;
	font-weight: bold;
}

.active{
	color: #FFD9EC;
	background-color: #5D5D5D;
	font-weight: bold;
}

</style>

<script type="text/javascript">
	function goPage(pageNumber) {
		var curPage = document.getElementById('curPage');
		curPage.value = pageNumber;
		
		var pagingForm = document.getElementById('pagingForm');
		pagingForm.submit();
	}
	
	window.onload = function() {
		var curPageDoc = document.getElementById('curPage');
		var id = 'pageButton' + curPageDoc.value;
		
		var curPageObj = document.getElementById(id);
		curPageObj.setAttribute('class', 'active');
	}
</script>

	<nav>
		<ul>
			<li>
				<a href="#" 
					onclick="goPage(${pagingMap.memberPaging.prevBlock});">
					<span>≪</span>
				</a>
			</li>
			
			<c:forEach var="num" begin="${pagingMap.memberPaging.blockBegin}"
				end="${pagingMap.memberPaging.blockEnd}">
			<li id='pageButton${num}'>
				<a href="#" onclick="goPage(${num});">
					<c:out value="${num}"/>
				</a>
			</li>
			</c:forEach>

			<li>
				<a href="#" 
					onclick="goPage(${pagingMap.memberPaging.nextBlock});">
					<span>≫</span>
				</a>
			</li>
			
		</ul>
	</nav>
