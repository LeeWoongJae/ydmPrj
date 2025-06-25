<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!-- Hero Section Begin -->
    
        <!-- div class d-flex p-2 추가해서 유연하게 상하좌우 띄워서 표기 -->
            <div class="hero__slider owl-carousel d-flex p-2">
                <div class="hero__items set-bg" data-setbg="${pageContext.request.contextPath}/img/hero/hero-1.jpg">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="hero__text">
                                <div class="label">액션, 드라마</div>
                                <h2>명량</h2>
                                <p>이순신 장군은 단 12척의 배를 이끌고 명량 바다를 향해 나서는데…</p>
                                <a href="#"><span>지금 시청하기</span> <i class="fa fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="hero__items set-bg" data-setbg="${pageContext.request.contextPath}/img/hero/hero-2.jpg">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="hero__text">
                                <div class="label">액션, SF</div>
                                <h2>Avengers: Infinity War</h2>
                                <p> 역대 최강 빌런 타노스에 맞서 전 우주에 운명이 걸린 인피니티 스톤을 향한 무한 대결이 펼쳐진다.</p>
                                <a href="#"><span>지금 시청하기</span> <i class="fa fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="hero__items set-bg" data-setbg="${pageContext.request.contextPath}/img/hero/hero-3.jpg">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="hero__text">
                                <div class="label">로맨스, 판타지</div>
                                <h2>너의 이름은.</h2>
                                <p>아직 만난 적 없는 너를, 찾고 있어.<br>まだ会ったことのない君を、探している。</p>
                                <a href="#"><span>지금 시청하기</span> <i class="fa fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
			</div>
