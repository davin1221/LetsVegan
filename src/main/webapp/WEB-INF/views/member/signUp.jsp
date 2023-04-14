<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>signUp</title>
    <script src="https://kit.fontawesome.com/069a8eb008.js" crossorigin="anonymous"></script> 
    <link rel="stylesheet" href="${contextPath}/resources/css/signUp.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<%--
    <header>
       <div>
        <img src="${contextPath}/resources/img/logoSample2.png" alt="">
       </div>

       <div>
        <button type="button" onclick="openNav()" id="loinOpenBtn"><i class="fa-solid fa-user" style="color: #ffffff;"></i>Login</button>
       </div>

       <!-- ë¡ê·¸ì¸/íë¡í ì¬ì´ë ë©ë´ -->
       <div class="side-menu" id="mySidenav">
            <button type="button" id="loginCloseBtn" onclick="closeNav()" >&times;</button>
            
            <div class="loginWrap">
                <div class="loginLogoArea">
                    <img src="${contextPath}/resources/img/logoSample2.png" alt="">
                </div>

                <div class="login-area">

                    <form action="/member/signUp" id="loginForm">
                        <label>Email Address</label>
                        <input type="text">
                        <label>Password</label>
                        <input type="password">
                        <span id="mail-Msg">ë©ì¼ ìë ¥ ê´ë ¨ ë©ì¸ì§</span>
                        <button id="loginBtn">ì´ë©ì¼ë¡ ë¡ê·¸ì¸íê¸°</button>
                    </form>
                        <button id="kakaoLogin-Btn"><i class="fa-solid fa-comment"></i>ì¹´ì¹´ì¤í¡ì¼ë¡ ë¡ê·¸ì¸íê¸°</button>
                </div>

                <span>
                    <a href="">ì´ë©ì¼ ì°¾ê¸°</a>
                    |
                    <a href="">ë¹ë°ë²í¸ ì°¾ê¸°</a>
                </span>

                <div class="hr-sect">OR</div>
                
                
                <div class="sign-area">
                    <button><i class="fa-solid fa-envelope"></i>ì´ë©ì¼ë¡ ê°ìíê¸°</button>
                    <button><i class="fa-solid fa-comment"></i>ì¹´ì¹´ì¤í¡ì¼ë¡ ê°ìíê¸°</button>
                </div>
            </div>
        </div>
    </div>
    </header>
     --%>
	<jsp:include page ="/WEB-INF/views/common/header.jsp"/>
	 
    <!-- ---------------------------------------------------- -->

<!-- 이메일 이메일 인증 패스워드 패스워드 확인 이름 생일 전화번호 주소 -->
    <main>
            <section class="signUp-Content">

                <form action="" name="signUp-form">

                    <h3>회원가입</h3>

                    <label for="">이메일</label>
                    <div>
                        <input type="text" name="memberEmail" id="memberEmail" autocomplete="off">
                        <button type="button" id="sendEmailBtn">인증번호 전송</button>
                    </div>
                    <span>
                        이메일 안내
                    </span>


                    <label for="">인증번호</label>
                    <div>
                        <input type="text" name="cNmuber" id="cNmuber" autocomplete="off">
                        <button type="button" id="cNumBtn">인증하기</button>
                    </div>
                    <span>
                       인증번호 안내
                    </span>


                    <label for="">비밀번호</label>
                    <div>
                        <input type="password" name="memberPw" id="memberPw" autocomplete="off">
                    </div>

                    <label for="">비밀번호 확인</label>
                    <div>
                        <input type="password" name="memberPwConfirm" id="memberPwConfirm" autocomplete="off">
                    </div>
                    <span>
                       비밀번호 안내
                    </span>

                    <label for="">닉네임</label>
                    <div>
                        <input type="text" name="memberNick" id="memberNick" autocomplete="off">
                    </div>
                    <span>
                       닉네임 안내 
                    </span>

                    <label for="">전화번호</label>
                    <div>
                        <input type="text" name="memberTel" id="memberTel" autocomplete="off">
                    </div>
                    <span>
                       전화번호 안내 
                    </span>

                    <label for="">생일</label>
                    <div>
                        <input type="date" name="memberBirth" id="memberBirth" autocomplete="off">
                    </div>

                    <label for="">주소</label>
                    <div class="memberAddrDiv">
                        <input type="text" name="memberAddr" id="postInput" placeholder="우편번호" autocomplete="off">
                        <button id="postBtn">우편번호</button>
                    </div>
                    <div class="memberAddrDiv">
                        <input type="text" name="memberAddr" placeholder="도로명주소" autocomplete="off">
                    </div>
                    <div class="memberAddrDiv">
                        <input type="text" name="memberAddr"  placeholder="상세주소" autocomplete="off">
                    </div>

                    <button id="signBtn">가 입 하 기</button>
                </form>
            </section>

    </main>


     <!-- ---------------------------------------------------- -->




    <footer>
        <div class="container">
            footer

        </div>
    </footer>
    


    <script src="${contextPath}/resources/js/main.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>