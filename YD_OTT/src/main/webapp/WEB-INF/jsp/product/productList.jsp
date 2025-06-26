<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Hero start -->
 <section class="hero">
	<div class="container">
		<div class="hero__slider owl-carousel">
			<div class="hero__items set-bg" data-setbg="img/hero/hero-1.jpg">
				<div class="row">
					<div class="col-lg-6">
						<div class="hero__text">
							<div class="label">Adventure</div>
							<h2>Fate / Stay Night: Unlimited Blade Works</h2>
							<p>After 30 days of travel across the world...</p>
							<a href="#"><span>Watch Now</span> <i
								class="fa fa-angle-right"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div class="hero__items set-bg" data-setbg="img/hero/hero-1.jpg">
				<div class="row">
					<div class="col-lg-6">
						<div class="hero__text">
							<div class="label">Adventure</div>
							<h2>Fate / Stay Night: Unlimited Blade Works</h2>
							<p>After 30 days of travel across the world...</p>
							<a href="#"><span>Watch Now</span> <i
								class="fa fa-angle-right"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div class="hero__items set-bg" data-setbg="img/hero/hero-1.jpg">
				<div class="row">
					<div class="col-lg-6">
						<div class="hero__text">
							<div class="label">Adventure</div>
							<h2>Fate / Stay Night: Unlimited Blade Works</h2>
							<p>After 30 days of travel across the world...</p>
							<a href="#"><span>Watch Now</span> <i
								class="fa fa-angle-right"></i></a>
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
						data-setbg="${pageContext.request.contextPath}/img/trending/trend-1.jpg">
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
							<li>Active</li>
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