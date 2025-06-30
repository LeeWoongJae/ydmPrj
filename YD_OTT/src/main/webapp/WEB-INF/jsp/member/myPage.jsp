<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Anime Section Begin -->
<section class="anime-details spad">
	<div class="container">
		<div class="anime__details__content">
			<div class="row">
				<div class="col-lg-3">
					<div class="anime__review__item__mypage">
                    <img src="${pageContext.request.contextPath}/img/anime/review-1.jpg" alt="">
                  </div>
				</div>
				<div class="col-lg-9">
					<div class="anime__details__text">
						<div class="anime__details__title">
							<h3>${member.memberId} 님의 마이페이지.</h3>
							<span></span>
						</div>
						<p>산은 산이요, 물은 물이로다</p>
						<div class="anime__details__widget">
							<div class="row">
								<div class="col-lg-6 col-md-6">
									<ul>
										<li><span>이 름:</span>${member.name }</li>
										<li><span>비밀번호:</span> ${member.password }</li>
										<li><span>전화번호:</span> ${member.phone }</li>
									</ul>
								</div>
								<div class="col-lg-6 col-md-6">
									<ul>
										<li><span>사용자 구분:</span> ${member.auth }</li>
										<li><span>가입 날짜:</span> ${member.joinDate }</li>
										<li><span>맴버쉽 가입여부:</span>${member.isMembership eq 'O' ? ' O' : ' X' }	</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>