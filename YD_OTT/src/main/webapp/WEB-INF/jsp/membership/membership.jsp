<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en" data-bs-theme="auto">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, 그리고 Bootstrap 기여자들">
<meta name="generator" content="Astro v5.7.10">
<link rel="canonical"
	href="https://getbootstrap.kr/docs/5.3/examples/pricing/">
<script src="/docs/5.3/assets/js/color-modes.js"></script>
<link href="/docs/5.3/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT">
<link rel="apple-touch-icon"
	href="/docs/5.3/assets/img/favicons/apple-touch-icon.png"
	sizes="180x180">
<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-32x32.png"
	sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-16x16.png"
	sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.3/assets/img/favicons/manifest.json">
<link rel="mask-icon"
	href="/docs/5.3/assets/img/favicons/safari-pinned-tab.svg"
	color="#712cf9">
<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#712cf9">
<link href="pricing.css" rel="stylesheet">
<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem
	}
}

.b-example-divider {
	width: 100%;
	height: 3rem;
	background-color: #0000001a;
	border: solid rgba(0, 0, 0, .15);
	border-width: 1px 0;
	box-shadow: inset 0 .5em 1.5em #0000001a, inset 0 .125em .5em #00000026
}

.b-example-vr {
	flex-shrink: 0;
	width: 1.5rem;
	height: 100vh
}

.bi {
	vertical-align: -.125em;
	fill: currentColor
}

.nav-scroller {
	position: relative;
	z-index: 2;
	height: 2.75rem;
	overflow-y: hidden
}

.nav-scroller .nav {
	display: flex;
	flex-wrap: nowrap;
	padding-bottom: 1rem;
	margin-top: -1px;
	overflow-x: auto;
	text-align: center;
	white-space: nowrap;
	-webkit-overflow-scrolling: touch
}

.btn-bd-primary {
	--bd-violet-bg: #712cf9;
	--bd-violet-rgb: 112.520718, 44.062154, 249.437846;
	--bs-btn-font-weight: 600;
	--bs-btn-color: var(--bs-white);
	--bs-btn-bg: var(--bd-violet-bg);
	--bs-btn-border-color: var(--bd-violet-bg);
	--bs-btn-hover-color: var(--bs-white);
	--bs-btn-hover-bg: #6528e0;
	--bs-btn-hover-border-color: #6528e0;
	--bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
	--bs-btn-active-color: var(--bs-btn-hover-color);
	--bs-btn-active-bg: #5a23c8;
	--bs-btn-active-border-color: #5a23c8
}

.bd-mode-toggle {
	z-index: 1500
}

.bd-mode-toggle .bi {
	width: 1em;
	height: 1em
}

.bd-mode-toggle .dropdown-menu .active .bi {
	display: block !important
}
</style>
</head>
<body>
<section>

<h2 class="text-light fs-1" align="center">원하는 플랜을 선택하세요.</h2>

</section>

	<input type="hidden" name="memberId" value="${logId}">
			<div class="row g-2 text-center">
			<!-- 3일 맴버쉽 -->
				<div class="col col-6">
					<div class="card mb-2 rounded-3 shadow-sm">
						<div class="card-header py-3">
							<h4 class="my-0 fw-normal">3 DAYS</h4>
						</div>
						<div class="card-body">
							<h1 class="card-title pricing-card-title">
								<span class="mbsprice">￦7,700</span>
								<input type="hidden" name="mbscode" value="1">
							</h1>
							<ul class="list-unstyled mt-3 mb-4">
								<li>128명의 사용자들이 가입했어요</li>
								<li>3일간 저렴한 가격으로 영상을 시청해봐요</li>
								
							</ul>
							<button type="button"
								class="w-100 btn btn-lg btn-outline-primary">Sign up
								for membership</button>
						</div>
					</div>
				</div>
				<!-- 7일 맴버쉽 -->
				<div class="col col-6">
					<div class="card mb-2 rounded-3 shadow-sm">
						<div class="card-header py-3">
							<h4 class="my-0 fw-normal">7 DAYS</h4>
						</div>
						<div class="card-body">
							<h1 class="card-title pricing-card-title">
								<span class="mbsprice">￦11,000</span>
								<input type="hidden" name="mbscode" value="2">
							</h1>
							<ul class="list-unstyled mt-3 mb-4">
								<li>256명의 사용자들이 가입했어요</li>
								<li>일주일간 저렴한 가격으로 영상을 시청해봐요</li>
								
							</ul>
							<button type="button" class="w-100 btn btn-lg btn-outline-primary">Sign up
								for membership</button>
						</div>
					</div>
				</div>
				<div class="col col-6">
					<div class="card mb-2 rounded-3 shadow-sm border-primary">
						<div class="card-header py-3 text-bg-primary border-primary">
							<h4 class="my-0 fw-normal">15 DAYS</h4>
						</div>
						<div class="card-body">
							<h1 class="card-title pricing-card-title">
								<span class="mbsprice">￦18,000</span>
								<input type="hidden" name="mbscode" value="3">
							</h1>
							<ul class="list-unstyled mt-3 mb-4">
								<li>512명의 사용자들이 가입했어요</li>
								<li>15일간 저렴한 가격으로 영상을 시청해봐요</li>
								
							</ul>
							<button type="button" class="w-100 btn btn-lg btn-outline-primary">Sign up
								for membership</button>
						</div>
					</div>
				</div>
				<div class="col col-6">
					<div class="card mb-2 rounded-3 shadow-sm border-primary">
						<div class="card-header py-3 text-bg-primary border-primary">
							<h4 class="my-0 fw-normal">30 DAYS</h4>
						</div>
						<div class="card-body">
							<h1 class="card-title pricing-card-title">
								<span class="mbsprice">￦22,000</span>
								<input type="hidden" name="mbscode" value="4">
							</h1>
							<ul class="list-unstyled mt-3 mb-4">
								<li>1024명의 사용자들이 가입했어요</li>
								<li>한달간 저렴한 가격으로 영상을 시청해봐요</li>
								
							</ul>
							<button type="button" class="w-100 btn btn-lg btn-outline-primary">Sign up
								for membership</button>
						</div>
					</div>
				</div>
			</div>
			<!-- session login id check -->
			
			<div>
			<!-- <p>현재 로그인된 계정 아이디(membership.jsp) : ${logId}</p> -->
			</div>
	<script src="/docs/5.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO"
		class="astro-vvvwv3sm"></script>
<script>
let memberId = document.querySelector('input[name="memberId"]').value;
console.log(memberId);
</script>
<script src="${pageContext.request.contextPath}/js/membership.js"></script>		
</body>
</html>










