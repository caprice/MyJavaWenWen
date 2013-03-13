<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030" />
<title>管理界面</title>
<link href="./css/style3.css" rel="stylesheet" type="text/css" />
</head>

<body>
<form action="backlogin.do" id="loginForm" method="post">
	<h3>管理员登录</h3>
	<label for="userName">
		<span>用户名：</span><input id="userName" name="adminname" type="text" />
	</label>
	<label for="passWord">
		<span>密&nbsp;&nbsp;码：</span><input id="passWord" type="password"  name="adminpwd"/>
	</label>
	<label for="passWord">
		权&nbsp;&nbsp;限：&nbsp;&nbsp;
		<select name="adminlevel" size="1">
			<option value="1">-------超级管理员-------</option>
			<option value="2">-------用户管理员-------</option>
			<option value="3">-------栏目管理员-------</option>
			<option value="4">-------问题管理员-------</option>
			<option value="5">-------答案管理员-------</option>
		</select>
	</label>
	<label>
	<input name="" type="submit" class="bt" value="登&nbsp;&nbsp;录" />
	</label>
</form>
</body>
</html>