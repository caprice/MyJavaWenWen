<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB18030" />
		<title>�������</title>
		<link href="./css/style3.css" rel="stylesheet" type="text/css" />
	</head>
	<body id="page">
		<h2>
			��ӹ���Ա
		</h2>
		<form action="back_addingadmin.do" method="post">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<th width="30%">
					�û�����
				</th>
				<td>
					<input type="text" name="adminname" size="100"/>
				</td>
			</tr>
			<tr>
				<th width="30%">
					���룺
				</th>
				<td>
					<input type="text" name="adminpwd" size="100"/>
				</td>
			</tr>
			<tr>
				<th width="30%">
					ȷ�����룺
				</th>
				<td>
					<input type="text" name="confirmpwd" size="100"/>
				</td>
			</tr>
			<tr>
				<th width="30%">
					����Ա���ͣ�
				</th>
				<td>
					<select name="adminlevel" size="1">
						<option value="2">-------�û�����Ա-------</option>
						<option value="3">-------��Ŀ����Ա-------</option>
						<option value="4">-------�������Ա-------</option>
						<option value="5">-------�𰸹���Ա-------</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="�ύ" />
					&nbsp;&nbsp;
					<input type="reset" value="����" />
				</td>
			</tr>
		</table>
		</form>
	</body>
</html>