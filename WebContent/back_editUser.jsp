<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB18030" />
		<title>用户列表</title>
		<link href="./css/style3.css" rel="stylesheet" type="text/css" />
	</head>
	<body id="page">
		<h2>
			用户列表
		</h2>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<th>
					用户名
				</th>
				<th>
					邮箱
				</th>
				<th>
					积分
				</th>
				<th>
					等级
				</th>
				<th>
					性别
				</th>
				<th>
					真实姓名
				</th>
				<th>
					操作
				</th>
			</tr>
			<c:forEach items="${userList}" var="u">
			<tr>
				<td align="center">
					${u.username }
				</td>
				<td>
					${u.usermail}
				</td>
				<td>
					${u.integral}
				</td>
				<td>
					${u.grade}
				</td>
				<td>
					${u.sex}
				</td>
				<td>
					${u.realname}
				</td>
				<td align="center">
					<a href="deleteuser.do?userid=${u.userid }">删除</a>
				</td>
			</tr>
			</c:forEach>
		</table>
	</body>
</html>