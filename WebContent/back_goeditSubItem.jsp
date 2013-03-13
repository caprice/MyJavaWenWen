<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB18030" />
		<title>一级栏目列表</title>
		<link href="./css/style3.css" rel="stylesheet" type="text/css" />
	</head>
	<body id="page">
		<h2>
			一级栏目列表
		</h2>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<th>
					栏目ID
				</th>
				<th>
					栏目名称
				</th>
				<th>
					管理操作
				</th>
			</tr>
			<c:forEach items="${itemList}" var="i">
			<tr>
				<td align="center">
					${i.itemid }
				</td>
				<td>
					${i.itemname }
				</td>
				<td align="center">
					<a href="gobackaddsubitem.do?itemid=${i.itemid }">添加二级栏目</a>
				</td>
			</tr>
			</c:forEach>
		</table>
	</body>
</html>