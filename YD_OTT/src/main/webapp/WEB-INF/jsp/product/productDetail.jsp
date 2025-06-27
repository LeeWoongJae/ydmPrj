<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<link
	href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/plyr.css" type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/nice-select.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css" type="text/css">
</head>

<body>
	<!-- Page Preloder -->

	<!-- Header Section Begin -->

	<!-- Header End -->

	<!-- Breadcrumb Begin -->
	<div class="breadcrumb-option">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb__links">
						<a href="main.do"><i class="fa fa-home"></i> Home</a> <a href="#">Categories</a>
						<span>${mv.genreId == 1 ? '액션' :
    mv.genreId == 2 ? '코미디' :
    mv.genreId == 3 ? '공포'  :
    mv.genreId == 4 ? 'SF'    :
    mv.genreId == 5 ? '판타지':
    mv.genreId == 6 ? '로맨스':
    mv.genreId == 7 ? '스릴러' : '기타'}
						</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb End -->

	<form action="selectDetail.do">
		<!-- Anime Section Begin -->
		<section class="anime-details spad">
			<div class="container">
				<div class="anime__details__content">
					<div class="row">
						<div class="col-lg-3">
							<div class="anime__details__pic set-bg"
								data-setbg="${pageContext.request.contextPath}/img/anime/${mv.thumbnail}">
								<div class="comment">
									<i class="fa fa-comments"></i> 11
								</div>
								<div class="view">
									<i class="fa fa-eye"></i> ${mv.viewCount}
								</div>
							</div>
						</div>
						<div class="col-lg-9">
							<div class="anime__details__text">
								<div class="anime__details__title">
									<h3>${mv.title }</h3>
									<span>${mv.titleSub}</span>
								</div>
								<div class="anime__details__rating">
									<div class="rating">
										<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
											class="fa fa-star"></i></a> <a href="#"><i class="fa fa-star"></i></a>
										<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i
											class="fa fa-star-half-o"></i></a>
									</div>
									<span>1.029 Votes</span>
								</div>
								<p>${mv.description }</p>
								<div class="anime__details__widget">
									<div class="row">
										<div class="col-lg-6 col-md-6">
											<ul>
												<li><span>Genre:</span> ${mv.genreName}</li>
												<li><span>Duration:</span> ${mv.duration}</li>
												<li><span>Rating:</span> <c:out value="${avgStar}"
														default="0.0" /></li>
												<li><span>Release:</span> ${mv.releaseDate}</li>
											</ul>
										</div>
										<div class="col-lg-6 col-md-6">
											<ul>
												<li><span>Score:</span> ${mv.totalStar} /
													${mv.starCount}</li>
												<li><span>Quality:</span> HD</li>
												<li><span>Views:</span> ${mv.viewCount}</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="anime__details__btn">
									<a href="#" class="follow-btn"><i class="fa fa-heart-o"></i>
										찜 하기</a> <a
										href="${pageContext.request.contextPath}/productWatch.do?movieId=${mv.movieId}"
										class="watch-btn"><span>지금 시청하기</span> <i
										class="fa fa-angle-right"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-8 col-md-8">
						<div class="anime__details__review">
							<div class="section-title">
								<h5>Reviews</h5>
							</div>
							<div class="anime__review__item">
								<div class="anime__review__item__pic">
									<img src="img/anime/review-1.jpg" alt="">
								</div>
								<div class="anime__review__item__text">
									<h6>
										Chris Curry - <span>1 Hour ago</span>
									</h6>
									<p>whachikan Just noticed that someone categorized this as
										belonging to the genre "demons" LOL</p>
								</div>
							</div>
							<div class="anime__review__item">
								<div class="anime__review__item__pic">
									<img src="img/anime/review-2.jpg" alt="">
								</div>
								<div class="anime__review__item__text">
									<h6>
										Lewis Mann - <span>5 Hour ago</span>
									</h6>
									<p>Finally it came out ages ago</p>
								</div>
							</div>
							<div class="anime__review__item">
								<div class="anime__review__item__pic">
									<img src="img/anime/review-3.jpg" alt="">
								</div>
								<div class="anime__review__item__text">
									<h6>
										Louis Tyler - <span>20 Hour ago</span>
									</h6>
									<p>Where is the episode 15 ? Slow update! Tch</p>
								</div>
							</div>
							<div class="anime__review__item">
								<div class="anime__review__item__pic">
									<img src="img/anime/review-4.jpg" alt="">
								</div>
								<div class="anime__review__item__text">
									<h6>
										Chris Curry - <span>1 Hour ago</span>
									</h6>
									<p>whachikan Just noticed that someone categorized this as
										belonging to the genre "demons" LOL</p>
								</div>
							</div>
							<div class="anime__review__item">
								<div class="anime__review__item__pic">
									<img src="img/anime/review-5.jpg" alt="">
								</div>
								<div class="anime__review__item__text">
									<h6>
										Lewis Mann - <span>5 Hour ago</span>
									</h6>
									<p>Finally it came out ages ago</p>
								</div>
							</div>
							<div class="anime__review__item">
								<div class="anime__review__item__pic">
									<img src="img/anime/review-6.jpg" alt="">
								</div>
								<div class="anime__review__item__text">
									<h6>
										Louis Tyler - <span>20 Hour ago</span>
									</h6>
									<p>Where is the episode 15 ? Slow update! Tch</p>
								</div>
							</div>
						</div>
						<div class="anime__details__form">
							<div class="section-title">
								<h5>Your Comment</h5>
							</div>
							<form action="#">
								<textarea placeholder="Your Comment"></textarea>
								<button type="submit">
									<i class="fa fa-location-arrow"></i> Review
								</button>
							</form>
						</div>
					</div>

				</div>
			</div>
		</section>
	</form>
	<!-- Anime Section End -->

	<!-- Footer Section Begin -->

	<!-- Footer Section End -->

	<!-- Search model Begin -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">
				<i class="icon_close"></i>
			</div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search model end -->

	<!-- Js Plugins -->
	<script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/player.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/jquery.nice-select.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/mixitup.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.slicknav.js"></script>
	<script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/main.js"></script>

</body>

</html>
