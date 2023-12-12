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
<title>글작성</title>
<link href="style.css?ver=1" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js?ver=1"></script>
</head>
<body bgcolor="${bodyback_c}">
	<div class="container mt-3">
		<div align="center">
			<b>글쓰기</b>
		</div>
		<form action="/jsptest/board/writePro.do" name="writeForm"
			method="post" onsubmit="return writeSave()">
			<input type="hidden" name="num" value="${num}"> <input
				type="hidden" name="ref" value="${ref}"> <input
				type="hidden" name="step" value="${step}"> <input
				type="hidden" name="depth" value="${depth}">

			<table width="450" border="1" cellpadding="0" cellspacing="0"
				align="center" bgcolor="${bodyback_c}">
				<%-- <tr>
					<td align="right" colspan="2" bgcolor="${value_c}"><a
						href="/jsptest/board/list.do"class="btn btn-primary">글목록</a></td>
				</tr> --%>
				<tr>
					<td width="70" bgcolor="${value_c}" align="center">이름</td>
					<td width="330"><input type="text" size="12" maxlength="12"
						name="writer" class="form-control" /></td>
				</tr>
				<tr>
					<td width="70" bgcolor="${value_c}" align="center">제목</td>
					<td width="330">
					<c:if test="${num == 0 }">
							<input type="text" size="50" maxlength="50" name="subject" class="form-control"  />
					</c:if> 
					<c:if test="${num!= 0 }">
							<input type="text" size="50" maxlength="50" name="subject"	value="[답변]" class="form-control" />
					</c:if></td>
				</tr>
				<tr>
					<td width="70" bgcolor="${value_c}" align="center">이메일</td>
					<td width="330">
					<input type="text" size="30" maxlength="30"						name="email" class="form-control" /></td>
				</tr>
				<tr class="mb-3 mt-3">
					<td width="70" bgcolor="${value_c}" align="center">내용</td>
					<td width="330"><textarea class="form-control" name="content" rows="13" cols="50"></textarea>
					</td>
				</tr>
				<tr>
					<td width="70" bgcolor="${value_c}" align="center">비밀번호</td>
					<td width="330"><input type="password" size="10"
						maxlength="10" name="pass" class="form-control" /></td>
				</tr>
				<tr>
					<td colspan="2" bgcolor="${value_c}" align="center"><input
						type="submit"  value="글쓰기" class="btn btn-primary"/> <input type="reset" value="다시작성" class="btn btn-primary"/>
						<input type="button" value="글목록"
						onclick="window.location='/jsptest/board/list.do'"class="btn btn-primary"></td>
				</tr>
			</table>
		</form>
	</div>
	<!-- 예외처리<2> -->
</body>
</html>