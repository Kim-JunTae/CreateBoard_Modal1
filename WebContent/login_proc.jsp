<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" errorPage="error.jsp"%>
<!-- �߰� -->
<%@ page import="user.UserDO" %>
<%@ page import="user.UserDAO" %>

<%	//�ڹ� �ڵ�
	//1. ����� �Է� ���� ����
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	//2. H2 DB ���� ó��
	//2.1. UserDO Ŭ������ ��ü ���� �� �߰�����ҿ� �� �ʱ�ȭ �۾�
	UserDO userObj = new UserDO();	//UserDO�� �������� ����
	userObj.setId(id);				//id �� �ʱ�ȭ
	userObj.setPassword(password);	//password �� �ʱ�ȭ
	
	//2.2. UserDAO Ŭ������ ��ü ���� �� getUser() �޼ҵ� ȣ��
	UserDAO userDAO = new UserDAO();		//UserDAO�� �������� ����
	UserDO user = userDAO.getUser(userObj);	//user ���������� ����Ű�� �޸𸮿� ���� null�ƴϸ� ��ü�� �����Ǿ� �ִ�.
	
	//3. ȭ�� �׺���̼� => ����
	if(user != null){
		//out.println("<script>alert('�α��� ����!');</script>");
		response.sendRedirect("getBoardList.jsp");
	}else{
		response.sendRedirect("login.jsp");
	}
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�α��� ��Ʈ�ѷ�</title>
</head>
<body>

</body>
</html>