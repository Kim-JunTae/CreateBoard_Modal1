<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" errorPage="error.jsp"%>
<!-- 추가 -->
<%@ page import="board.BoardDO" %>
<%@ page import="board.BoardDAO" %>

<%	//자바코드
	//1. 폼에서 넘어온 상세 보기할 게시글 번호 추출
	String seq = request.getParameter("seq");
	
	//2. BoardDO 객체 생성하여 seq 중간저장소에 저장(초기화)한다.
	BoardDO boardDO = new BoardDO();
	boardDO.setSeq(Integer.parseInt(seq));
	
	//3. BoardDAO 객체 생성 후 게시글 상세보기 메소드 호출
	BoardDAO boardDAO = new BoardDAO();
	BoardDO board = boardDAO.getBoard(boardDO);
	
	//JSTL 적용
	request.setAttribute("board", board);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>게시글 상세보기 페이지</title>
</head>
<body>
	<%-- <center>
		<h1>게시글 상세 보기</h1>
		<h3><a href="logout_proc.jsp">로그아웃</a></h3>
		<form action="updateBoard_proc.jsp">
			<table border="1" cellpadding="0" cellspacing="0" width="700">
				<tr>
					<td colspan="4" align="center">
						<h2><%=board.getTitle()%></h2>
					</td>
				</tr>
				<tr>
					<td colspan="1" bgcolor="orange" width="100">작성자</td>
					<td colspan="3"><%=board.getWriter() %></td>
				</tr>
				<tr>
					<td bgcolor="orange" width="100">게시일</td>
					<td><%=board.getRegDate() %></td>
					<td bgcolor="orange" width="100">조회수</td>
					<td><%=board.getCnt() %></td>
				</tr>
				<tr>
					<td colspan="4" height="300"><%=board.getContent() %></td>
				</tr>
			</table><br>
			<input type="submit" value="수정"> &nbsp;&nbsp;
			<input type="submit" value="삭제">
		</form><br>
		<form action="">
			<table border="1" cellpadding="0" cellspacing="0" width="700">
				<tr>
					<td colspan="4" align="center">
						<h2>${board.getTitle()}</h2>
					</td>
				</tr>
				<tr>
					<td colspan="1" bgcolor="orange" width="100">작성자</td>
					<td colspan="3">${board.getWriter()}</td>
				</tr>
				<tr>
					<td bgcolor="orange" width="100">게시일</td>
					<td>${board.getRegDate()}</td>
					<td bgcolor="orange" width="100">조회수</td>
					<td>${board.getCnt()}</td>
				</tr>
				<tr>
					<td colspan="4" height="300">${board.getContent()}</td>
				</tr>
			</table><br>
			<input type="submit" value="수정"> &nbsp;&nbsp;
			<input type="submit" value="삭제">
		</form><br>
		<a href="insertBoard_proc.jsp"><button>새 게시글 등록</button></a> &nbsp;&nbsp;
		<a href="getBoardList.jsp"><button>전체 게시글 목록 보기</button></a>
	</center> --%>
	
	<%--교수님꺼 --%>
	<center>
	<h1>게시글 상세 보기</h1>
	<a href="logout_proc.jsp">로그아웃</a>
	<hr>
	<form method="POST" action="updateBoard_proc.jsp">
		<input type="hidden" name="seq" value="<%=board.getSeq()%>"/>
		<table border="1" cellpadding="0" cellspacing="0">
			<tr>
				<td bgcolor="orange">제목</td>
				<td align="left">
					<input name="title" type="text" value="<%=board.getTitle()%>"/>
				</td>
			</tr>
			<tr>
				<td bgcolor="orange">작성자</td>
				<td align="left"><%=board.getWriter()%></td>
			</tr>
			<tr>
				<td bgcolor="orange">내용</td>
				<td align="left">
					<textarea name="content" rows="10" cols="40"><%=board.getContent()%></textarea>
				</td>
			</tr>
			<tr>
				<td bgcolor="orange">등록일</td>
				<td align="left"><%=board.getRegDate()%></td>
			</tr>
			<tr>
				<td bgcolor="orange">조회수</td>
				<td align="left"><%=board.getCnt()%></td>
			</tr>
			
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="글 수정"/>
				</td>
			</tr>
		</table>
	</form>
	<hr>
	<a href="insertBoard.jsp">새 게시글 등록</a> &nbsp;&nbsp;
	<a href="deleteBoard_proc.jsp?seq=<%=board.getSeq()%>">게시글 삭제</a> &nbsp;&nbsp;
	<a href="getBoardList.jsp">전체 게시글 목록 보기</a>
	</center>
</body>
</html>