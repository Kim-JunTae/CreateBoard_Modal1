<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" errorPage="error.jsp"%>
<!-- �߰� -->
<%@ page import="board.BoardDO" %>
<%@ page import="board.BoardDAO" %> 

<%	
	request.setCharacterEncoding("EUC-KR");

	//1. ����� �Է����� ����
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");
	
	//2. BoardDO ��ü �����Ͽ� �۾���, ����, ������ �߰�����ҿ� ����(�ʱ�ȭ)�Ѵ�.
	BoardDO boardDO = new BoardDO();
	boardDO.setTitle(title);
	boardDO.setWriter(writer);
	boardDO.setContent(content);
	
	//3. BoardDAO ��ü ���� �� �Խñ� ��� �޼ҵ� ȣ��
	BoardDAO boardDAO = new BoardDAO();
	boardDAO.insertBoard(boardDO);
	
	//4. ȭ�� �׺���̼�
	response.sendRedirect("getBoardList.jsp");
%>