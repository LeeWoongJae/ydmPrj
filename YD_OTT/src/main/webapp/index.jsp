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
 border:solid 10px #ccc;
 margin : 10px;
 padding : 30%;
}
</style>
<div class="show">
<h3>환영합니다.</h3>
<h2>YEDAM OTT PROJECT</h2>
<h3>4조</h3>
<div class="aTagDiv">
<button type="button" class="col-sm-2 btn btn-info" onclick="openNewWindow()" id="notionId">GO TO : NOTION</button>
</div>
<table class="table">
<tr>
<th>조 번호</th><th>팀 명</th><th>조원이름</th><th>역할</th><th>GITHUB</th>
</tr>
<tr>
<td>4 조</td><td>NOTNULL</td><td>이웅재</td><td>팀장</td>
<td><a href="https://github.com/LeeWoongJae" target="_blank">github.com/LeeWoongJae</a></td>
</tr>

<tr>
<td>4 조</td><td>NOTNULL</td><td>김상우</td><td>팀원</td>
<td><a href="https://github.com/" target="_blank">github.com/</a></td>
</tr>

<tr>
<td>4 조</td><td>NOTNULL</td><td>이명훈</td><td>팀원</td>
<td><a href="https://github.com/" target="_blank">github.com/</a></td>
</tr>

<tr>
<td>4 조</td><td>NOTNULL</td><td>김준현</td><td>팀원</td>
<td><a href="https://github.com/" target="_blank">github.com/</a></td>
</tr>
</table>
<div class="btnDiv">
<button type="button" class="col-sm-3 btn btn-primary" id="gotoIdx" >우리집으로가자</button>
</div>
</div>
<script>
document.querySelector('#gotoIdx').addEventListener('click', function(){
	location.href='product/movieList.tiles';
});
function openNewWindow(){
	var newWindow = window.open("","_blank");
	newWindow.location.href = "https://www.notion.so/217758beaecf80ee8fe5e759eff5ebba?v=217758beaecf80faa18b000c07fcf1fe&p=217758beaecf80f39f5ad9a299e076c0&pm=s";
}
</script>
