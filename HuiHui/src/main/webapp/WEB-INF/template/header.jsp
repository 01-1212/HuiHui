<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
 <style>
   @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
 	
 	ul li{
		list-style: none;
	}
 	a {
		text-decoration: none;
		color:#333;
	}
	#menu {
		margin-left : 250px;
	}
 	#menu> li {
		position:relative;
	}
	#subMenu{
		width : 170px;
		display:none;
		position: absolute;
		font-size:15px;
		background: #F0F8FF ;
		text-align : center;
		z-index: 100;
	}
	#menu >  li:hover > ul {
		display:block;
	}
	 #menu >  li > ul > li:hover {
		background-color: white;
		/* transition: ease 1s; */
		width : 160px;
		text-align : center;
		margin-left : -30px;
		} 
    </style>

  <body>
<main>
<div class="container-fluid">
    <header id="main_menu" 
    	class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
	<a href="/HuiHui"><img src="resources/img/HuiHuiLogo.png" width="100" height="100"/></a>
      <ul class="nav col-9 col-md-auto mb-2 justify-content-center mb-md-0 fs-4" id="menu">
        <li>
        	<a href="#" class="nav-link px-4 link-dark">결재</a>
        	<ul id="subMenu">
        		<li><a href="#" class="nav-link px-4 link-dark">결재</a></li>
        		<li><a href="#" class="nav-link px-4 link-dark">조직도</a></li>
        	</ul>
        </li>
        <li>
        	<a href="#" class="nav-link px-4 link-dark">사원관리</a>
        	<ul id="subMenu">
        		<li><a href="#" class="nav-link px-4 link-dark">부서관리</a></li>
        		<li><a href="#" class="nav-link px-4 link-dark">근태</a></li>
        		<li><a href="#" class="nav-link px-4 link-dark">업무문서함</a></li>
        	</ul>
        </li>
        <li>
        	<a href="#" class="nav-link px-4 link-dark">일정관리</a>
        	<ul id="subMenu">
        		<li><a href="#" class="nav-link px-4 link-dark">주요일정</a></li>
       			<li><a href="#" class="nav-link px-4 link-dark">회의실예약</a></li>
       			<li><a href="#" class="nav-link px-4 link-dark">to-do</a></li>
        	</ul>
        </li>
        <li><a href="#" class="nav-link px-4 link-dark">소통</a>
        	<ul id="subMenu">
        		<li><a href="#" class="nav-link px-4 link-dark">사내메신저</a></li>
        		<li><a href="nonNameBoardList" class="nav-link px-4 link-dark">익명게시판</a></li> <!-- 취합 -->
        		<li><a href="#" class="nav-link px-4 link-dark">메일</a></li>
        	</ul>
        </li>
        <li ><a href="#" class="nav-link px-4 link-dark">공지사항</a>
 			<ul id="subMenu">
 				 <li><a href="#" class="nav-link px-4 link-dark">공지사항</a></li>
        		<li><a href="#" class="nav-link px-4 link-dark">사내 issue</a></li>
 			</ul>       
        </li>       
        <li>
        </li>
      </ul>      
	    <div class="col-md-3 text-end">
			<div class="nav-link px-2 link-dark">안녕하세요 ㅇㅇㅇ님</div>
	     	<a href="#"><button type="button" class="btn btn-outline-primary me-2">마이페이지</button></a>
		    <a href="#"><button type="button" class="btn btn-primary">로그아웃</button></a>
		</div>
    </header>
   </div>
</main>
</body>
</html>