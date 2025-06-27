<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Product Section Begin -->

<section class="product spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-8">
				<div class="trending__product">
					<div class="row">
						<div class="col-lg-8 col-md-8 col-sm-8">
							<div class="section-title">
								<h4>Trending Now</h4>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-4">
							<div class="btn__all">
								<a href="#" class="primary-btn">View All <span
									class="arrow_right"></span></a>
							</div>
						</div>
					</div>
					<div class="row">
							<div class="col-lg-4 col-md-6 col-sm-6">
								<div class="product__item">
						<c:forEach  var="mv" items="${list}">
						<p>${list}</p>
									<div class="product__item__pic set-bg"
										data-setbg="/YD_OTT/img/trending/trend-1.jpg">
										
										<div class="comment">
											<i class="fa fa-comments"></i> 11
										</div>
										<div class="view">
											<i class="fa fa-eye"></i> 91411111
										</div>
									</div>
									<div class="product__item__text">
										<ul>
											<li>Active</li>
											<li>Movie</li>
										</ul>
										<h5>
											<a href="#"><c:out value="${mv.title }"></c:out></a>
										</h5>
									</div>

							</c:forEach>
								</div>
							</div>
					</div>

				</div>
			</div>
		</div>
	</div>
</section>