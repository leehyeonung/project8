<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/resources/css/mypage.css">
</head>
<body>
<jsp:include page="../layout/header.jsp"></jsp:include>
<div class="main">

<div class="information">
<h1>
아이디(${ses.mem_id})님 환영합니다 !!
</h1>
전화번호(${ses.mem_cell_num})
</div>

<div class="select">
<ul id="padding">
	<li><a href="/mem/modify" class="box">회원정보수정</a></li>
	<li><a href="/mem/orderCheck?mem_num=${ses.mem_num}" class="box">주문/배송조회</a></li>
	<li><a href="/mem/buyCheck?mem_num=${ses.mem_num}" class="box">구매함</a></li>
	<li><a href="/board/list" class="box">1대1문의</a></li>
	<li><a href="/mem/delete" class="box">회원탈퇴</a></li>
</ul>
</div>

</div>

<jsp:include page="../layout/footer.jsp"></jsp:include>
</body>
</html>