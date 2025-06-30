<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
  <meta charset="UTF-8">
  <title>Anime | Detail</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>
  <section class="anime-details spad">
    <div class="container">
      <div class="anime__details__content">
        <div class="row">
          <div class="col-lg-3">
            <div class="anime__details__pic set-bg"
                 data-setbg="${pageContext.request.contextPath}/img/anime/${mv.thumbnail}">
              <div class="comment"><i class="fa fa-comments"></i> ${fn:length(reviewList)}</div>
              <div class="view"><i class="fa fa-eye"></i> ${mv.viewCount}</div>
            </div>
          </div>
          <div class="col-lg-9">
            <div class="anime__details__text">
              <div class="anime__details__title">
                <h3>${mv.title}</h3>
                <span>${mv.titleSub}</span>
              </div>
              <div class="anime__details__rating">
                <div class="rating" style="color: gold; font-weight: bold;">
                  ⭐ 평균 별점: <c:out value="${avgStar}" default="0.0"/>점
                </div>
                <span>${fn:length(reviewList)} Votes</span>
              </div>
              <p>${mv.description}</p>
              <div class="anime__details__widget">
                <div class="row">
                  <div class="col-lg-6">
                    <ul>
                      <li><span>Genre:</span> ${mv.genreName}</li>
                      <li><span>Duration:</span> ${mv.duration}</li>
                      <li><span>Rating:</span> <c:out value="${avgStar}" default="0.0"/></li>
                      <li><span>Release:</span> ${mv.releaseDate}</li>
                    </ul>
                  </div>
                  <div class="col-lg-6">
                    <ul>
                      <li><span>Score:</span> ${mv.totalStar} / ${mv.starCount}</li>
                      <li><span>Quality:</span> HD</li>
                      <li><span>Views:</span> ${mv.viewCount}</li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="anime__details__btn">
                <a href="addWish.do?movieId=${mv.movieId}" class="follow-btn">
                  <i class="fa fa-heart-o"></i> 찜 하기
                </a>
                <a href="${pageContext.request.contextPath}/productWatch.do?movieId=${mv.movieId}" class="watch-btn">
                  <span>지금 시청하기</span> <i class="fa fa-angle-right"></i>
                </a>
              </div>
            </div>
          </div>
        </div>

        <!-- 리뷰 목록 -->
        <div class="row mt-5">
          <div class="col-lg-8 col-md-8">
            <div class="anime__details__review">
              <div class="section-title"><h5>Reviews</h5></div>
              <c:forEach var="rev" items="${reviewList}">
                <div class="anime__review__item">
                  <div class="anime__review__item__pic">
                    <img src="${pageContext.request.contextPath}/img/anime/review-1.jpg" alt="">
                  </div>
                  <div class="anime__review__item__text">
                    <h6>${rev.memberId} - <span>${rev.regDate}</span></h6>
                    <p>${rev.content}</p>
                    <p>⭐ ${rev.star}점</p>
                    <c:if test="${rev.memberId == sessionScope.logId or logId eq 'admin'}">
                      <button class="btn btn-warning btn-sm edit-btn"
                        data-id="${rev.reviewId}" data-content="${rev.content}" data-star="${rev.star}">
                        수정
                      </button>
                      <button class="btn btn-danger btn-sm delete-btn"
                        data-id="${rev.reviewId}">
                        삭제
                      </button>
                    </c:if>
                  </div>
                </div>
              </c:forEach>
              <c:if test="${empty reviewList}">
                <p class="text-light">아직 등록된 리뷰가 없습니다.</p>
              </c:if>
            </div>

            <!-- 리뷰 작성 -->
            <c:if test="${not empty sessionScope.logId}">
              <div class="anime__details__form mt-4">
                <div class="section-title"><h5>Your Comment</h5></div>
                <textarea class="form-control" id="revContent" placeholder="Your Comment" rows="4"></textarea>
                <select id="revStar" class="form-control mt-2 mb-2">
                  <option value="5">★★★★★</option>
                  <option value="4">★★★★☆</option>
                  <option value="3">★★★☆☆</option>
                  <option value="2">★★☆☆☆</option>
                  <option value="1">★☆☆☆☆</option>
                </select>
                <input type="hidden" id="revId" value="">
                <button type="button" class="site-btn mt-2" id="reviewBtn">리뷰 등록</button>
              </div>
            </c:if>

            <c:if test="${empty sessionScope.logId}">
              <p class="text-light">리뷰를 작성하려면 <a href="loginForm.do" style="color:orange;">로그인</a>이 필요합니다.</p>
            </c:if>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- JS Plugins -->
  <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
  <script>
  $(function() {
    // 등록 or 수정
    $('#reviewBtn').click(function() {
      const reviewId = $('#revId').val();
      const content = $('#revContent').val();
      const star = $('#revStar').val();
      const movieId = '${mv.movieId}';
      const genreId = '${mv.genreId}';
      const memberId = '${sessionScope.logId}';
      const url = reviewId ? 'ajaxUpdateReview.do' : 'ajaxAddReview.do';

      $.post(url, {
        reviewId, content, star, movieId, genreId, memberId
      }, function(res) {
        alert(reviewId ? '수정되었습니다.' : '등록되었습니다.');
        location.reload();
      });
    });

    // 삭제
    $('.delete-btn').click(function() {
      if (!confirm("정말 삭제하시겠습니까?")) return;
      const reviewId = $(this).data('id');
      $.post('ajaxDeleteReview.do', {
        reviewId: reviewId,
        memberId: "${sessionScope.logId}"
      }, function(res) {
        alert("삭제되었습니다.");
        location.reload();
      });
    });

    // 수정 모드 진입
    $('.edit-btn').click(function() {
      $('#revContent').val($(this).data('content'));
      $('#revStar').val($(this).data('star'));
      $('#revId').val($(this).data('id'));
      $('#reviewBtn').text('리뷰 수정');
    });
  });
  </script>
</body>
</html>
