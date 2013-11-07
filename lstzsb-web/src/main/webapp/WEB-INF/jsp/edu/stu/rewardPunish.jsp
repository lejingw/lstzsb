<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<table align='center' border='1' width='1024'>
		<tr><td>
			<a href="${pageContext.request.contextPath}/edu/stu/list.do">学生列表页面</a>
			<a href="${pageContext.request.contextPath}/edu/stu/import.do">导入学生信息</a>
			<a href="${pageContext.request.contextPath}/edu/stu/export.do">导出学生信息</a>
			<a href="${pageContext.request.contextPath}/edu/stu/punishs.do">查询所有处罚学生</a>
			<a href="${pageContext.request.contextPath}/edu/stu/rewards.do">查询所有奖励学生</a>
		</td></tr>
	</table>
	<br>
	<table align='center' border='1' width='1024'>
		<tr>
			<td width='25%'>奖励情况</td>
			<td width='25%'>奖励学年</td>
			<td width='25%'>奖励学期</td>
			<td width='25%'>奖励原因</td>
		</tr>
	<c:forEach items="${rewards}" var = "rwd">
		<tr>
			<td>${rwd.situation}</td>
			<td>${rwd.year}</td>
			<td>${rwd.semester}</td>
			<td>${rwd.cause}</td>
		</tr>
	</c:forEach>
		<tr>
			<td>处罚情况</td>
			<td>处罚学年</td>
			<td>处罚学期</td>
			<td>处罚原因</td>
		</tr>
	<c:forEach items="${punishs}" var = "pnh">
		<tr>
			<td>${pnh.situation}</td>
			<td>${pnh.year}</td>
			<td>${pnh.semester}</td>
			<td>${pnh.cause}</td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>