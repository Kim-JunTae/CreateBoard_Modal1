<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" errorPage="error.jsp"%>
<!-- 추가 -->
<%@ page import="board.BoardDO" %>
<%@ page import="board.BoardDAO" %>   

<%	
	request.setCharacterEncoding("EUC-KR");

	//1. 사용자 입력정보 추출
	String seq = request.getParameter("seq");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	//2. BoardDO 객체 생성하여 seq 중간저장소에 저장(초기화)한다.
	BoardDO boardDO = new BoardDO();
	boardDO.setSeq(Integer.parseInt(seq));
	boardDO.setTitle(title);
	boardDO.setContent(content);
	
	//3. BoardDAO 객체 생성 후 게시글 수정 메소드 호출
	BoardDAO boardDAO = new BoardDAO();
	boardDAO.updateBoard(boardDO);
	
	//4. 화면 네비게이션
	response.sendRedirect("getBoardList.jsp");
%>