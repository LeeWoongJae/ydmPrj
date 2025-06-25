<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Anime | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/plyr.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

   <!-- 헤더가 중복이라서 날림 -->

    <!-- Normal Breadcrumb Begin -->
    <section class="normal-breadcrumb set-bg" data-setbg="${pageContext.request.contextPath}/img/normal-breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2>Sign Up</h2>
                        <p>Welcome to the official Anime blog.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Normal Breadcrumb End -->

    <!-- Signup Section Begin -->
    <section class="signup spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="login__form">
                        <h3>Sign Up</h3>
                        <form action="#">
                            <div class="input__item">
                                <input type="text" placeholder="Your ID">
                                <span class="icon_key"></span>
                            </div>
                            <div class="input__item">
                                <input type="text" placeholder="Password">
                                <span class="icon_lock"></span>
                            </div>
                            <div class="input__item">
                                <input type="text" placeholder="Your Email">
                                <span class="icon_mail"></span>
                            </div>
                            <div class="input__item">
                                <input type="text" placeholder="Phone">
                                <span class="icon_phone"></span>
                            </div>
                            <div class="input__item">
                                <input type="text" placeholder="Birth Date">
                                <span class="icon_calendar"></span>
                            </div>
                            <button type="submit" class="site-btn">Login Now</button>
                        </form>
                        <h5>Already have an account? <a href="#">Log In!</a></h5>
                    </div>
                </div>
               
              
            </div>
        </div>
    </section>
    <!-- Signup Section End -->
	<!-- footer가 겹쳐서 나오니까 이부분 삭제처리 함 -->
   

    <!-- Js Plugins -->
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/player.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/mixitup.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.slicknav.js"></script>
    <script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/main.js"></script>


<script>
let check = false;
document.forms.signForm.addEventListener('submit',function(e){
	if(!check){
		e.preventDefault();
		alert("입력값 확인!");
		return;
	}
	this.submit();
});

document.querySelector('input[name="userId"]').addEventListener('change',function(e){
console.log(this);
let user = e.target.value;
console.log("user:"+user);
	// fetch로 넘겨받을 파라메터를 지정하여서 java단 서버에서 값을 처리하고 데이터를 리턴
	fetch('checkId.do?id='+user)
	.then(memberData=>memberData.json())
	.then(result=>{
		console.log(result);
		if(result.retCode=='Exist'){
			alert("존재하는 아이디");
		}else{
			alert("사용가능 아이디");
		}
	})
	.catch(err=>console.log(err));
	// 비밀번호까지 중복여부 해보기
	document.querySelector('input[name="userPw"]').addEventListener('change',function(ev){
		console.log(this);
		let password = ev.target.value;
		console.log("pw:"+password+" id : "+user);
			// fetch로 넘겨받을 파라메터를 지정하여서 java단 서버에서 값을 처리하고 데이터를 리턴
			fetch('checkId.do?id='+user)
			.then(memberData=>memberData.json())
			.then(result=>{
				console.log(result.password);
				if(result.retCode=='Exist'){
					alert("사용불가 password");
				}else{
					alert("사용가능 password");
				}
			})
			.catch(err=>console.log(err))
			
		});
	
});



</script>
</body>

</html>