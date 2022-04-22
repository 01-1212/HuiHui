<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:formatDate var="today" value="${ now }" pattern="yyyy-MM-dd" />
<article>
	<table class="nonNameList">
		<tr>
			<th class="nonNameNo">no</th>
			<th class="nonNameTitle">제목</th>
			<th class="nonNameTh">날짜</th>
			<th class="nonNameTh">조회</th>
			<th class="nonNameTh">좋아요</th>
			<th class="nonNameTh">싫어요</th>
		</tr>
		<c:if test="${not empty nonNameBoardList }"> 
		<c:forEach var="n" items="${nonNameBoardList }" varStatus="status">
			<tr>
				<td class="nonNameTd">${n.nonNameNo }</td>
				<td class="nonNameTd">
					<a href="nonNameDetail?nonNameNo=${n.nonNameNo}&pageNum=${currentPage}">
						${n.nonNameTitle}</a>
				</td>
				<td class="nonNameTd">					
					<fmt:formatDate var="regDate" value="${ n.nonNameDate }" pattern="yyyy-MM-dd" />
					<c:if test="${ today eq  regDate}">
						<fmt:formatDate value="${ n.nonNameDate }" pattern="hh:mm" />
					</c:if>
					<c:if test="${ not (today eq  regDate) }">
						<fmt:formatDate value="${ n.nonNameDate }" pattern="yyyy-MM-dd" />
					</c:if>								
				</td>
				<td class="nonNameTd">${n.nonNameReadCount }</td>
				<td class="nonNameTd">${n.nonNameThank}</td>
				<td class="nonNameTd">${n.nonNameBad}</td>
			</tr>
		</c:forEach>
		<tr>
				<td colspan="5" class="nonNameWrite"><a href="nonNameWriteForm">글쓰기</a></td>
			</tr>
			<tr>
				<td colspan="5">
					<form name="searchForm" id="searchForm" action="#">
						<select>
							<option value="title">제목</option>
							<option value="content">내용</option>
						</select>
						<input type="text" placeholder="검색어를 입력하세요" name="keyword">
						<input type="button" value="검색"/>
					</form>
				</td>
			</tr>
		</c:if>
		
		<c:if test="${empty nonNameBoardList }"> 
		<tr>
			<td colspan="5">게시물이 존재하지 않습니다.</td>
		</tr>
		<tr>
				<td colspan="5" class="nonNameWrite"><a href="nonNameWriteForm">글쓰기</a></td>
			</tr>
			<tr>
				<td colspan="5">
					<form name="searchForm" id="searchForm" action="#">
						<select>
							<option value="title">제목</option>
							<option value="content">내용</option>
						</select>
						<input type="text" placeholder="검색어를 입력하세요" name="keyword">
						<input type="button" value="검색"/>
					</form>
				</td>
			</tr>
		</c:if>
	</table>
	
</article>