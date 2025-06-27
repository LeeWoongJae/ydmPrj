/**
 * membership.js 
 */

// 세션 아이디 정보 가져오기
console.log("LOGIN ID : "+logId);
// 구독할 맴버쉽 search
let btn = document.querySelectorAll(".btn");
// 버튼들을 반복문 돌면서 
btn.forEach(function(e){
	e.addEventListener('click', function(ev){
	console.log("선택한 맴버쉽 가격은 : "+ev.target.parentElement.querySelector('.mbsprice').innerText.substring(1));
	let mbscode = ev.target.parentElement.querySelector('input[name="mbscode"]').value;
	console.log("선택하신 맴버쉽 코드는 : "+mbscode);
	
	fetch('registMembership.do?memberId='+logId+'&planNo='+mbscode)
	.then(data => data.json())
	.then(result=>{
	let resVal = result.retVal;
	console.log("resultVal"+resVal);
		if(result.retCode=='Success'){
			alert("맴버쉽 구독이 완료되었습니다.");
		}
		else {
			alert("맴버쉽 구독이 실패되었습니다.");
		}
	})
	.catch(err=>console.log(err));
	
	
});

});

