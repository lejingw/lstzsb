<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
	<h1>${username}</h1>
	<br>
	<table align='center' border='1' width='1023'>
		<thead>
			<tr>
				<td width='18%'>学号</td>
				<td width='18%'>姓名</td>
				<td width='18%'>性别</td>
				<td width='18%'>状态</td>
				<td>操作</td>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${stuList.datas}" var = "stu">
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
					<a href='#'>查询奖惩</a>
					<a href='#'>修改信息</a>
					<a href='#'>设置奖励</a>
					<a href='#'>设置处罚</a>
				</td>
			</tr>
		</c:forEach>
			<tr>
				<td colspan='5'>
					<jsp:include page="/jsp/pager.jsp">
						<jsp:param name="totalRecord" value="${stuList.totalRecord}"/>
						<jsp:param name="url" value="${pageContext.request.contextPath}/edu/stu/list.do"/>
					</jsp:include>
				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>