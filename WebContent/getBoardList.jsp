<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" errorPage="error.jsp"%>
<!-- �߰� -->
<%@ page import="board.BoardDO" %>
<%@ page import="board.BoardDAO" %>
<%@ page import="java.util.List" %>	<%-- �����迭 ��� --%>

<!-- JSTL �߰� -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%	//�ڹ� �ڵ�
	request.setCharacterEncoding("EUC-KR");
	
	//����� ���̵�
	String userId = request.getParameter("id");
	
	//�˻� ���(�ۼ���, ����) �� �˻� ���� ��ü�� ������ ���� ����
	String searchField = "";	//����ִ� ��ü
	String searchText = "";
	
	if(request.getParameter("searchCondition") != null 
	   && request.getParameter("searchKeyword") != null){
		searchField = request.getParameter("searchCondition");
		searchText = request.getParameter("searchKeyword");
	}
	
	//BoardDAO ��ü ����
	BoardDAO boardDAO = new BoardDAO();
	List<BoardDO> boardList = boardDAO.getBoardList(searchField, searchText);
	
	//[�߿�]JSTL�� �����Ͽ� �ҽ��� �����ϱ� ���ؼ� �Ʒ� �ҽ��� �߰�
	// ��ü ��ü�� �������� ���
	request.setAttribute("boardList", boardList);
	
	//[�߿�] '�� �Խñ�' ���� ���ϱ� ���
	int totalList = boardList.size();
	request.setAttribute("totalList", totalList);
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�Խ��� ���</title>
</head>
<body>
	<center>
	<h1>��ü �Խñ� ��� ����</h1>
	<h3><b>${userId}</b>�� ȯ���մϴ�.&nbsp;&nbsp;&nbsp;<a href="logout_proc.jsp">�α׾ƿ�</a></h3>
	<form name="form2" method="POST" action="getBoardList.jsp"><!-- �˻���� ������ ���� �ڱ��ڽ� �������� �̵� -->
		<p>�� �Խñ� : ${totalList} ��</p>
		<table border="1" cellpadding="0" cellspacing="0" width="700">
			<tr>
				<td align="right">
					<select name="searchCondition">
						<option value="WRITER" selected>�ۼ���</option>
						<option value="TITLE">����</option>
					</select>
					<input name="searchKeyword" type="text"/>
					<input type="submit" value="�˻�"/>
				</td>
			</tr>
		</table>
	</form>
	
	<table border="1" cellpadding="0" cellspacing="0" width="700">
		<tr>
			<th bgcolor="orange" width="100">��ȣ</th>
			<th bgcolor="orange" width="200">����</th>
			<th bgcolor="orange" width="150">�ۼ���</th>
			<th bgcolor="orange" width="150">�����</th>
			<th bgcolor="orange" width="100">��ȸ��</th>
		</tr>
		
		<%-- <%for(BoardDO board : boardList){%>
			<tr>
				<td align="center"><%=board.getSeq() %></td>
				<td align="left">
					<a href="getBoard.jsp?seq=<%=board.getSeq() %>">
						<%=board.getTitle() %>
					</a>
				</td>
				<td align="center"><%=board.getWriter() %></td>
				<td align="center"><%=board.getRegDate() %></td>
				<td align="center"><%=board.getCnt() %></td>
			</tr>
		<%}%> --%>
		
		<%-- �� �ҽ��� ǥ������ JSTL�� �����Ͽ� �ҽ� ���� --%>
		<c:forEach var="board" items="${boardList}">
			<tr>
				<td align="center">${board.getSeq()}</td>
				<td align="left">
					<a href="getBoard.jsp?seq=${board.getSeq()}">
						${board.getTitle()}
					</a>
				</td>
				<td align="center">${board.getWriter()}</td>
				<td align="center">${board.getRegDate()}</td>
				<td align="center">${board.getCnt()}</td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<a href="insertBoard.jsp"><button>�� �Խñ� ���</button></a> &nbsp;&nbsp;&nbsp;
	<a href="getBoardList.jsp"><button>��ü �Խñ� ��� ����</button></a><br><br>
	<a href="getBoardList2.jsp">����¡</a><br><br><br>
	</center>
</body>
</html>