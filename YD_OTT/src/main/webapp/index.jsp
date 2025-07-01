<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
<style>
h3 , h2 {
    text-align : center;
}
.aTagDiv {
 text-align : center;
}
.btnDiv{
	text-align : center;
}
.show{
 border:solid 3px #ccc;
 margin : 10px;
 padding : 30%;
}
img{
 width: 100%;
  height: 100%;
object-fit: cover;
 
}
.container{
    padding : 30px;
    margin : auto;
}
</style>


<div class="container">
<img src="https://drive.google.com/thumbnail?id=1XvNLZz8qM1Y-rE84_otTl22Zv3Lhe-Uq&sz=w1000"
     alt="Google Drive Image" />
<h3 class="mb-4 fw-bold">프로젝트 팀 소개</h3>
<table class="table table-hover" border="2">
<thead class="table-dark">
<tr>
<th scope="col">프로젝트명</th>
<th scope="col">개발 장소</th>
<th scope="col">팀 명</th>
<th scope="col">이름</th>
<th scope="col">역할</th>
<th scope="col">GITHUB</th>
</tr>
</thead>
<tbody>
<tr>
<td scope="row">OTT 사이트</td><td>YEDAM / 집</td><td>YDFLIX</td><td>이웅재</td><td>팀장</td><td><a href="https://www.github.com/LeeWoongJae" target="_blank">github.com/LeeWoongJae</a></td>
</tr>
<tr>
<td scope="row">OTT 사이트</td><td>YEDAM / 집</td><td>YDFLIX</td><td>김상우</td><td>팀원</td><td><a href="https://www.github.com/ksw5861" target="_blank">github.com/ksw5861</a></td>
</tr>
<tr>
<td scope="row">OTT 사이트</td><td>YEDAM / 집</td><td>YDFLIX</td><td><p><abbr title='...'>김준현</abbr></p></td><td>-</td><td><a href="#"></a></td>
</tr>
<tr>
<td scope="row">OTT 사이트</td><td>YEDAM / 집</td><td>YDFLIX</td><td>이명훈</td><td>팀원</td><td><a href="https://www.github.com/hun7589" target="_blank">github.com/hun7589</a></td>
</tr>
</tbody>
</table>
<div class="container mt-5">
  <h3 class="mb-4 fw-bold">OTT 프로젝트 일별 작업 현황표</h3>
  <table class="table table-bordered align-middle text-center">
    <thead class="table-dark">
      <tr>
        <th style="width: 8%;">Day</th>
        <th style="width: 8%;">요일</th>
        <th style="width: 64%;">진행 내용</th>
        <th style="width: 10%;">상태</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Day 1</td>
        <td>수</td>
        <td>주제 선정 (소셜커머스[쿠팡]), 파트장 지정</td>
        <td class="table-success">완료</td>
      </tr>
      <tr>
        <td>Day 2</td>
        <td>목</td>
        <td>DB TABLE 및 템플릿 선정, 프로젝트 생성 (Tiles 구성 / pom.xml 정의)</td>
        <td class="table-success">완료</td>
      </tr>
      <tr>
        <td>Day 3</td>
        <td>금</td>
        <td>화면 설계서 작성 및 수정, DB TABLE 정의 및 ERD 모델링</td>
        <td class="table-success">완료</td>
      </tr>
      <tr>
        <td>Day 4</td>
        <td>토</td>
        <td>welcome 화면 구현 및 컨트롤 클래스 지정</td>
        <td class="table-success">완료</td>
      </tr>
      <tr>
        <td>Day 5</td>
        <td>일</td>
        <td>작업 없음</td>
        <td class="table-secondary">휴식</td>
      </tr>
      <tr>
        <td>Day 6</td>
        <td>월</td>
        <td>주제 변경 (쿠팡 → OTT 사이트), DB 재정의 및 ERD 모델링, 화면 설계서 재작성</td>
        <td class="table-success">완료</td>
      </tr>
      <tr>
        <td>Day 7</td>
        <td>화</td>
        <td>TABLE 구성 확인 및 화면 설계서 작성 완료</td>
        <td class="table-success">완료</td>
      </tr>
      <tr>
        <td>Day 8</td>
        <td>수</td>
        <td>OTT 목록 페이지 구현, 멤버십 페이지 구현</td>
        <td class="table-success">완료</td>
      </tr>
      <tr>
        <td>Day 9</td>
        <td>목</td>
        <td>각 OTT 상세보기 페이지 구현, OTT 미리보기 구현</td>
        <td class="table-success">완료</td>
      </tr>
      <tr>
        <td>Day 10</td>
        <td>금</td>
        <td>로그인 및 회원가입 페이지 구현</td>
        <td class="table-success">완료</td>
      </tr>
      <tr>
        <td>Day 11</td>
        <td>토</td>
        <td>멤버십 가입/취소/재가입, 결제 API 구현(Toss), Map API 구현, 발표용 PPT 작성</td>
        <td class="table-success">완료</td>
      </tr>
      <tr>
        <td>Day 12</td>
        <td>일</td>
        <td>멤버십 재로그인 시 상품표기, Contacts 페이지 구성</td>
        <td class="table-success">완료</td>
      </tr>
      <tr>
        <td>Day 13</td>
        <td>월</td>
        <td><strong></strong> 프로젝트 발표용 PPT 작성 / 페지이 구현 에러 체크</td>
        <td class="table-success">완료</td>
      </tr>
      <tr>
        <td>FIN</td>
        <td>화</td>
        <td><strong>FIN</strong> 프로젝트 발표 및 시연</td>
        <td class="table-warning">완료</td>
      </tr>
    </tbody>
  </table>
</div>
<div class="btnDiv">
<button type="button" class="col-sm-3 btn btn-primary" id="gotoIdx" >GO BACK</button>
</div>
</div>

<script>
document.querySelector('#gotoIdx').addEventListener('click', function(){
	location.href='main.do';
	console.log('product/movieList.tiles')
});
function openNewWindow(){
	var newWindow = window.open("","_blank");
	newWindow.location.href = "https://www.notion.so/217758beaecf80ee8fe5e759eff5ebba?v=217758beaecf80faa18b000c07fcf1fe&p=217758beaecf80f39f5ad9a299e076c0&pm=s";
}
</script>
