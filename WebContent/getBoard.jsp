<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" errorPage="error.jsp"%>
<!-- �߰� -->
<%@ page import="board.BoardDO" %>
<%@ page import="board.BoardDAO" %>

<%	//�ڹ��ڵ�
	//1. ������ �Ѿ�� �� ������ �Խñ� ��ȣ ����
	String seq = request.getParameter("seq");
	
	//2. BoardDO ��ü �����Ͽ� seq �߰�����ҿ� ����(�ʱ�ȭ)�Ѵ�.
	BoardDO boardDO = new BoardDO();
	boardDO.setSeq(Integer.parseInt(seq));
	
	//3. BoardDAO ��ü ���� �� �Խñ� �󼼺��� �޼ҵ� ȣ��
	BoardDAO boardDAO = new BoardDAO();
	BoardDO board = boardDAO.getBoard(boardDO);
	
	//JSTL ����
	request.setAttribute("board", board);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�Խñ� �󼼺��� ������</title>
</head>
<body>
	<%-- <center>
		<h1>�Խñ� �� ����</h1>
		<h3><a href="logout_proc.jsp">�α׾ƿ�</a></h3>
		<form action="updateBoard_proc.jsp">
			<table border="1" cellpadding="0" cellspacing="0" width="700">
				<tr>
					<td colspan="4" align="center">
						<h2><%=board.getTitle()%></h2>
					</td>
				</tr>
				<tr>
					<td colspan="1" bgcolor="orange" width="100">�ۼ���</td>
					<td colspan="3"><%=board.getWriter() %></td>
				</tr>
				<tr>
					<td bgcolor="orange" width="100">�Խ���</td>
					<td><%=board.getRegDate() %></td>
					<td bgcolor="orange" width="100">��ȸ��</td>
					<td><%=board.getCnt() %></td>
				</tr>
				<tr>
					<td colspan="4" height="300"><%=board.getContent() %></td>
				</tr>
			</table><br>
			<input type="submit" value="����"> &nbsp;&nbsp;
			<input type="submit" value="����">
		</form><br>
		<form action="">
			<table border="1" cellpadding="0" cellspacing="0" width="700">
				<tr>
					<td colspan="4" align="center">
						<h2>${board.getTitle()}</h2>
					</td>
				</tr>
				<tr>
					<td colspan="1" bgcolor="orange" width="100">�ۼ���</td>
					<td colspan="3">${board.getWriter()}</td>
				</tr>
				<tr>
					<td bgcolor="orange" width="100">�Խ���</td>
					<td>${board.getRegDate()}</td>
					<td bgcolor="orange" width="100">��ȸ��</td>
					<td>${board.getCnt()}</td>
				</tr>
				<tr>
					<td colspan="4" height="300">${board.getContent()}</td>
				</tr>
			</table><br>
			<input type="submit" value="����"> &nbsp;&nbsp;
			<input type="submit" value="����">
		</form><br>
		<a href="insertBoard_proc.jsp"><button>�� �Խñ� ���</button></a> &nbsp;&nbsp;
		<a href="getBoardList.jsp"><button>��ü �Խñ� ��� ����</button></a>
	</center> --%>
	
	<%--�����Բ� --%>
	<center>
	<h1>�Խñ� �� ����</h1>
	<a href="logout_proc.jsp">�α׾ƿ�</a>
	<hr>
	<form method="POST" action="updateBoard_proc.jsp">
		<input type="hidden" name="seq" value="<%=board.getSeq()%>"/>
		<table border="1" cellpadding="0" cellspacing="0">
			<tr>
				<td bgcolor="orange">����</td>
				<td align="left">
					<input name="title" type="text" value="<%=board.getTitle()%>"/>
				</td>
			</tr>
			<tr>
				<td bgcolor="orange">�ۼ���</td>
				<td align="left"><%=board.getWriter()%></td>
			</tr>
			<tr>
				<td bgcolor="orange">����</td>
				<td align="left">
					<textarea name="content" rows="10" cols="40"><%=board.getContent()%></textarea>
				</td>
			</tr>
			<tr>
				<td bgcolor="orange">�����</td>
				<td align="left"><%=board.getRegDate()%></td>
			</tr>
			<tr>
				<td bgcolor="orange">��ȸ��</td>
				<td align="left"><%=board.getCnt()%></td>
			</tr>
			
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="�� ����"/>
				</td>
			</tr>
		</table>
	</form>
	<hr>
	<a href="insertBoard.jsp">�� �Խñ� ���</a> &nbsp;&nbsp;
	<a href="deleteBoard_proc.jsp?seq=<%=board.getSeq()%>">�Խñ� ����</a> &nbsp;&nbsp;
	<a href="getBoardList.jsp">��ü �Խñ� ��� ����</a>
	</center>
</body>
</html>