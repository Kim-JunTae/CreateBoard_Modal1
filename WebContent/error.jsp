<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�Խ��� ���� ������</title>
</head>
<jsp:useBean id="now" class="java.util.Date" />
<body>
	<div>
		<h2>error_page.jsp</h2>
		<hr>
		<table>
			<tr>
				<td>�߻� �ð� :</td>
				<td>${now}</td>
			</tr>
			<tr>
				<td>��û���� URI :</td>
				<td>${pageContext.errorData.requestURI}</td>
			</tr>
			
			<tr>
				<td>�����ڵ� :</td>
				<td>${pageContext.errorData.statusCode}</td>
			</tr>
			
			<tr>
				<td>�������� :</td>
				<td>${pageContext.errorData.throwable}</td>
			</tr>
			
			<tr style="width: 100%" bgcolor="pink">
				<td colspan="2">
					�� ���� �����ڿ��� ������ �ּ���.
					���� ���ϳ��� �����ϰڽ��ϴ�.
				</td>
			</tr>
		</table>
	</div>
</body>
</html>