<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.sidebar{
		width:350px;
		height : 250px;
		/* border :3px solid #E0FFFF; */
		background-color:#DCDCDC;
		border-radius: 25px;
		font-size : 20px;
		font-color : white;
	}
	.calendar{
		border : 1px solid black;
		width:350px;
		height : 400px;
		margin-top : 20px;
	}
	 a:link { 
		text-decoration: none;
		color : balck;
	 }
</style>
</head>
<body>
<table class="sidebar">
	<tr>
		<td class="px-4 link-dark "><a href="#"> 결재 신청 바로가기</a></td>
	</tr>
	<tr>
		<td class="px-4 link-dark"><a href="#"> 회의실 예약 바로가기</a></td>
	</tr>
	<tr>
		<td class="px-4 link-dark"><a href="#"> 사원 검색 바로가기</a></td>
	</tr>
	<tr>
		<td class="px-4 link-dark"><a href="nonNameBoardList"> 익명게시판 바로가기</a></td> <!-- 취합 -->
	</tr>
</table>
<table class="calendar">
	<tr>
		<td>calendar</td>
	</tr>
	<tr>
		<td>calendar</td>
	</tr>
</table>
</body>
</html>