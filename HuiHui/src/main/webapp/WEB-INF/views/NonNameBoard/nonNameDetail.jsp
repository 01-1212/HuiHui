<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:formatDate var="today" value="${ now }" pattern="yyyy-MM-dd" />
<article>
<form name="checkForm" id="checkForm">
	<input type="hidden" name="no" id="no" value="${ NonNameBoard.nonNameNo }"/>
	<input type="hidden" name="id" id="id" value="${ NonNameBoard.empId }"/>
</form>
<table class="nonDetail">
	<tr class="nonTitle">
		<td colspan="3">${nonNameBoard.nonNameTitle }</td>
	</tr>
	<tr class="nonSubTitle">
		<td>익명의 사원</td>	<!-- 로그인 기능 구현되면 수정 -->
		<td>
			<fmt:formatDate value="${nonNameBoard.nonNameDate }" var="regDate" pattern="yyyy-MM-dd"/>
				<c:if test="${today == regDate }">
					<fmt:formatDate value="${nonNameBoard.nonNameDate }" pattern="hh:mm"/>
				</c:if>
				<c:if test="${today != regDate }">
					<fmt:formatDate value="${nonNameBoard.nonNameDate }" pattern="yyyy-MM-dd"/>
				</c:if>
		</td>
		<td>${nonNameBoard.nonNameReadCount }</td>
	</tr>
	<tr>
		<td colspan="3">${nonNameBoard.nonNameContent }</td>
	</tr>
	<tr>
		<td class="nonContent">${nonNameBoard.nonNameThank }</td>
		<td>
			<input type="button" id="nonNameUpdate" value="수정"/>
			<input type="button" id="nonNameDelete" value="삭제"/>
			<input type="button" value="목록보기" 
				onclick="javascript:window.location.href='nonNameBoardList'"/>
		</td>
	</tr>
</table>
</article>