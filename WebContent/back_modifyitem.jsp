<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>管理界面</title>
		<link href="./css/style3.css" rel="stylesheet" type="text/css" />
	</head>
	<body id="page">
		<h2>
			修改一级栏目
		</h2>
		<form action="backmodifyitem.do" method="post">
		<input type="hidden" name="itemid" value="${item.itemid }"/>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<th>
					栏目内容：
				</th>
				<td>
					<input type="text" name="itemname" value="${item.itemname }"/>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="修改" />
					&nbsp;&nbsp;
					<input type="reset" value="重置" />
				</td>
			</tr>
		</table>
		</form>
	</body>
</html>