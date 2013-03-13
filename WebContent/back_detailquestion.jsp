<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>�������</title>
		<link href="./css/style3.css" rel="stylesheet" type="text/css" />
	</head>
	<body id="page">
		<h2>
			��������
		</h2>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<th>
						������⣺
					</th>
					<td>
						<input type="text" size="100"
							value="${question.title}" />
					</td>
				</tr>
				<tr>
					<th>
						�������ݣ�
					</th>
					<td>
						<textarea rows="5" cols="86">
							${question.content }
						</textarea>
					</td>
				</tr>
				<tr>
					<th>
						����һ����Ŀ��
					</th>
					<td>
						<input type="text"  size="100" value="${question.item.itemname }" />
					</td>
				</tr>
				<tr>
					<th>
						����������Ŀ��
					</th>
					<td>
						<input type="text" size="100" value="${question.subItem.subname}" />
					</td>
				</tr>
				<tr>
					<th>
						�����ߣ�
					</th>
					<td>
						<input type="text" size="100" value="${question.user.username }" />
					</td>
				</tr>
				<tr>
					<th>
						���ͷ�����
					</th>
					<td>
						<input type="text" size="100" value="${question.offerscore }" />
					</td>
				</tr>
				<tr>
					<th>
						�ش�״̬��
					</th>
					<c:if test="${question.status eq 1}">
						<td>
							δ���
						</td>
					</c:if>
					<c:if test="${question.status eq 2}">
						<td>
							�ѽ��
						</td>
					</c:if>
					<c:if test="${question.status eq 3}">
						<td>
							û�������
						</td>
					</c:if>
				</tr>
				<tr>
					<th>
						����ʱ�䣺
					</th>
					<td>
						<input type="text" size="100" value="${question.questiontime }" />
					</td>
				</tr>
				<tr>
					<th>
						����ʣ�
					</th>
					<td>
						<input type="text" size="100" value="${question.clickcount }" />
					</td>
				</tr>
			</table>
	</body>
</html>