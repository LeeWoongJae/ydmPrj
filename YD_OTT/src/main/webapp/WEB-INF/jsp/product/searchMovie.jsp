<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<!-- Product Section Begin -->
	<section class="product spad">
	<div class="col-lg-8 col-md-8 col-sm-8">
		<div class="section-title">
			<h4>Search Result</h4>
		</div>
	</div>
	<div class="row">
			<div class="col-lg-4 col-md-6 col-sm-6">
				<div class="product__item">
					<div class="product__item__pic set-bg"
						data-setbg="${pageContext.request.contextPath}/img/trending/${mlist.thumbnail}">
						<a href="${pageContext.request.contextPath}/selectDetail.do?movieId=${mlist.movieId}"
     						class="cover-link"></a>
						
					</div>
					<div class="product__item__text">
						<ul>
							<li>${mlist.genreId == 1 ? '액션' :
    mlist.genreId == 2 ? '코미디' :
    mlist.genreId == 3 ? '공포'  :
    mlist.genreId == 4 ? 'SF'    :
    mlist.genreId == 5 ? '판타지':
    mlist.genreId == 6 ? '로맨스':
    mlist == 7 ? '스릴러' : '기타'} </li>
							<li>Movie</li>
						</ul>
						<h5>
							<a href="#"><c:out value="${mlist.title}" /></a>
						</h5>
					</div>
				</div>
			</div>
	</div>
</section>
