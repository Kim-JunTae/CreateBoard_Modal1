<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" errorPage="error.jsp"%>
<%
	//�α׾ƿ� ������
	//1. �������� ����� ���� ��ü�� ���� ����
	session.invalidate();

	//2. ���� ���� �� �α��� �������� �̵�
	response.sendRedirect("login.jsp");
%>    