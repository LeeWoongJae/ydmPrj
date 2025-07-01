<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
  <meta charset="UTF-8">
  <title>YDFLIX | Login</title>

  <!-- Google Font -->
  <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">

  <!-- Css Styles -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/elegant-icons.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/plyr.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/nice-select.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/slicknav.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

  <style>
    #capsWarning {
      color: #f44336;
      font-size: 13px;
      font-weight: 500;
      background-color: rgba(255, 0, 0, 0.05);
      padding: 6px 10px;
      border-radius: 6px;
      display: none;
      margin-top: 5px;
    }
  </style>
</head>

<body>

  <!-- Breadcrumb -->
  <section class="normal-breadcrumb set-bg"
    data-setbg="${pageContext.request.contextPath}/img/normal-breadcrumb.jpg">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <div class="normal__breadcrumb__text">
            <h2>Login</h2>
            <p>Welcome to the non-Official YDFLIX.</p>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Login Section -->
  <section class="login spad">
    <div class="container">
      <div class="row">
        <div class="col-lg-6">
          <div class="login__form">
            <h3>Login</h3>
            <form action="login.do" method="post">
              <div class="input__item">
                <input type="text" name="memberId" placeholder="아이디" required>
                <span class="icon_id"></span>
              </div>
              <div class="input__item" style="margin-bottom: 0;">
                <input type="password" name="password" id="passwordInput" placeholder="비밀번호" required>
                <span class="icon_lock"></span>
              </div>
              <div id="capsWarning">※ Caps Lock이 켜져 있습니다.</div>

              <button type="submit" class="site-btn mt-3">LOGIN NOW</button>
            </form>

            <a href="#" class="forget_pass">Forgot Your Password?</a>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="login__register">
            <h3>Don’t Have An Account?</h3>
            <a href="signUp.do" class="primary-btn">REGISTER NOW</a>
          </div>
        </div>
      </div>

      <!-- Social Login -->
      <div class="login__social">
        <div class="row d-flex justify-content-center">
          <div class="col-lg-6">
            <div class="login__social__links">
              <span>OR</span>
              <ul>
                <li><a href="#" class="facebook"><i class="fa fa-facebook"></i> SIGN IN WITH FACEBOOK</a></li>
                <li><a href="#" class="google"><i class="fa fa-google"></i> SIGN IN WITH GOOGLE</a></li>
                <li><a href="#" class="twitter"><i class="fa fa-twitter"></i> SIGN IN WITH TWITTER</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>

    </div>
  </section>

  <!-- Search Modal -->
  <div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
      <div class="search-close-switch"><i class="icon_close"></i></div>
      <form class="search-model-form">
        <input type="text" id="search-input" placeholder="Search here.....">
      </form>
    </div>
  </div>

  <!-- JS Plugins -->
  <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/player.js"></script>
  <script src="${pageContext.request.contextPath}/js/jquery.nice-select.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/mixitup.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/jquery.slicknav.js"></script>
  <script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/main.js"></script>

  <!-- CapsLock JS -->
  <script>
    const passwordInput = document.getElementById("passwordInput");
    const capsWarning = document.getElementById("capsWarning");

    passwordInput.addEventListener("keyup", function (e) {
      capsWarning.style.display = e.getModifierState("CapsLock") ? "block" : "none";
    });

    passwordInput.addEventListener("blur", function () {
      capsWarning.style.display = "none";
    });
  </script>

  <!-- 로그인 실패 시 alert  -->
  <c:if test="${not empty errorMsg}">
    <script>
      setTimeout(() => {
        alert("${errorMsg}");
      }, 100);
    </script>
  </c:if>

</body>
</html>
