<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--ì¼íëª° ê¸ë¡ë² css-->
    <link rel="stylesheet" href="/resources/css/shop/global.css">
    <link rel="stylesheet" href="/resources/css/shop/aad.css">
    <!--ì¼íëª° ê¸ë¡ë² ìì´ì½ cdn-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/xeicon@2/xeicon.min.css">
    <title>Document</title>
</head>
<body>
     <!--헤더-->
     <header>
        <div class="logo">
            <h1>Camp<span>ing</span></h1>
        </div>
        <div class="menu">
            <a href="shop.html">Shop</a>
            <a href="draw_customer.html">Draw</a>
            <a href="">Q&A</a>
        </div>
        <div class="login">
            <a href="">
                <i class="xi-search"></i>
            </a>
            <a href="">
                <i class="xi-truck"></i>
            </a>
            <a href="basket.html">
                <i class="xi-cart"></i>
            </a>
            <a href="">LogIn</a>
            <a href="">SignUp</a>
        </div>
    </header>
    <!--메인-->
    <main>
        <div class="name1">
            <div class="btn">
                <button	class="list_btn">목록</button>
            </div>
            <div class="name2">
                <div class="name2_1">
                    <p>작성자</p>
                    <p>${data.member_id}</p>
                </div>
                <div class="name2_1">
                    <p>제목</p>
                    <p>${data.qna_title}</p>
                </div>
                <div class="name2_1">
                    <p>문의유형</p>
                    <p>${data.q_category}</p>
                </div>
                <div class="name2_1"> 
                    <p>작성일자</p>
                    <p><fmt:formatDate value="${data.qna_regdate}" pattern="yyyy-MM-dd ,a, HH:mm:ss"/></p>
                </div>
            </div>
            <div class="name3">
                <p>내용</p>
                <p>${data.qna_text}</p>
            </div>
        </div>
       	<div>
       	<a href="QnA">수정</a>
        <form method="POST" action="/delete">
		  	<input type="hidden" name="qna_id" value="${data.qna_id}" />
			<input type="submit" value="삭제" />
		</form>
		</div>
    </main>
    <!--푸터-->
    <footer>
        <div class="footer_logo">
            <h1>Camp<span>ing</span></h1>
        </div>
        <div class="footer_content">
            <h1>푸터 내용</h1>
        </div>
    </footer>
      
    <script type="text/javascript">
    let update_btn = document.querySelector(".update_btn");
    let list_btn = document.querySelector(".list_btn");
    
    list_btn.addEventListener('click',function(){
    	location.href="QnA"
    });
    
    update_btn.addEventListener('click',function(){
    	location.href="Question_update?qna_id=${data.qna_id}"
    });
    
	</script>
</body>
</html>