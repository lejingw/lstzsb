<%@page import="com.totyu.apps.common.model.SystemContext"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="pg" uri="http://jsptags.com/tags/navigation/pager" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<pg:pager export="curPage=pageNumber" 
	items="${param.totalRecord }" 
	maxPageItems="<%=SystemContext.getPageSize() %>"
	url="${param.url }"
	maxIndexPages="3">
	<span style="float:right;padding:6px;">
	共
	<pg:last>
		${pageNumber } 页[${param.totalRecord }条记录],每页显示<%=SystemContext.getPageSize() %>条,
	</pg:last>
	<c:forEach items="${param.params }" var="p">
		<pg:param name="${p }"/>
	</c:forEach>
	<pg:first>
		<a href="${pageUrl }" class="pager_link">首页</a>
	</pg:first>
	<pg:prev>
		<a href="${pageUrl }" class="pager_link">上一页</a>
	</pg:prev>
	<pg:pages>
		<c:if test="${curPage eq pageNumber }">
			[${pageNumber }]
		</c:if>
		<c:if test="${curPage != pageNumber }">
			<a href="${pageUrl }" class="pager_link">${pageNumber }</a>
		</c:if>
	</pg:pages>
	<pg:next>
		<a href="${pageUrl }" class="pager_link">下一页</a>
	</pg:next>
	<pg:last>
		<a href="${pageUrl }" class="pager_link">尾页</a>
	</pg:last>
	</pg:pager>
	</span>
	每页显示
<select name="pagesize" onchange="selectPagesize(this)" >
<c:forEach begin="5" end="50" step="5" var="i">
 <option value="${i}"
 <c:if test="${ps eq i }">selected</c:if>
 >${i}</option>
</c:forEach>
</select>行

<script type="text/javascript">
function selectPagesize(field){
 document.location.href = document.all.firstpageurl.href + "&pagesize="+field.value;//得到用户从下拉列表选择的每页显示的行数，并刷新到转到首页
}
</script>