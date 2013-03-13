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
				��ϲ����ע��ɹ���
			<br><br>
		 	<span id="time">6 </span>���Ӻ��Զ���ת����������Զ���ת�������������� <br> <br>
		 	<a href="index.jsp">������ҳ</a>
		</center>   
		
		<script type="text/javascript">
			delayURL("index.jsp", 3000);
		</script>
	</c:if>
	
	<c:if test="${asksuccess eq flag}">
		<center>    
			<br><br><br><br><br><br><br><br><br><br><br>
				��ϲ�������ʳɹ���
			<br><br>
		 	<span id="time">6 </span>���Ӻ��Զ���ת����������Զ���ת�������������� <br> <br>
		 	<a href="questionlist.jsp">���������б�</a>
		</center>   
		
		<script type="text/javascript">
			delayURL("questionlist.jsp", 3000);
		</script>
	</c:if>
	
	<c:if test="${modifyusersuccess eq flag}">
		<center>    
			<br><br><br><br><br><br><br><br><br><br><br>
				��ϲ�����޸ĸ�����Ϣ�ɹ���
			<br><br>
		 	<span id="time">6 </span>���Ӻ��Զ���ת����������Զ���ת�������������� <br> <br>
		 	<a href="index.do">������ҳ</a>
		</center>   
		
		<script type="text/javascript">
			delayURL("index.do", 3000);
		</script>
	</c:if>
	
	<c:if test="${answersuccess eq flag}">
		<center>    
			<br><br><br><br><br><br><br><br><br><br><br>
				��ϲ�����ش�����ɹ���
			<br><br>
		 	<span id="time">6 </span>���Ӻ��Զ���ת����������Զ���ת�������������� <br> <br>
		 	<a href="allquestionlist.do">��������ҳ</a>
		</center>   
		
		<script type="text/javascript">
			delayURL("allquestionlist.do", 3000);
		</script>
	</c:if>
	
	<c:if test="${acceptsuccess eq flag}">
		<center>    
			<br><br><br><br><br><br><br><br><br><br><br>
				��ϲ�����ش�����ɹ���
			<br><br>
		 	<span id="time">6 </span>���Ӻ��Զ���ת����������Զ���ת�������������� <br> <br>
		 	<a href="queryanswer.do?qid=${qid}">��������ҳ</a>
		</center>   
		
		<script type="text/javascript">
			delayURL("queryanswer.do?qid=${qid}", 3000);
		</script>
	</c:if>
	
</logic:present>