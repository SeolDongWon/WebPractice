<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="view/color.jspf"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link href="style.css?ver=1" rel="stylesheet" type="text/css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body bgcolor="${bodyback_c}">
	<div class='container-sm'>
		<div align="center">
			<b>글목록(전체글:${count}) </b>
		</div>
		<table align="right">
			<td><a href="/jsptest/board/writeForm.do"
				class="btn btn-primary">글쓰기</a></td>
		</table>
		<c:if test="${count==0 }">
			<table width="700" border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td align="center">게시판에 저장된 글이 없습니다.</td>
				</tr>
			</table>
		</c:if>
		<c:if test="${count>0 }">
			<!-- <table width="700" border="1" cellpadding="0" cellspacing="0"> -->
			<table align='center' border='1' class="table table-striped">
				<tr heigth="30" bgcolor="${value_c }">
					<td align="center" width="50">번 호</td>
					<td align="center" width="250">제 목</td>
					<td align="center" width="100">작성자</td>
					<td align="center" width="150">작성일</td>
					<td align="center" width="50">조 회</td>
					<td align="center" width="100">IP</td>
				</tr>
				<c:forEach var="article" items="${articleList}">
					<tr height="30">
						<td align="center" width="50"><c:out value="${number}" /> <c:set
								var="number" value="${number-1 }" /></td>
						<td width="250"><c:if test="${article.depth>0}">
								<img src="images/level.gif" width="${5*article.depth }"
									height="16">
								<img src="images/re.gif">
							</c:if> <c:if test="${article.depth==0}">
								<img src="images/level.gif" width="${5*article.depth }"
									height="16">
							</c:if> <a
							href="/jsptest/board/content.do?num=${article.num}&pageNum=${currentPage}">
								${article.subject}</a> <c:if test="${article.readcount>=20 }">
								<img src="images/hot.gif" border="0" height="16">
							</c:if></td>
						<td align="center" width="100"><a
							href="mailto:${article.email}">${article.writer}</a></td>
						<td align="center" width="150">${article.regdate}</td>
						<td align="center" width="50">${article.readcount}</td>
						<td align="center" width="100">${article.ip}</td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
		<div align="center">
			<form method="get">
				<input type="text" name="searchInput"> 
				<input type="submit" value="검색.미완">
			</form>
		</div>
		<c:if test="${count >0 }">
			<div align="center">
				<ul class="pagination justify-content-center">
					<c:set var="imsi" value="${count%pageSize==0?0:1 }" />
					<c:set var="pageCount" value="${count/pageSize+imsi }" />
					<c:set var="pageBlock" value="${3}" />
					<fmt:parseNumber var="result"
						value="${(currentPage-1) / pageBlock}" integerOnly="true" />
					<c:set var="startPage" value="${result*pageBlock+1 }" />
					<c:set var="endPage" value="${startPage+pageBlock-1 }" />
					<c:if test="${endPage>pageCount }">
						<c:set var="endpage" value="${pageCount}" />
					</c:if>
					<c:if test="${endPage>pageBlock }">
						<li class="page-item"><a class="page-link"
							href="/jsptest/board/list.do?pageNum=${startPage-pageBlock}">이전</a></li>
					</c:if>
					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<li class="page-item"><a class="page-link"
							href="/jsptest/board/list.do?pageNum=${i}">${i}</a></li>
					</c:forEach>
					<c:if test="${endPage<pageCount }">
						<li class="page-item"><a class="page-link"
							href="/jsptest/board/list.do?pageNum=${startPage+pageBlock}">다음</a></li>
					</c:if>
				</ul>
			</div>
		</c:if>
	</div>
</body>
</html>

