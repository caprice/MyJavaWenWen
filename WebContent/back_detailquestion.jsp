<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>管理界面</title>
		<link href="./css/style3.css" rel="stylesheet" type="text/css" />
	</head>
	<body id="page">
		<h2>
			问题详情
		</h2>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<th>
						问题标题：
					</th>
					<td>
						<input type="text" size="100"
							value="${question.title}" />
					</td>
				</tr>
				<tr>
					<th>
						问题内容：
					</th>
					<td>
						<textarea rows="5" cols="86">
							${question.content }
						</textarea>
					</td>
				</tr>
				<tr>
					<th>
						所属一级栏目：
					</th>
					<td>
						<input type="text"  size="100" value="${question.item.itemname }" />
					</td>
				</tr>
				<tr>
					<th>
						所属二级栏目：
					</th>
					<td>
						<input type="text" size="100" value="${question.subItem.subname}" />
					</td>
				</tr>
				<tr>
					<th>
						提问者：
					</th>
					<td>
						<input type="text" size="100" value="${question.user.username }" />
					</td>
				</tr>
				<tr>
					<th>
						悬赏分数：
					</th>
					<td>
						<input type="text" size="100" value="${question.offerscore }" />
					</td>
				</tr>
				<tr>
					<th>
						回答状态：
					</th>
					<c:if test="${question.status eq 1}">
						<td>
							未解决
						</td>
					</c:if>
					<c:if test="${question.status eq 2}">
						<td>
							已解决
						</td>
					</c:if>
					<c:if test="${question.status eq 3}">
						<td>
							没有满意答案
						</td>
					</c:if>
				</tr>
				<tr>
					<th>
						提问时间：
					</th>
					<td>
						<input type="text" size="100" value="${question.questiontime }" />
					</td>
				</tr>
				<tr>
					<th>
						点击率：
					</th>
					<td>
						<input type="text" size="100" value="${question.clickcount }" />
					</td>
				</tr>
			</table>
	</body>
</html>