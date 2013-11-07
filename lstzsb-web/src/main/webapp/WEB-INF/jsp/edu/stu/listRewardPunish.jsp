<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<%@include file="/jsp/include.jsp"%>
</head>
<body>
	<table align='center' border='1' width='1024'>
		<tr><td>
			<a href="${ctxPath}/edu/stu/list.do">学生列表页面</a>
			<a href="${ctxPath}/edu/stu/import.do">导入学生信息</a>
			<a href="${ctxPath}/edu/stu/export.do">导出学生信息</a>
			<a href="${ctxPath}/edu/stu/listRewardPunish/0.do">查询所有处罚学生</a>
			<a href="${ctxPath}/edu/stu/listRewardPunish/1.do">查询所有奖励学生</a>
		</td></tr>
	</table>
	<br>
	<table align='center' border='1' width='1024'>
		<thead>
			<tr>
				<td>学生</td>
				<td>奖励情况</td>
				<td>奖励学年</td>
				<td>奖励学期</td>
				<td>奖励原因</td>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${rewardPunishPage.datas}" var = "rp">
			<tr>
				<td>${rp.student.name}</td>
				<td>${rp.situation}</td>
				<td>${rp.year}</td>
				<td>${rp.semester}</td>
				<td>${rp.cause}</td>
			</tr>
		</c:forEach>
			<tr>
				<td colspan='5'>
					<jsp:include page="/jsp/pager.jsp">
						<jsp:param name="totalRecord" value="${rewardPunishPage.totalRecord}"/>
						<jsp:param name="url" value="${ctxPath}/edu/stu/listRewardPunish/${isReward}.do"/>
					</jsp:include>
				</td>
			</tr>
		</tbody>
	</table>
	<br>
	<h1>${username}</h1>
</body>
</html>