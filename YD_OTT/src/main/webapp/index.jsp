<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
<h3>환영합니다.</h3>
<h2>YEDAM OTT PROJECT</h2>
<h3>STRAT</h3>
<a href="user/index.tiles">환상의 나라로 오세요.</a>
<table class="table">
<tr>
<th>조 번호</th><th>팀 명</th><th>조원이름</th><th>역할</th>
</tr>
<tr>
<td>4 조</td><td>K2L2</td><td>이웅재</td><td>팀장</td>
</tr>

</table>
<button type="button" class="col-sm-3 btn btn-primary" id="gotoIdx">우리집으로가자</button>


<script>
document.querySelector('#gotoIdx').addEventListener('click', function(){
	location.href='user/index.tiles';
});
</script>
