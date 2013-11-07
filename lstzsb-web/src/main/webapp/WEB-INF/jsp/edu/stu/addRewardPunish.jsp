<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<h2>添加${stu.name}的<c:if test='${type eq 1}'>奖励</c:if><c:if test='${type eq 0}'>处罚</c:if></h2>
	<sf:form method='post' modelAttribute='rewardPunish'>
		<c:if test='${type eq 1}'>
			奖励情况:<sf:input path="situation"/><br/>
			奖励学年:<sf:select path="year">
						<sf:option value="2009">2009</sf:option>
						<sf:option value="2010">2010</sf:option>
						<sf:option value="2011">2011</sf:option>
						<sf:option value="2012">2012</sf:option>
					</sf:select><br/>
			奖励学期:<sf:select path="semester">
						<sf:option value="秋季">秋季</sf:option>
						<sf:option value="春季">春季</sf:option>
					</sf:select><br/>
			奖励原因:<sf:textarea path="cause"/><br/>
		<input type="submit" value="设置奖励"/>
		</c:if>
		<c:if test='${type eq 0}'>
			处罚情况:<sf:input path="situation"/><br/>
			处罚学年:<sf:select path="year">
						<sf:option value="2009">2009</sf:option>
						<sf:option value="2010">2010</sf:option>
						<sf:option value="2011">2011</sf:option>
						<sf:option value="2012">2012</sf:option>
					</sf:select><br/>
			处罚学期:<sf:select path="semester">
						<sf:option value="秋季">秋季</sf:option>
						<sf:option value="春季">春季</sf:option>
					</sf:select><br/>
			处罚原因:<sf:textarea path="cause"/><br/>
			<input type="submit" value="设置处罚"/>
		</c:if>
	</sf:form>
</body>
</html>