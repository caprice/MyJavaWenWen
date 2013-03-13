<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB18030" />
		<title>问题列表</title>
		<link href="./css/style3.css" rel="stylesheet" type="text/css" />
	</head>
	<body id="page">
		<h2>
			问题列表
		</h2>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<th>
					答案内容
				</th>
				<th>
					回答时间
				</th>
				<th>
					状态
				</th>
				<th>
					回答人
				</th>
				<th>
					问题标题
				</th>
				<th>
					操作
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
						已采用
					</td>
				</c:if>
				<c:if test="${a.status eq 2}">
					<td>
						未采用
					</td>
				</c:if>
				<td>
					${a.user.username}
				</td>
				<td>
					${a.question.title}
				</td>
				<td align="center">
					<a href="deleteanswer.do?aid=${a.aid }">删除</a>
				</td>
			</tr>
			</c:forEach>
		</table>
	</body>
</html>