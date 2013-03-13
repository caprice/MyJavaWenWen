<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB18030" />
		<title>�����б�</title>
		<link href="./css/style3.css" rel="stylesheet" type="text/css" />
	</head>
	<body id="page">
		<h2>
			�����б�
		</h2>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<th>
					������
				</th>
				<th>
					�ش�ʱ��
				</th>
				<th>
					״̬
				</th>
				<th>
					�ش���
				</th>
				<th>
					�������
				</th>
				<th>
					����
				</th>
			</tr>
			<c:forEach items="${answerList}" var="a">
			<tr>
				<td align="left">
					${a.quesans }
				</td>
				<td>
					${a.anstime}
				</td>
				<c:if test="${a.status eq 1}">
					<td>
						�Ѳ���
					</td>
				</c:if>
				<c:if test="${a.status eq 2}">
					<td>
						δ����
					</td>
				</c:if>
				<td>
					${a.user.username}
				</td>
				<td>
					${a.question.title}
				</td>
				<td align="center">
					<a href="deleteanswer.do?aid=${a.aid }">ɾ��</a>
				</td>
			</tr>
			</c:forEach>
		</table>
	</body>
</html>