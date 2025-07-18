<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <link rel="icon" href="https://static.toss.im/icons/png/4x/icon-toss-logo.png" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/paymentstyle.css" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Billing The Payment</title>
    <!-- SDK 추가 -->
    <script src="https://js.tosspayments.com/v2/standard"></script>
  </head>

  <body>
<!--  <script src="${pageContext.request.contextPath}/js/membership.js"></script> -->
    <!-- 주문서 영역 -->
    <div class="wrapper">
      <div class="box_section" style="padding: 40px 30px 50px 30px; margin-top: 30px; margin-bottom: 50px">
        <h1>일반 결제</h1>
        <!-- 결제 UI -->
        <div id="payment-method" style="display: flex">
          <button id="CARD" class="button2" onclick="selectPaymentMethod('CARD')">카드</button>
          <button id="TRANSFER" class="button2" onclick="selectPaymentMethod('TRANSFER')">계좌이체</button>
          <button id="VIRTUAL_ACCOUNT" class="button2" onclick="selectPaymentMethod('VIRTUAL_ACCOUNT')">가상계좌</button>
          <button id="MOBILE_PHONE" class="button2" onclick="selectPaymentMethod('MOBILE_PHONE')">휴대폰</button>
          <button id="CULTURE_GIFT_CERTIFICATE" class="button2" onclick="selectPaymentMethod('CULTURE_GIFT_CERTIFICATE')">문화상품권</button>
          <button id="FOREIGN_EASY_PAY" class="button2" onclick="selectPaymentMethod('FOREIGN_EASY_PAY')">해외간편결제</button>
        </div>
        <!-- 결제하기 버튼 -->
        <button class="button" style="margin-top: 30px" onclick="requestPayment()">결제하기</button>
      </div>
    </div>
    <script>
    
      let currentURL = window.location.href.replace(/[^/]*$/, '');

      const amount = {
        currency: "KRW",
        value: ${value},
      };

      let selectedPaymentMethod = null;

      function selectPaymentMethod(method) {
        if (selectedPaymentMethod != null) {
          document.getElementById(selectedPaymentMethod).style.backgroundColor = "#ffffff";
        }

        selectedPaymentMethod = method;

        document.getElementById(selectedPaymentMethod).style.backgroundColor = "rgb(229 239 255)";
      }

      // ------  SDK 초기화 ------
      // TODO: clientKey는 개발자센터의 API 개별 연동 키 > 결제창 연동에 사용하려할 MID > 클라이언트 키로 바꾸세요.
      // TODO: server.js 의 secretKey 또한 결제위젯 연동 키가 아닌 API 개별 연동 키의 시크릿 키로 변경해야 합니다.
      // TODO: 구매자의 고유 아이디를 불러와서 customerKey로 설정하세요. 이메일・전화번호와 같이 유추가 가능한 값은 안전하지 않습니다.
      // @docs https://docs.tosspayments.com/sdk/v2/js#토스페이먼츠-초기화
      const clientKey = "test_ck_D5GePWvyJnrK0W0k6q8gLzN97Eoq";
      const customerKey = generateRandomString();
      const tossPayments = TossPayments(clientKey);
      // 회원 결제
      // @docs https://docs.tosspayments.com/sdk/v2/js#tosspaymentspayment
      const payment = tossPayments.payment({
        customerKey,
      });
      // 비회원 결제
      // const payment = tossPayments.payment({customerKey: TossPayments.ANONYMOUS});

      // ------ '결제하기' 버튼 누르면 결제창 띄우기 ------
      // @docs https://docs.tosspayments.com/sdk/v2/js#paymentrequestpayment
      async function requestPayment() {
        // 결제를 요청하기 전에 orderId, amount를 서버에 저장하세요.
        // 결제 과정에서 악의적으로 결제 금액이 바뀌는 것을 확인하는 용도입니다.
        switch (selectedPaymentMethod) {
          case "CARD":
            await payment.requestPayment({
              method: "CARD", // 카드 및 간편결제
              amount,
              orderId: generateRandomString(),
              orderName: "${orderName}",
              successUrl: currentURL + "success.jsp",
              failUrl: currentURL + "fail.jsp",
              customerEmail: "dsa00340@naver.com",
              customerName: "${customerName}",
              // 가상계좌 안내, 퀵계좌이체 휴대폰 번호 자동 완성에 사용되는 값입니다. 필요하다면 주석을 해제해 주세요.
              // customerMobilePhone: "01012341234",
              card: {
                useEscrow: false,
                flowMode: "DEFAULT",
                useCardPoint: false,
                useAppCardOnly: false,
              },
            });
          case "TRANSFER":
            await payment.requestPayment({
              method: "TRANSFER", // 계좌이체 결제
              amount,
              orderId: generateRandomString(),
              orderName: "${orderName}",
              successUrl: currentURL + "success.jsp",
              failUrl: currentURL + "fail.jsp",
              customerEmail: "dsa003403@naver.com",
              customerName: "${customerName}",
              // 가상계좌 안내, 퀵계좌이체 휴대폰 번호 자동 완성에 사용되는 값입니다. 필요하다면 주석을 해제해 주세요.
              // customerMobilePhone: "01012341234",
              transfer: {
                cashReceipt: {
                  type: "소득공제",
                },
                useEscrow: false,
              },
            });
          case "VIRTUAL_ACCOUNT":
            await payment.requestPayment({
              method: "VIRTUAL_ACCOUNT", // 가상계좌 결제
              amount,
              orderId: generateRandomString(),
              orderName: "${orderName}",
              successUrl: currentURL + "success.jsp",
              failUrl: currentURL + "fail.jsp",
              customerEmail: "dsa00340@naver.com",
              customerName: "${cutomerName}",
              // 가상계좌 안내, 퀵계좌이체 휴대폰 번호 자동 완성에 사용되는 값입니다. 필요하다면 주석을 해제해 주세요.
              // customerMobilePhone: "01012341234",
              virtualAccount: {
                cashReceipt: {
                  type: "소득공제",
                },
                useEscrow: false,
                validHours: 24,
              },
            });
          case "MOBILE_PHONE":
            await payment.requestPayment({
              method: "MOBILE_PHONE", // 휴대폰 결제
              amount,
              orderId: generateRandomString(),
              orderName: "${orderName}",
              successUrl: currentURL + "success.jsp",
              failUrl: currentURL + "fail.jsp",
              customerEmail: "dsa00340@naver.com",
              customerName: "${customerName}",
              // 가상계좌 안내, 퀵계좌이체 휴대폰 번호 자동 완성에 사용되는 값입니다. 필요하다면 주석을 해제해 주세요.
              // customerMobilePhone: "01012341234",
            });
          case "CULTURE_GIFT_CERTIFICATE":
            await payment.requestPayment({
              method: "CULTURE_GIFT_CERTIFICATE", // 문화상품권 결제
              amount,
              orderId: generateRandomString(),
              orderName: "${orderName}",
              successUrl: currentURL + "success.jsp",
              failUrl: currentURL + "fail.jsp",
              customerEmail: "dsa00340@naver.com",
              customerName: "${customerName}",
              // 가상계좌 안내, 퀵계좌이체 휴대폰 번호 자동 완성에 사용되는 값입니다. 필요하다면 주석을 해제해 주세요.
              // customerMobilePhone: "01012341234",
            });
          case "FOREIGN_EASY_PAY":
            await payment.requestPayment({
              method: "FOREIGN_EASY_PAY", // 해외 간편결제
              amount: {
                value: Math.floor(amount.value/1364) , // 1 USD : 1364.21 KRW
                currency: "USD",
              },
              orderId: generateRandomString(),
              orderName: "${orderName}",
              successUrl: currentURL + "success.jsp",
              failUrl: currentURL + "fail.jsp",
              customerEmail: "dsa00340@naver.com",
              customerName: "${cutomerName}",
              // 가상계좌 안내, 퀵계좌이체 휴대폰 번호 자동 완성에 사용되는 값입니다. 필요하다면 주석을 해제해 주세요.
              // customerMobilePhone: "01012341234",
              foreignEasyPay: {
                provider: "PAYPAL",
                country: "KR",
              },
            });
        }
      }

      async function requestBillingAuth() {
        await payment.requestBillingAuth({
          method: "CARD", // 자동결제(빌링)은 카드만 지원합니다
          successUrl: currentURL + "billing_confirm.jsp",
          failUrl: currentURL + "fail.jsp",
          customerEmail: "dsa0034@naver.com", // 요청이 실패하면 리다이렉트되는 URL
          customerName: "${customerName}",
        });
      }

      function generateRandomString() {
        return window.btoa(Math.random()).slice(0, 20);
      }
    </script>
     
  </body>
</html>
    