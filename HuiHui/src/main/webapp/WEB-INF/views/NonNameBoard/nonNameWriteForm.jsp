<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<article>
<form name="nonNameWriteForm" id="nonNameWriteProcess" method="post" action="nonNameWriteProcess">
<table class="nonDetail">
	<tr class="1234">
		<td class="nonNameBoardTitle">제목</td>
		<td>
			<input type="text" name="nonNameTitle" id="nonNameTitle" maxlength="15"/>
		</td>
	</tr>
	<tr>
		<td colspan="2" class="contentTextBox">
			<textarea name="nonNameContent" id="nonNameContent"
				placeholder="누군가를 비방하는 내용의 게시물을 올리면  관리자에 의해 게시물이  삭제될 수 있습니다. ">
			</textarea>
		</td>
	</tr>
	<tr>
		<td>
			<input type="submit" value="등록하기" />
			<input type="button" value="목록보기" 
				onclick="javascript:window.location.href='nonNameBoardList'"/>
		</td>
	</tr>
</table>
</form>
</article>

<!-- <div class="modal" tabindex="-1" id="titleModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">제목을 입력하지 않았습니다.</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <p>제목을 입력해주세요</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div> 
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
-->
</body>