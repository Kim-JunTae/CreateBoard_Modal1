<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" errorPage="error.jsp"%>
<!-- �߰� -->
<%@ page import="board.BoardDO" %>
<%@ page import="board.BoardDAO" %>   

<%	
	request.setCharacterEncoding("EUC-KR");

	//1. ����� �Է����� ����
	String seq = request.getParameter("seq");
	
	//2. BoardDO ��ü �����Ͽ� seq �߰�����ҿ� ����(�ʱ�ȭ)�Ѵ�.
	BoardDO boardDO = new BoardDO();
	boardDO.setSeq(Integer.parseInt(seq));
	
	//3. BoardDAO ��ü ���� �� �Խñ� ���� �޼ҵ� ȣ��
	BoardDAO boardDAO = new BoardDAO();
	boardDAO.deleteBoard(boardDO);
	
	//4. ȭ�� �׺���̼�
	response.sendRedirect("getBoardList.jsp");
%>