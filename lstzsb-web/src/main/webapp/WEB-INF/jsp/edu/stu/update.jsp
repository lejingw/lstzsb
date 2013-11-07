<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<%@include file="/jsp/include.jsp"%>
	<script src="${ctxPath}/js/edu/stu/student.js"></script>
</head>
<body>
	<h2>修改${stu.name}的学生信息</h2>
	<sf:form method='post' modelAttribute='stu'>
		学生学号:<sf:input path="xh"/><br/>
		学生姓名:<sf:input path="name"/><br/>
		学生性别:<sf:radiobutton path="sex" value="1"/>男<sf:radiobutton path="sex" value="0"/>女<br/>
		当前状态:<sf:select path="status"><sf:option value="1">在校</sf:option><sf:option value="0">离校</sf:option></sf:select><br/>
		<input type="submit" value="修改学生信息"/>
	</sf:form>
</body>
</html>