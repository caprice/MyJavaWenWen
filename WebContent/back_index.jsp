<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>

<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB18030" />
		<title>Java问问后台管理系统</title>
		<link href="./css/style3.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="./jslib/js.js"></script>
		<style type="text/css">
<!--
.STYLE1 {
	color: white
}
-->
</style>
	</head>

	<body id="index">
		<h1 class="STYLE1">
			Java问问后台管理系统
		</h1>
		<ul id="globalNav">

			<c:if test="${ admin.adminlevel eq 1 }">

				<li>
					<a href="#">栏目管理</a>
					<ul>
						<li>
							<a href="back_addItem.jsp" target="frameBord">&nbsp;&nbsp;&nbsp;添加一级栏目</a>
						</li>
						<li>
							<a href="go_back_editItem.do" target="frameBord">&nbsp;&nbsp;&nbsp;编辑一级栏目</a>
						</li>
						<li>
							<a href="go_back_addSubItem.do" target="frameBord">&nbsp;&nbsp;&nbsp;添加二级栏目</a>
						</li>
						<li>
							<a href="go_modifysubitem.do" target="frameBord">&nbsp;&nbsp;&nbsp;编辑二级栏目</a>
						</li>
					</ul>
				</li>

				<li>
					<a href="#">用户管理</a>
					<ul>
						<li>
							<a href="gobackuserlist.do" target="frameBord">&nbsp;&nbsp;&nbsp;编辑用户</a>
						</li>
					</ul>
				</li>
				<li>
					<a href="#">问题管理</a>
					<ul>
						<li>
							<a href="showquestionlist.do" target="frameBord">&nbsp;&nbsp;&nbsp;编辑问题</a>
						</li>
					</ul>
				</li>
				<li>
					<a href="#">答案管理</a>
					<ul>
						<li>
							<a href="showanswerlist.do" target="frameBord">&nbsp;&nbsp;&nbsp;编辑答案</a>
						</li>
					</ul>
				</li>
				<li>
					<a href="#">管理员管理</a>
					<ul>
						<li>
							<a href="backgoaddadmin.do" target="frameBord">&nbsp;&nbsp;&nbsp;添加管理员</a>
						</li>
						<li>
							<a href="backshowadminlist.do" target="frameBord">&nbsp;&nbsp;&nbsp;编辑管理员</a>
						</li>
					</ul>
				</li>

			</c:if>
			<c:if test="${admin.adminlevel eq 3}">
				<li>
					<a href="#">栏目管理</a>
					<ul>
						<li>
							<a href="back_addItem.jsp" target="frameBord">&nbsp;&nbsp;&nbsp;添加一级栏目</a>
						</li>
						<li>
							<a href="go_back_editItem.do" target="frameBord">&nbsp;&nbsp;&nbsp;编辑一级栏目</a>
						</li>
						<li>
							<a href="go_back_addSubItem.do" target="frameBord">&nbsp;&nbsp;&nbsp;添加二级栏目</a>
						</li>
						<li>
							<a href="go_modifysubitem.do" target="frameBord">&nbsp;&nbsp;&nbsp;编辑二级栏目</a>
						</li>
					</ul>
				</li>

			</c:if>
			<c:if test="${admin.adminlevel eq 2}">
				<li>
					<a href="#">用户管理</a>
					<ul>
						<li>
							<a href="gobackuserlist.do" target="frameBord">&nbsp;&nbsp;&nbsp;编辑用户</a>
						</li>
					</ul>
				</li>
			</c:if>

			<c:if test="${admin.adminlevel eq 4}">
				<li>
					<a href="#">问题管理</a>
					<ul>
						<li>
							<a href="showquestionlist.do" target="frameBord">&nbsp;&nbsp;&nbsp;编辑问题</a>
						</li>
					</ul>
				</li>
			</c:if>
			<c:if test="${admin.adminlevel eq 5}">
				<li>
					<a href="#">答案管理</a>
					<ul>
						<li>
							<a href="showanswerlist.do" target="frameBord">&nbsp;&nbsp;&nbsp;编辑答案</a>
						</li>
					</ul>
				</li>
			</c:if>

		</ul>
		<iframe id="frameBord" name="frameBord" frameborder="0" width="100%"
			height="100%" src="back_sitepage.jsp"></iframe>
	</body>

</html>
