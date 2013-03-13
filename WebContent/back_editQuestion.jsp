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
					问题标题
				</th>
				<th>
					所属一级栏目
				</th>
				<th>
					所属二级栏目
				</th>
				<th>
					提问者
				</th>
				<th>
					悬赏分数
				</th>
				<th>
					回答状态
				</th>
				<th>
					提问时间
				</th>
				<th>
					操作
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
					未解决
				</td>
				</c:if>
				<c:if test="${q.status eq 2}">
				<td>
					已解决
				</td>
				</c:if>
				<c:if test="${q.status eq 3}">
				<td>
					无满意答案
				</td>
				</c:if>
				<td>
					${q.questiontime}
				</td>
				<td align="center">
					<a href="detailquestion.do?qid=${q.qid }">详情</a>&nbsp;|&nbsp;
					<a href="deletequestion.do?qid=${q.qid }">删除</a>
				</td>
			</tr>
			</c:forEach>
		</table>
	</body>
</html>