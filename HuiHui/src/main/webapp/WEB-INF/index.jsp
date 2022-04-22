<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="resources/css/bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/nonName.css" rel="stylesheet">	<!-- 취합 -->
<script src="resources/js/nonNameBoardCheck.js"></script><!-- 취합 -->
<script src="resources/js/jquery-3.2.1.min.js"></script>
</head>
<body>
	<main>
		<%@ include file="template/header.jsp" %>
		<%@ include file="template/sidebar1.jsp" %>
		<jsp:include page="${ param.body }" />
	</main>
    <script src="resources/js/bootstrap.bundle.min.js"></script>
    
</body>
</html>