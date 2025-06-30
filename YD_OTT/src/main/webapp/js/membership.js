/**
 * membership.js 
 */

// 세션 아이디 정보 가져오기(확인)

console.log("LOGIN ID : "+memberId);
// 구독할 맴버쉽 search
let btn = document.querySelectorAll(".btn");
// 버튼들을 반복문 돌면서 
btn.forEach(function(e){
	const pagePath = "${pageContext.request.contextPath}";
	e.addEventListener('click', function(ev){
	// target 확인용 가격 정보 가져오기
	console.log("선택한 맴버쉽 가격은 : "+ev.target.parentElement.querySelector('.mbsprice').innerText.substring(1));
	// 들고가야할 맴버쉽 코드번호를 서치
	const mbscode = ev.target.parentElement.querySelector('input[name="mbscode"]').value;
	console.log("선택하신 맴버쉽 코드는 : "+mbscode);
	console.log("가입하실 맴버 코드는 : "+memberId);
	const msPrice = ev.target.parentElement.querySelector('.mbsprice').innerText.substring(1).replace(',','');
	const msName = ev.target.parentElement.parentElement.querySelector('h4').innerHTML;
	console.log(msPrice+msName);
	//window.open("${pageContext.request.contextPath}/jsp/membership/payment.jsp", "Join_membership", "width=640, height=400"); // 나중에 결제후 구독완료뜨게하기
	window.open("payment.do?value="+msPrice+"&orderName="+msName+"&customerName="+memberId, "Join Membership", "width=640, height=400");
		fetch('registmembership.do?memberId='+memberId+'&planNo='+mbscode)
			.then(data => data.json())
			.then(result => {
				console.log(result);
				let resVal = result.retVal;
				console.log("resultVal" + resVal);
				if (result.retCode == 'Success') {
					alert("맴버쉽 구독이 완료되었습니다.");
				}
				else if (result.retCode == 'Fail') { // 이미 가입중인 맴버십이 있다면 취소하고 다시 가입을 할수 있도록
					if (confirm("이미 맴버십 구독중입니다.\n구독취소를 하시겠습니까?")) {
						fetch('removemembership.do?memberId=' + memberId)
							.then(data => data.json())
							.then(result => {
								if (result.retCode == 'Success') {
									alert("구독헤제가 정상처리되었습니다.");
								} else {
									alert("구독헤제가 정상처리되지 못했습니다.");
								}
							})
					}
				}
			})
			.catch(err => console.error(err));
	});

});

