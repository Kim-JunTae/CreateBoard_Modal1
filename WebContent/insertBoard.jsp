<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>새 게시글 등록</title>
</head>
<body>
	<center>
		<h1>새 게시글 등록</h1>
		<a href="logout_proc.jsp">로그아웃</a>
		<hr>
		<form method="POST" action="insertBoard_proc.jsp">
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange" width="70">제목</td>
					<td align="left">
						<input name="title" type="text"/>
					</td>
				</tr>
				<tr>
					<td bgcolor="orange">작성자</td>
					<td align="left">
						<input name="writer" type="text"/>
					</td>
				</tr>
				<tr>
					<td bgcolor="orange">내용</td>
					<td align="left">
						<textarea name="content" rows="10" cols="40"></textarea>
					</td>
				</tr>
	
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="글 등록"/>
					</td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="getBoardList.jsp">전체 게시글 목록 보기</a>
	</center>
</body>
</html>