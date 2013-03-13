<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script language="JavaScript1.2" type="text/javascript">

function delayURL(url) {
    var delay = document.getElementById("time").innerHTML;
	if(delay > 0) {
		delay--;
		document.getElementById("time").innerHTML = delay;
	} else {
		window.top.location.href = url;
    }
    setTimeout("delayURL('" + url + "')", 1000); 
}

</script>

<logic:present name="flag">

	<c:set value="registersuccess" var="registersuccess"/>
	<c:set value="asksuccess" var="asksuccess"/>
	<c:set value="modifyusersuccess" var="modifyusersuccess"/>
	<c:set value="answersuccess" var="answersuccess"/>
	<c:set value="acceptsuccess" var="acceptsuccess"/>

	<c:if test="${registersuccess eq flag}">
		<center>    
			<br><br><br><br><br><br><br><br><br><br><br>
				恭喜您！注册成功！
			<br><br>
		 	<span id="time">6 </span>秒钟后自动跳转，如果不能自动跳转，请点击下面链接 <br> <br>
		 	<a href="index.jsp">返回主页</a>
		</center>   
		
		<script type="text/javascript">
			delayURL("index.jsp", 3000);
		</script>
	</c:if>
	
	<c:if test="${asksuccess eq flag}">
		<center>    
			<br><br><br><br><br><br><br><br><br><br><br>
				恭喜您！提问成功！
			<br><br>
		 	<span id="time">6 </span>秒钟后自动跳转，如果不能自动跳转，请点击下面链接 <br> <br>
		 	<a href="questionlist.jsp">返回问题列表</a>
		</center>   
		
		<script type="text/javascript">
			delayURL("questionlist.jsp", 3000);
		</script>
	</c:if>
	
	<c:if test="${modifyusersuccess eq flag}">
		<center>    
			<br><br><br><br><br><br><br><br><br><br><br>
				恭喜您！修改个人信息成功！
			<br><br>
		 	<span id="time">6 </span>秒钟后自动跳转，如果不能自动跳转，请点击下面链接 <br> <br>
		 	<a href="index.do">返回主页</a>
		</center>   
		
		<script type="text/javascript">
			delayURL("index.do", 3000);
		</script>
	</c:if>
	
	<c:if test="${answersuccess eq flag}">
		<center>    
			<br><br><br><br><br><br><br><br><br><br><br>
				恭喜您！回答问题成功！
			<br><br>
		 	<span id="time">6 </span>秒钟后自动跳转，如果不能自动跳转，请点击下面链接 <br> <br>
		 	<a href="allquestionlist.do">返回问题页</a>
		</center>   
		
		<script type="text/javascript">
			delayURL("allquestionlist.do", 3000);
		</script>
	</c:if>
	
	<c:if test="${acceptsuccess eq flag}">
		<center>    
			<br><br><br><br><br><br><br><br><br><br><br>
				恭喜您！回答问题成功！
			<br><br>
		 	<span id="time">6 </span>秒钟后自动跳转，如果不能自动跳转，请点击下面链接 <br> <br>
		 	<a href="queryanswer.do?qid=${qid}">返回问题页</a>
		</center>   
		
		<script type="text/javascript">
			delayURL("queryanswer.do?qid=${qid}", 3000);
		</script>
	</c:if>
	
</logic:present>