<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB18030" />
		<title>����Ա�б�</title>
		<link href="./css/style3.css" rel="stylesheet" type="text/css" />
	</head>
	<body id="page">
		<h2>
			����Ա�б�
		</h2>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<th>
					����Ա����
				</th>
				<th>
					����Ա����
				</th>
				<th>
					����
				</th>
			</tr>
			<c:forEach items="${adminList}" var="a">
			<tr>
				<td align="left">
					${a.adminname }
				</td>
				<td>
					${a.adminlevel}
				</td>
				<td align="center">
					<c:if test="${a.adminid ne 1}">
						<a href="deleteadmin.do?adminid=${a.adminid }">ɾ��</a>
					</c:if>
				</td>
			</tr>
			</c:forEach>
		</table>
	</body>
</html>