<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" 
rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" 
crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/resources/css/header.css">
</head>
<body>
<div class="header">
    <div class="menu">
        <c:if test="${ses.mem_id ==null}">
        <ul><a href="/mem/loginPage">로그인</a></ul>
        <ul><a href="/mem/joinPage">회원가입</a></ul>
        </c:if>
        <c:if test="${ses.mem_id == 'admin' }">
        <ul><a href="/mem/logOut">로그아웃</a></ul>
        <ul><a href="/mem/adminpage">관리인페이지</a></ul>
        </c:if>
        <c:if test="${ses.mem_id !=null && ses.mem_id !='admin' }">
        <ul><a href="/mem/logOut">로그아웃</a></ul>
        <ul><a href="/mem/mypage">마이페이지</a></ul>
        </c:if>
        <ul><a href="#">고객센터</a></ul>
        <ul><a href="#">장바구니</a></ul>
    </div>
    <div class="bar">
       <div class="logo">
         <a href="/"><img src="/resources/image/logo.jpg" alt="로고"></a>
       </div>
         <div class="searchBar">         
            <form action="/book/search" class="d-flex" role="search" method="post" >
                 <input class="form-control me-2" name="book_title" type="text" placeholder="Search">
                 <button class="btn btn-outline-success" type="submit" >Search</button>
              </form>
              
              
              
              
           
         </div>
       <div class="icons">   
         <a href=""><i class="fa-solid fa-cart-shopping"></i></a>
            <a href=""><i class="fa-solid fa-user"></i></a>
       </div>    
    </div>
</div>
</body>
</html>