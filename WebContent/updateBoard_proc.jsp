<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" errorPage="error.jsp"%>
<!-- �߰� -->
<%@ page import="board.BoardDO" %>
<%@ page import="board.BoardDAO" %>   

<%	
	request.setCharacterEncoding("EUC-KR");

	//1. ����� �Է����� ����
	String seq = request.getParameter("seq");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	//2. BoardDO ��ü �����Ͽ� seq �߰�����ҿ� ����(�ʱ�ȭ)�Ѵ�.
	BoardDO boardDO = new BoardDO();
	boardDO.setSeq(Integer.parseInt(seq));
	boardDO.setTitle(title);
	boardDO.setContent(content);
	
	//3. BoardDAO ��ü ���� �� �Խñ� ���� �޼ҵ� ȣ��
	BoardDAO boardDAO = new BoardDAO();
	boardDAO.updateBoard(boardDO);
	
	//4. ȭ�� �׺���̼�
	response.sendRedirect("getBoardList.jsp");
%>