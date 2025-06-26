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
</style>

<div class="show">
<img src="img/hero/hero-1.jpg">
<div class="btnDiv">
<button type="button" class="col-sm-3 btn btn-primary" id="gotoIdx" >JOIN THE PROGRAM</button>
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
