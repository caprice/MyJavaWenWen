<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB18030" />
		<title>������Ŀ�б�</title>
		<link href="./css/style3.css" rel="stylesheet" type="text/css" />
	</head>
	<body id="page">
		<h2>
			������Ŀ�б�
		</h2>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<th>
					��ĿID
				</th>
				<th>
					һ����Ŀ����
				</th>
				<th>
					��Ŀ����
				</th>
				<th>
					�������
				</th>
			</tr>
			<c:forEach items="${subItemList}" var="s">
			<tr>
				<td align="center">
					${s.subid }
				</td>
				<td>
					${s.item.itemname }
				</td>
				<td>
					${s.subname }
				</td>
				<td align="center">
					<a href="gobackeditsubitem.do?subid=${s.subid }">�༭</a> &nbsp;/&nbsp;
					<a href="deletesubitem.do?subid=${s.subid }">ɾ��</a>
				</td>
			</tr>
			</c:forEach>
		</table>
	</body>
</html>