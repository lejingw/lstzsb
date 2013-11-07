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
				<td width='15%'>学号</td>
				<td width='15%'>姓名</td>
				<td width='15%'>性别</td>
				<td width='15%'>状态</td>
				<td>操作</td>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${stuPage.datas}" var = "stu">
			<tr>
				<td>${stu.xh}</td>
				<td>${stu.name}</td>
				<td>
					<c:if test="${stu.sex eq 1}">男</c:if>
					<c:if test="${stu.sex eq 0}">女</c:if>
				</td>
				<td>
					<c:if test="${stu.status eq 1}">在校</c:if>
					<c:if test="${stu.status eq 0}"><span style="font-weight:bold;color:#f00">离校</span></c:if>
				</td>
				<td>
					<a href='${ctxPath}/edu/stu/rp/${stu.id}.do'>查询奖惩</a>
					<a href='${ctxPath}/edu/stu/update/${stu.id}.do'>修改学生信息</a>
					<a href='${ctxPath}/edu/stu/addRewardPunish/${stu.id}.do?isReward=1'>设置奖励</a>
					<a href='${ctxPath}/edu/stu/addRewardPunish/${stu.id}.do?isReward=0'>设置处罚</a>
				</td>
			</tr>
		</c:forEach>
			<tr>
				<td colspan='5'>
					<jsp:include page="/jsp/pager.jsp">
						<jsp:param name="totalRecord" value="${stuPage.totalRecord}"/>
						<jsp:param name="url" value="${ctxPath}/edu/stu/list.do"/>
					</jsp:include>
				</td>
			</tr>
		</tbody>
	</table>
	<br>
	<h1>${username}</h1>
</body>
</html>