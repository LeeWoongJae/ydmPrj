<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Hero start -->
<section class="hero">
	<div class="container">
		<div class="hero__slider owl-carousel">
			<div class="hero__items set-bg"
				data-setbg="${pageContext.request.contextPath}/img/hero/hero-1.jpg" >
				<div class="row">
					<div class="col-lg-6">
						<div class="hero__text">
							<div class="label">액션</div>
							<h2>명량</h2>
							<p>12척의 조선 vs 330척의 왜군 역사를 바꾼 위대한 전쟁이 시작된다!</p>
							<a href="#"><span>지금 시청하기</span> <i class="fa fa-angle-right"></i></a>
						</div>
					</div>
				</div>
			</div>
		<div class="hero__items set-bg"
			data-setbg="${pageContext.request.contextPath}/img/hero/hero-2.jpg">
			<div class="row">
				<div class="col-lg-6">
					<div class="hero__text">
						<div class="label">액션, SF</div>
						<h2>
							Avengers: Infinity War<br>어벤져스: 인피니티 워
						</h2>
						<p>새로운 조합을 이룬 어벤져스, 역대 최강 빌런 타노스에 맞서 세계의 운명이 걸린 인피니티 스톤을 향한 무한
							대결이 펼쳐진다! 마블의 클라이맥스를 목격하라!</p>
						<a href="#"><span>지금 시청하기</span> <i class="fa fa-angle-right"></i></a>
					</div>
				</div>
			</div>
		</div>
		<div class="hero__items set-bg"
			data-setbg="${pageContext.request.contextPath}/img/hero/hero-3.jpg">
			<div class="row">
				<div class="col-lg-6">
					<div class="hero__text">
						<div class="label">판타지, 로맨스</div>
						<h2>
							너의 이름은.<br>君の名は。
						</h2>
						<p>자신들이 특별하게 이어져있었음을 깨달은 ‘타키’는 ‘미츠하’를 만나러 가는데... 잊고 싶지 않은 사람
							잊으면 안 되는 사람 너의 이름은?</p>
						<a href="#"><span>지금 시청하기</span> <i class="fa fa-angle-right"></i></a>
					</div>
				</div>
			</div>
		</div>
		</div>
	</div>
	
</section>

<!-- Hero end -->
<section class="product spad">
	<div class="col-lg-8 col-md-8 col-sm-8">
		<div class="section-title">
			<h4>Movie List</h4>
		</div>
	</div>
	<div class="row">
		<c:forEach items="${list}" var="mv">
			<div class="col-lg-4 col-md-6 col-sm-6">
				<div class="product__item">
					<div class="product__item__pic set-bg"
						data-setbg="${pageContext.request.contextPath}/img/trending/${mv.thumbnail}">
						<a href="${pageContext.request.contextPath}/selectDetail.do?movieId=${mv.movieId}"
     						class="cover-link"></a>
						<div class="ep">18 / 18</div>
						<div class="comment">
							<i class="fa fa-comments"></i> 11
						</div>
						<div class="view">
							<i class="fa fa-eye"></i> 9141
						</div>
					</div>
					<div class="product__item__text">
						<ul>
							<li>${mv.genreId == 1 ? '액션' :
    mv.genreId == 2 ? '코미디' :
    mv.genreId == 3 ? '공포'  :
    mv.genreId == 4 ? 'SF'    :
    mv.genreId == 5 ? '판타지':
    mv.genreId == 6 ? '로맨스':
    mv.genreId == 7 ? '스릴러' : '기타'} </li>
							<li>Movie</li>
						</ul>
						<h5>
							<a href="#"><c:out value="${mv.title}" /></a>
						</h5>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
</section>
<script>
let logId = "${loginMember}";
console.log("${loginMember}");
console.log("현재 로그인 아이디 "+${logId});

</script>