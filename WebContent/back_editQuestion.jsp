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
					�������
				</th>
				<th>
					����һ����Ŀ
				</th>
				<th>
					����������Ŀ
				</th>
				<th>
					������
				</th>
				<th>
					���ͷ���
				</th>
				<th>
					�ش�״̬
				</th>
				<th>
					����ʱ��
				</th>
				<th>
					����
				</th>
			</tr>
			<c:forEach items="${questionList}" var="q">
			<tr>
				<td align="center">
					${q.title }
				</td>
				<td>
					${q.item.itemname}
				</td>
				<td>
					${q.subItem.subname}
				</td>
				<td>
					${q.user.username}
				</td>
				<td>
					${q.offerscore}
				</td>
				<c:if test="${q.status eq 1}">
				<td>
					δ���
				</td>
				</c:if>
				<c:if test="${q.status eq 2}">
				<td>
					�ѽ��
				</td>
				</c:if>
				<c:if test="${q.status eq 3}">
				<td>
					�������
				</td>
				</c:if>
				<td>
					${q.questiontime}
				</td>
				<td align="center">
					<a href="detailquestion.do?qid=${q.qid }">����</a>&nbsp;|&nbsp;
					<a href="deletequestion.do?qid=${q.qid }">ɾ��</a>
				</td>
			</tr>
			</c:forEach>
		</table>
	</body>
</html>