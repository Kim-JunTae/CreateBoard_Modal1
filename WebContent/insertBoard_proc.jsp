<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" errorPage="error.jsp"%>
<!-- 추가 -->
<%@ page import="board.BoardDO" %>
<%@ page import="board.BoardDAO" %> 

<%	
	request.setCharacterEncoding("EUC-KR");

	//1. 사용자 입력정보 추출
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");
	
	//2. BoardDO 객체 생성하여 글쓴이, 제목, 내용을 중간저장소에 저장(초기화)한다.
	BoardDO boardDO = new BoardDO();
	boardDO.setTitle(title);
	boardDO.setWriter(writer);
	boardDO.setContent(content);
	
	//3. BoardDAO 객체 생성 후 게시글 등록 메소드 호출
	BoardDAO boardDAO = new BoardDAO();
	boardDAO.insertBoard(boardDO);
	
	//4. 화면 네비게이션
	response.sendRedirect("getBoardList.jsp");
%>