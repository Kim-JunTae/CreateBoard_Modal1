<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" errorPage="error.jsp"%>
<!-- 추가 -->
<%@ page import="user.UserDO" %>
<%@ page import="user.UserDAO" %>

<%	//자바 코드
	//1. 사용자 입력 정보 추출
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	//2. H2 DB 연동 처리
	//2.1. UserDO 클래스의 객체 생성 후 중간저장소에 값 초기화 작업
	UserDO userObj = new UserDO();	//UserDO의 참조변수 생성
	userObj.setId(id);				//id 값 초기화
	userObj.setPassword(password);	//password 값 초기화
	
	//2.2. UserDAO 클래스의 객체 생성 후 getUser() 메소드 호출
	UserDAO userDAO = new UserDAO();		//UserDAO의 참조변수 생성
	UserDO user = userDAO.getUser(userObj);	//user 참조변수가 가리키는 메모리에 가면 null아니면 객체가 생성되어 있다.
	
	//3. 화면 네비게이션 => 응답
	if(user != null){
		//out.println("<script>alert('로그인 성공!');</script>");
		response.sendRedirect("getBoardList.jsp");
	}else{
		response.sendRedirect("login.jsp");
	}
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인 컨트롤러</title>
</head>
<body>

</body>
</html>