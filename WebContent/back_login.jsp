<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030" />
<title>�������</title>
<link href="./css/style3.css" rel="stylesheet" type="text/css" />
</head>

<body>
<form action="backlogin.do" id="loginForm" method="post">
	<h3>����Ա��¼</h3>
	<label for="userName">
		<span>�û�����</span><input id="userName" name="adminname" type="text" />
	</label>
	<label for="passWord">
		<span>��&nbsp;&nbsp;�룺</span><input id="passWord" type="password"  name="adminpwd"/>
	</label>
	<label for="passWord">
		Ȩ&nbsp;&nbsp;�ޣ�&nbsp;&nbsp;
		<select name="adminlevel" size="1">
			<option value="1">-------��������Ա-------</option>
			<option value="2">-------�û�����Ա-------</option>
			<option value="3">-------��Ŀ����Ա-------</option>
			<option value="4">-------�������Ա-------</option>
			<option value="5">-------�𰸹���Ա-------</option>
		</select>
	</label>
	<label>
	<input name="" type="submit" class="bt" value="��&nbsp;&nbsp;¼" />
	</label>
</form>
</body>
</html>