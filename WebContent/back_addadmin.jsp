<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB18030" />
		<title>管理界面</title>
		<link href="./css/style3.css" rel="stylesheet" type="text/css" />
	</head>
	<body id="page">
		<h2>
			添加管理员
		</h2>
		<form action="back_addingadmin.do" method="post">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<th width="30%">
					用户名：
				</th>
				<td>
					<input type="text" name="adminname" size="100"/>
				</td>
			</tr>
			<tr>
				<th width="30%">
					密码：
				</th>
				<td>
					<input type="text" name="adminpwd" size="100"/>
				</td>
			</tr>
			<tr>
				<th width="30%">
					确认密码：
				</th>
				<td>
					<input type="text" name="confirmpwd" size="100"/>
				</td>
			</tr>
			<tr>
				<th width="30%">
					管理员类型：
				</th>
				<td>
					<select name="adminlevel" size="1">
						<option value="2">-------用户管理员-------</option>
						<option value="3">-------栏目管理员-------</option>
						<option value="4">-------问题管理员-------</option>
						<option value="5">-------答案管理员-------</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="提交" />
					&nbsp;&nbsp;
					<input type="reset" value="重置" />
				</td>
			</tr>
		</table>
		</form>
	</body>
</html>