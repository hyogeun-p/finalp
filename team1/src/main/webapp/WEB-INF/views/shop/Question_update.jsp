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
    <!--ì¼íëª° Question css-->
    <link rel="stylesheet" href="/resources/css/shop/Question.css">
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
            <li>
                <a href="">Shop</a>
            </li>
            <li>
                <a href="">Draw</a>
            </li>
            <li>
                <a href="">Q&A</a>
            </li>
        </div>
        <div class="login">
            <i class="xi-search"></i>
            <i class="xi-truck"></i>
            <i class="xi-cart"></i>
            <p>LogIn</p>
            <p>SignUp</p>
        </div>
    </header>
    <!--메인-->
    <main>
        <div class="write">
            <h1>문의</h1>
        </div>
        <form method="post" action="/shop/update?">
            <div class="user_Name">
                <h3>이름</h3>
                <input id="user_Name_Text" name="member_id" type="text" value="${data.member_id }">
            </div>
            <div class="question_Type">
                <h3>문의유형</h3>
                <select name="q_category" id="question_Type_Select" value="${data.q_category }" required>
                    <option value="주문/결제">주문/결제</option>
                    <option value="배송">배송</option>
                    <option value="취소/환불/교환">취소/환불/교환</option>
                    <option value="회원">회원</option>
                    <option value="기타">기타</option>
                </select>
            </div>
            <div class="question_Title">
                <h3>제목</h3>
                <input id="question_Title_Text" name="qna_title" type="text" value="${data.qna_title }">
            </div>
            <div class="question_Content">
                <h3>내용</h3>
                <textarea name="qna_text" id="question_Content_Textarea" cols="30" rows="10" value="${data.qna_text }">${qna_text}</textarea>
            </div>
            <div class="question_Open">
                <h3>공개여부</h3>
                <div class="question_Open_Radio">
                <label for="question_Open_Radio1"><input type="radio" id="question_Open_Radio1" value="${data.qna_public }" name="qna_public">공개</label>
                <label for="question_Open_Radio2"><input type="radio" id="question_Open_Radio2" value="${data.qna_public }" name="qna_public">비공개</label>
                </div>
            </div>
            <div class="question_Check">
                <input type="submit" value="등록하기">
            </div>
        </form>
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
    <!-- <script src="js/Question.js"></script> -->
</body>

</html>