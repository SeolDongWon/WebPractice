<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="view/color.jspf"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<title>글보기</title>
<link href="style.css?ver=1" rel="stylesheet" type="text/css" />
</head>
<body bgcolor="${bodyback_c}">
	<div class="container mt-3">
		<div align="center">
			<b>글내용 보기</b>
		</div>
		<form>
			<table align='center' width='500' border='1'>
			<div class='container-sm'>
				<tr height="30">
					<td align="center" width="125" bgcolor="${value_c}">글번호</td>
					<td align="center" width="125">${article.num}</td>
					<td align="center" width="125" bgcolor="${value_c}">조회수</td>
					<td align="center" width="125">${article.readcount}</td>
				</tr>
				<tr height="30">
					<td align="center" width="125" bgcolor="${value_c}">작성자</td>
					<td align="center" width="125">${article.writer}</td>
					<td align="center" width="125" bgcolor="${value_c}">작성일</td>
					<td align="center" width="125" align="center">${article.regdate}</td>
				</tr>
				<tr height="30">
					<td align="center" width="125" bgcolor="${value_c}">글제목</td>
					<td align="center" width="375" colspan="3">${article.subject}</td>
				</tr>
				<tr height="30">
					<td align="center" width="125" bgcolor="${value_c}">글내용</td>
					<td align="left" width="375" colspan="3"><pre>${article.content}</pre></td>
				</tr>
				<tr>
					<td colspan="4" bgcolor="${value_c}" align="right"><input
						type="button" value="글수정"
						onclick="document.location.href='/jsptest/board/updateForm.do?num=${article.num}&pageNum=${pageNum}'"
						class="btn btn-primary"> &nbsp;&nbsp;&nbsp;&nbsp; <input
						type="button" value="글삭제"
						onclick="document.location.href='/jsptest/board/deleteForm.do?num=${article.num}&pageNum=${pageNum}'"
						class="btn btn-primary"> &nbsp;&nbsp;&nbsp;&nbsp; <!-- 수정<1> -->
						<input type="button" value="답글쓰기"
						onclick="document.location.href='/jsptest/board/writeForm.do?num=${article.num}&ref=${article.ref}&step=${article.step}&depth=${article.depth}'"
						class="btn btn-primary"> &nbsp;&nbsp;&nbsp;&nbsp; <input
						type="button" value="글목록"
						onclick="document.location.href='/jsptest/board/list.do?pageNum=${pageNum}'"
						class="btn btn-primary"></td>
				</tr>
				</div>
			</table>
		</form>
	</div>
</body>
</html>