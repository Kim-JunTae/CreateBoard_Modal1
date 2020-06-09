<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" errorPage="error.jsp"%>
<%
	//로그아웃 페이지
	//1. 브라우저와 연결된 세션 객체를 강제 종료
	session.invalidate();

	//2. 세션 종료 후 로그인 페이지로 이동
	response.sendRedirect("login.jsp");
%>    